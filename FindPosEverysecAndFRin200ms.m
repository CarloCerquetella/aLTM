function FindPosEverysecAndFRin200ms(nameSess,sessionLTMI,nCells,tet2useI,cellsI)

%Load resofs
TrkFile=load([nameSess '.whdc']);
WhdcExist=strcat(nameSess,'.whdcToBeMirr');
if exist(WhdcExist,'file')
    Trk_SR=30;
else
    Trk_SR=50;
end
resofs=load([nameSess '.resofs']);

ArraySession=sessionLTMI;
ArrayTet=tet2useI;

%CellsNum=str2double(nCells{1,1}); %Old version of Matlab
CellsNum=nCells;
GroupCells=nan(4000,(CellsNum+3)*12);
IndexCell=1;

for tzu= 1:size(ArrayTet,2)
    ArrayCells=cellsI{1,tzu};
    for ti= 1:size(ArrayCells,2)
        MatrixPerCell=nan(4000,12);
        PosOfAnimalPerSec=nan(4000,12);
        PosOfAnimalPerSecInBin=nan(4000,12);
        Seconds=nan(4000,12);
        TypeConflArray=strings(4000,12);
        for zu= 1:size(ArraySession,2)
            if zu==1
                sessType='NoConflict';
            elseif zu==2
                sessType='Novelty';
            elseif zu==3
                sessType='FirstImpress';
            elseif zu==4
                sessType='LowConflict';
            elseif zu==5
                sessType='ModerateConflict';
            elseif zu==6
                sessType='HighConflict';
            elseif zu==7
                sessType='HighConflictDesc';
            elseif zu==8
                sessType='ModerateConflictDesc';
            elseif zu==9
                sessType='LowConflictDesc';
            elseif zu==10
                sessType='FirstImpressDesc';
            elseif zu==11
                sessType='NoveltyDesc';
            elseif zu==12
                sessType='NoConflictDesc';
            else
                disp('Error with session type')
            end
            
            tet2use=[ArrayTet(1,tzu)];
            cells=[ArrayCells(1,ti)];
            session=[ArraySession(1,zu)];
            if session==1
                trkStart=1;
                EphysStart=1;
                TrkEnd=round((resofs(session,1))/20000*Trk_SR);
                EphysEnd=resofs(session,1);
            else
                trkStart=round((resofs(session-1,1))/20000*Trk_SR);
                EphysStart=resofs(session-1,1);
                TrkEnd=round((resofs(session,1))/20000*Trk_SR);
                if TrkEnd==size(TrkFile,1)+1
                    TrkEnd=size(TrkFile,1);
                end                
                EphysEnd=resofs(session,1);
            end
            res=load([nameSess '.res.', num2str(tet2use)]);Res=res;
            clu=load([nameSess '.clu.', num2str(tet2use)]);clu=clu(2:end);Clu=clu;
            
            Res2Use=Res(Clu==cells);
            Res2UseInSessStart=Res2Use(Res2Use>EphysStart);
            Res2UseInSess=Res2UseInSessStart(Res2UseInSessStart<=EphysEnd);
            TrkInSess=TrkFile(trkStart:TrkEnd,:);
            Ypos=TrkInSess(:,2);
            SessStartInS=round(EphysStart/20000);
            SessEndInS=round(EphysEnd/20000);
            
            bins = [0:(Trk_SR/5):size(Ypos,1)];
            trk = interp1(Ypos,bins);
            PosOfAnimalPerSec(1:size(trk,2)-1,zu)=trk(1,2:end)';
            VectorPosOfAnimalToTrasf=nan(4000,1);
            VectorPosOfAnimalToTrasf=PosOfAnimalPerSec(:,zu);
            
            %Bin
            MinYpos=min(VectorPosOfAnimalToTrasf(VectorPosOfAnimalToTrasf~=-1));
            BasedYpos=VectorPosOfAnimalToTrasf-MinYpos+0.01;
            MaxYpos=max(BasedYpos);
            PosOfAnimalPerSecInBinVec=ceil(BasedYpos.*20./MaxYpos);
            PosOfAnimalPerSecInBinVec(PosOfAnimalPerSecInBinVec==21)=20; %%ceil approx error
            if max(PosOfAnimalPerSecInBinVec)~=20 %%Check max is 20
                disp('Something wrong with proportion');
            end
            PosOfAnimalPerSecInBinVec(PosOfAnimalPerSecInBinVec<0)=-1;
            PosOfAnimalPerSecInBin(1:4000,zu)=PosOfAnimalPerSecInBinVec;
            
            Seconds(1:size(trk,2)-1,zu)=[1:size(trk,2)-1]';
            Seconds(1:size(trk,2)-1,zu)=Seconds(1:size(trk,2)-1,zu)./5;
            
            for indexType=1:size(trk,2)-1
                TypeConflArray(indexType,zu)=sessType;
            end
            
            Res2UseInSessinSec=ceil((Res2UseInSess-EphysStart)/(20000/5));
            Res2UseInSessinSec(Res2UseInSessinSec==size(trk,2))=size(trk,2)-1; %Just to let the script run, this is the end of the trk so we will not have coord anyways, I stop the trk before ephys
            if sum(Res2UseInSessinSec>=size(trk,2))~=0
                disp('Problem with allignment of trk and ephys');
            end
            FR=zeros(size(trk,2)-1,1);
            
            for indexRes=1:size(Res2UseInSessinSec,1)
                indexFRBin=Res2UseInSessinSec(indexRes,1);
                FR(indexFRBin,1)=FR(indexFRBin,1)+1;
            end
            if size(FR,1)~=size(trk,2)-1
                disp('smt wrong with sizes');
            end
            MatrixPerCell(1:size(FR,1),zu)=FR;
        end
        vectorvalue=MatrixPerCell(~isnan(MatrixPerCell));
        meanFRcell=mean(vectorvalue);
        stdofsample=sqrt((1/(size(vectorvalue,1)))*(sum((vectorvalue-meanFRcell).^2)));
        ZscoredMatrix=(MatrixPerCell-meanFRcell)./stdofsample;
        
        IndexConstAcrossSess=1:(CellsNum+3):size(GroupCells,2);
        if IndexCell == 1
            GroupCells(1:4000,IndexConstAcrossSess)=Seconds;
            GroupCells(1:4000,IndexConstAcrossSess+1)=PosOfAnimalPerSec;
            GroupCells(1:4000,IndexConstAcrossSess+2)=PosOfAnimalPerSecInBin;
           % GroupCells(1:4000,IndexConstAcrossSess+3)=TypeConflArray;  %No conflict type
        end
        GroupCells(1:4000,IndexConstAcrossSess+2+IndexCell)=ZscoredMatrix; %No conflict type
        IndexCell=IndexCell+1;
    end
