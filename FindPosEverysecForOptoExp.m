function FindPosEverysecForOptoExp(nameSess,sessionLTMI,nCells)


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
CellsNum=nCells; %old matlab %CellsNum=str2double(nCells{1,1});
GroupCells=nan(800,(CellsNum+5)*12);

PosOfAnimalPerSec=nan(800,12);
PosOfAnimalPerSecX=nan(800,12);
Speed=nan(800,12);
PosOfAnimalPerSecInBin=nan(800,12);
Seconds=nan(800,12);
TypeConflArray=strings(800,12);
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

    %%Find the conversionFactor
    WhdcExist=strcat(nameSess,'.whdcToBeMirr');
    if exist(WhdcExist,'file')
        Factor=2.80;
    else
        % load everything
        whlF=load([nameSess '.whdc']);
        resofsF=load([nameSess '.resofs']);

        SessEndF=resofsF(ArraySession(1,zu),1);
        SessStartF=resofsF(ArraySession(1,zu)-1,1);
        SessEndinTrkSamF=floor(SessEndF/20000*Trk_SR);
        SessStartinTrkSamF=round(SessStartF/20000*Trk_SR);

        ArrayXF=whlF(SessStartinTrkSamF:SessEndinTrkSamF,1);
        ArrayXF(ArrayXF==-1)=nan;
        ArrayYF=whlF(SessStartinTrkSamF:SessEndinTrkSamF,2);
        ArrayYF(ArrayYF==-1)=nan;
        %plot(ArrayX,ArrayY);
        MaxYF=max(ArrayYF);
        MinYF=min(ArrayYF);
        DistanceF=MaxYF-MinYF;
        DistanceincmF=80;
        Factor=DistanceF/DistanceincmF;
    end

    TrkInSess=TrkFile(trkStart:TrkEnd,:);
    Xpos=TrkInSess(:,1);
    Ypos=TrkInSess(:,2);
    SessStartInS=round(EphysStart/20000);
    SessEndInS=round(EphysEnd/20000);

    bins = [0:Trk_SR:size(Ypos,1)];
    trk = interp1(Ypos,bins);
    trkX = interp1(Xpos,bins);
    PosOfAnimalPerSec(1:size(trk,2)-1,zu)=trk(1,2:end)';
    PosOfAnimalPerSecX(1:size(trkX,2)-1,zu)=trkX(1,2:end)';
    VectorPosOfAnimalToTrasf=nan(800,1);
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
    PosOfAnimalPerSecInBin(1:800,zu)=PosOfAnimalPerSecInBinVec;

    Seconds(1:size(trk,2)-1,zu)=[1:size(trk,2)-1]';

    for indexType=1:size(trk,2)-1
        TypeConflArray(indexType,zu)=sessType;
    end
end

%Speed
for indexSpeedCol=1:size(PosOfAnimalPerSecX,2)
    for indexspeed=1:(size(PosOfAnimalPerSecX,1)-1)
        totaldist = sqrt((PosOfAnimalPerSecX(indexspeed,indexSpeedCol)-(PosOfAnimalPerSecX(indexspeed+1,indexSpeedCol)))*(PosOfAnimalPerSecX(indexspeed,indexSpeedCol)-(PosOfAnimalPerSecX(indexspeed+1,indexSpeedCol))) + ((PosOfAnimalPerSecX(indexspeed,indexSpeedCol)-(PosOfAnimalPerSecX(indexspeed+1,indexSpeedCol)))*(PosOfAnimalPerSecX(indexspeed,indexSpeedCol)-(PosOfAnimalPerSecX(indexspeed+1,indexSpeedCol)))));
        Speed(indexspeed,indexSpeedCol)= totaldist/Factor;
    end
end
Speed(Speed>50)=-1;

IndexConstAcrossSess=1:(CellsNum+5):size(GroupCells,2);
GroupCells(1:800,IndexConstAcrossSess)=Seconds;
GroupCells(1:800,IndexConstAcrossSess+1)=PosOfAnimalPerSecX;
GroupCells(1:800,IndexConstAcrossSess+2)=PosOfAnimalPerSec;
GroupCells(1:800,IndexConstAcrossSess+3)=Speed;
GroupCells(1:800,IndexConstAcrossSess+4)=PosOfAnimalPerSecInBin;
%GroupCells(1:800,IndexConstAcrossSess+5)=TypeConflArray; %%%cant write in a double

if isfolder('Analyses')==0
    mkdir(sprintf('%s', 'Analyses'));
end
cd('Analyses')
if isfolder('LTM')==0
    mkdir(sprintf('%s', 'LTM'));
end
cd('LTM');

towrite=GroupCells(:,:);
arraytable=table(towrite);

nametable=strcat('Time-Position-Speed-Bin_AllSess.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

cd('H:\carlo\FigPaperLTM\OptoLTM')
nametable=strcat(nameSess,'Time-Position-Speed-Bin_AllSess.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

end


