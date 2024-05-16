function CompartmentLTM(nameSess,sessionLTMI)


WhdcExist=strcat(nameSess,'.whdcToBeMirr');
if exist(WhdcExist,'file')
    Trk_SR=30;
else
    Trk_SR=50;
end
%% load everything
whl=load([nameSess '.whdc']);
resofs=load([nameSess '.resofs']);

%% define the maze
TimeSpentinHarray=[];
indexArray=1;

for numSession = sessionLTMI
    arrayccpos=[];
    if numSession==1
        SessEndinTrkSam=round(resofs(1)/20000*Trk_SR);
        SessStartinTrkSam=1;
        arrayccMax=max(whl(:,2));
        GeneralIndex=1;
        KnownPosIndex=1;
        while GeneralIndex < SessEndinTrkSam
            if whl(GeneralIndex,2)>0
                arrayccpos(KnownPosIndex,1)=whl(GeneralIndex,2);
                KnownPosIndex=KnownPosIndex+1;
            end
            GeneralIndex=GeneralIndex+1;
        end
        arrayccMin=min(arrayccpos);
    else
        SessEndinTrkSam=floor((resofs(numSession,1))/20000*Trk_SR);
        SessStartinTrkSam=round((resofs(numSession-1))/20000*Trk_SR);
        arrayccMax=max(whl(:,2));
        GeneralIndex=SessStartinTrkSam;
        KnownPosIndex=1;
        while GeneralIndex<SessEndinTrkSam
            if whl(GeneralIndex,2)>0
                arrayccpos(KnownPosIndex,1)=whl(GeneralIndex,2);
                KnownPosIndex=KnownPosIndex+1;
            end
            GeneralIndex=GeneralIndex+1;
        end
        arrayccMin=min(arrayccpos);
    end
    segm=round(arrayccMax-arrayccMin);
    
    ClosedComp=arrayccMin+segm/20*5;
    CenterComp=arrayccMin+segm/20*9;
    OpenComp=arrayccMin+segm+1;
    
    GeneralTimeSpentindexClosed=1;
    GeneralTimeSpentindexCenter=1;
    GeneralTimeSpentindexOpen=1;
    
    %% calculation of time spent in H zone
    for GeneralTimeSpentindex=SessStartinTrkSam:SessEndinTrkSam
        if whl(GeneralTimeSpentindex,2)>= arrayccMin
            if whl(GeneralTimeSpentindex,2)<= ClosedComp
                GeneralTimeSpentindexClosed=GeneralTimeSpentindexClosed+1;
            elseif whl(GeneralTimeSpentindex,2)> ClosedComp && whl(GeneralTimeSpentindex,2)<=CenterComp
                GeneralTimeSpentindexCenter=GeneralTimeSpentindexCenter+1;
            elseif whl(GeneralTimeSpentindex,2)> CenterComp && whl(GeneralTimeSpentindex,2)<=OpenComp
                GeneralTimeSpentindexOpen=GeneralTimeSpentindexOpen+1;
            else
                disp('Attention not comp found');
            end
        end
    end

    %% calculation of firing rate frequency
    TimeSpentinClosedInSec=GeneralTimeSpentindexClosed./Trk_SR;  
    TimeSpentinCenterInSec=GeneralTimeSpentindexCenter./Trk_SR; 
    TimeSpentinOpenInSec=GeneralTimeSpentindexOpen./Trk_SR; 
    
    
    TimeSpentinHarray(indexArray,1) = TimeSpentinClosedInSec;
    TimeSpentinHarray(indexArray,2) = TimeSpentinCenterInSec;
    TimeSpentinHarray(indexArray,3) = TimeSpentinOpenInSec;

    TimeSpentinHarrayPerc(indexArray,1) = TimeSpentinClosedInSec*100/(TimeSpentinClosedInSec+TimeSpentinCenterInSec+TimeSpentinOpenInSec);
    TimeSpentinHarrayPerc(indexArray,2) = TimeSpentinCenterInSec*100/(TimeSpentinClosedInSec+TimeSpentinCenterInSec+TimeSpentinOpenInSec);
    TimeSpentinHarrayPerc(indexArray,3) = TimeSpentinOpenInSec*100/(TimeSpentinClosedInSec+TimeSpentinCenterInSec+TimeSpentinOpenInSec);

    indexArray=indexArray+1;
    
    clearvars -except nameSess sessionLTMI numSession resofs whl TimeSpentinHarray indexArray Trk_SR ArrayH IndexArrayH TimeSpentinHarrayPerc
    
end
AnalysesFolder = ('Analyses');
if exist (AnalysesFolder,'dir')
    cd (AnalysesFolder)
else
    mkdir(sprintf('%s', AnalysesFolder))
    cd (AnalysesFolder)
end

if exist ('LTM','dir')
    cd ('LTM')
else
    mkdir(sprintf('%s', 'LTM'))
    cd ('LTM')
end

headers = {'TimeSpentinClosed','TimeSpentinCenter','TimeSpentinOpen'};
TimeTable2Write = array2table(TimeSpentinHarray, 'VariableNames', headers);
xlsx_filenameTimeAnimalH = strcat('TimeSpentinClosedCenterOpeninSec.xlsx');
if isfile(xlsx_filenameTimeAnimalH)
    delete(xlsx_filenameTimeAnimalH);
end
writetable(TimeTable2Write, xlsx_filenameTimeAnimalH,'WriteVariableNames',1);

headers = {'TimeSpentinClosedPerc','TimeSpentinCenterPerc','TimeSpentinOpenPerc'};
TimeTable2Write = array2table(TimeSpentinHarrayPerc, 'VariableNames', headers);
xlsx_filenameTimeAnimalH = strcat('TimeSpentinClosedCenterOpeninPerc.xlsx');
if isfile(xlsx_filenameTimeAnimalH)
    delete(xlsx_filenameTimeAnimalH);
end
writetable(TimeTable2Write, xlsx_filenameTimeAnimalH,'WriteVariableNames',1);


end