end

cd('Analyses')
if isfolder('DataForCamille')
    cd('DataForCamille');
else
    mkdir(sprintf('%s', 'DataForCamille'));
    cd('DataForCamille');
end


% ConcTable=array2table(zeros(0,0));
% for indexSess=1:12
%     if indexSess<12
%         tabletoUse=GroupCells(1:4000,IndexConstAcrossSess(1,indexSess):IndexConstAcrossSess(1,indexSess+1)-1);
%     else
%         tabletoUse=GroupCells(1:4000,IndexConstAcrossSess(1,indexSess):size(GroupCells,2));
%     end
%     HeadStart={'TimeInSec','TrkPos','Bin'};
%     TableStart=tabletoUse(:,1:3);            
%     tabletoUseStart=array2table(TableStart);%,'VariableNames',HeadStart);
%     
%     HeadMiddle={'ConfType'};
%     TableMiddle=TypeConflArray(:,indexSess);
%     tabletoUseMiddle=table(TableMiddle);%,'VariableNames',HeadMiddle);
%     
%     if CellsNum==1
%         HeadEnd={'Cell_1'};
%     elseif CellsNum==2
%         HeadEnd={'Cell_1','Cell_2'};
%     elseif CellsNum==3
%         HeadEnd={'Cell_1','Cell_2','Cell_3'};
%     elseif CellsNum==4
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4'};
%     elseif CellsNum==5
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5'};
%     elseif CellsNum==6
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6'};
%     elseif CellsNum==7
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7'};
%     elseif CellsNum==8
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8'};
%     elseif CellsNum==9
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9'};
%     elseif CellsNum==10
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10'};
%     elseif CellsNum==11
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11'};
%     elseif CellsNum==12
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12'};
%     elseif CellsNum==13
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13'};
%     elseif CellsNum==14
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14'};
%     elseif CellsNum==15
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14','Cell_15'};
%     elseif CellsNum==16
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14','Cell_15','Cell_16'};
%     elseif CellsNum==17
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14','Cell_15','Cell_16','Cell_17'};
%     elseif CellsNum==18
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14','Cell_15','Cell_16','Cell_17','Cell_18'};
%     elseif CellsNum==19
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14','Cell_15','Cell_16','Cell_17','Cell_18','Cell_19'};
%     elseif CellsNum==20
%         HeadEnd={'Cell_1','Cell_2','Cell_3','Cell_4','Cell_5','Cell_6','Cell_7','Cell_8','Cell_9','Cell_10','Cell_11','Cell_12','Cell_13','Cell_14','Cell_15','Cell_16','Cell_17','Cell_18','Cell_19','Cell_20'};
%     else
%         disp('Too many cells, correct here');
%     end
%     
%     TableEnd=tabletoUse(:,5:end);            
%     tabletoUseEnd=array2table(TableEnd);%,'VariableNames',HeadEnd);
%     
%     ConcTable=[ConcTable tabletoUseStart tabletoUseMiddle tabletoUseEnd];
%     
% end

towrite=GroupCells(:,:);
arraytable=table(towrite);
nametable=strcat('Time-Position-Bin-ZScoredFRPerCell_AllSessIn200Ms.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

cd('H:\carlo\FilesForCamille')
nametable=strcat(nameSess,'Time-Position-Bin-ZScoredFRPerCell_AllSessIn200Ms.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


end