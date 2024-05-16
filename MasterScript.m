cd('/mnt/groupCiocchi1/Carlo');
MasterXlsx=readtable(['MasterFile3.0Linux.xlsx']);

cd('H:\Carlo');
MasterXlsx=readtable(['MasterFile3.0Wind.xlsx']);
%for configindex=1:12

%normToMaxconcMatrix=nan(10000,240);
% concMatrix=nan(100000,240);
% inormIndex=1;
%For gouping theta single-trial inandoutbound
% concMatrixOut=nan(500,10000);
% concMatrixIn=nan(500,10000);
% inormIndex=1;
%Grouping theta single-trial ltm all sessions
% concMatrix=nan(100000,15999);
% concMatrixNorm=nan(100000,15999);
% inormIndex=1;
%Matrix 4 Nace
% MasterCol=[];
% indexrow=1;
% ShortLongTrialsMatrix=nan(500000,791);
% ZscoredArrayTrials=nan(500000,791);
% matrixinormIndex=1;
%cc=1;
%Array=nan(10000,22);
%cc2=1;
%Array2=nan(10000,22);
%ArrayI=nan(12,22);
%IndexArrayH=1;
%ArrayI=nan(12,30);
%TimeInClosedCenterOpen
IndexArrayH=1;
ArrayH=nan(12,22);

% ccTIMEArm=1;
% ArrayTIMEArm=nan(10000,180);
% 
% ArrayI=nan(12,22);
% ArrayAll=nan(12,22);

% ArrayConflict=nan(10000,100);
% ArrayNoConflict=nan(10000,100);
% index1C=1;
% indexNo1C=1;

%CountArray4optoexp=nan(18,105); cc=1; 
%indextogroupseconds=1; CoordArray=nan(10000,13);

%CountArray=nan(12,75); cc=1;

% SafeC=nan(12,15);
% RiskyC=nan(12,15);

% ArrayNoConflict1=nan(300,20);
% ii=1;

% indextogroupseconds=1;
% CoordArray=nan(10000,13);

% ccCC=1;
% ccTIMECenter=1;
% ccFRArm=1;
% ccFRCenter=1;
% ArrayCC=nan(10000,9);
% ArrayTIMECenter=nan(10000,9);
% ArrayFRArm=nan(10000,9);
% ArrayFRCenter=nan(10000,9);

% ccCC=1;
% ccCN=1;
% ccCnoN=1;
% ccCO1s=1;
% ccCO2s=1;
% ccCO3s=1;
% ccCO1r=1;
% ccCO2r=1;
% ccCO3r=1;
% 
% ArrayCC=nan(10000,23);
% ArrayCN=nan(10000,23);
% ArrayCnoN=nan(10000,23);
% ArrayCO1R=nan(10000,23);
% ArrayCO1S=nan(10000,23);
% ArrayCO2R=nan(10000,23);
% ArrayCO2S=nan(10000,23);
% ArrayCO3R=nan(10000,23);
% ArrayCO3S=nan(10000,23);
% ArrayTIMEArm=nan(10000,180);

%%Matrixes for glm
% FRMatrix=nan(75*5,1000);
% TimeMatrix=nan(75*5,1000);
% CCMatrix=nan(75*5,1000);
% CnoNMatrix=nan(75*5,1000);
% CNMatrix=nan(75*5,1000);
% CS1Matrix=nan(75*5,1000);
% CR1Matrix=nan(75*5,1000);
% CS2Matrix=nan(75*5,1000);
% CR2Matrix=nan(75*5,1000);
% CS3Matrix=nan(75*5,1000);
% CR3Matrix=nan(75*5,1000);
% IndexMatrix=0;

%%SpkChar
IndexCol=1;
ArrayForChart=nan(300,2);
indexChart=1;
%To groupExpFRBefAndAfter10sec or SWR Power
ArrayTIMEArm=nan(10000,180);
ccTIMEArm=1;
%TogroupTimeOnArm
ArrayTIMEArm=nan(10000,30);
ccTIMEArm=1;
ii=1;

%%SpeedAndFR20secBeforeEnd
ArrayTIMEArm=nan(10000,180);
ccTIMEArm=1;
SpeedMatrix=nan(10000,180);
IndexSpeed=1;
%%IndexToGroupTheta
RiskyI=nan(400,16100); SafeI=nan(400,16100); RiskyII=nan(400,16100); SafeII=nan(400,16100); RiskyIII=nan(400,16100); SafeIII=nan(400,16100); 
indexRI=1; indexSI=1; indexRII=1; indexSII=1; indexRIII=1; indexSIII=1;

%%toGroupNormToMax
ArrayToGroup=nan(10000,36);
indexGroup=1;
%%CountSingleTrials
indexExp=1;
Counts=zeros(12,22);
%%GroupTimeInACB in LTM
TimeClosed=zeros(12,22);
TimeCenter=zeros(12,22);
TimeOpen=zeros(12,22);
%%GroupTimeInJInbound&Outbound in LTM
TimeOutbound=zeros(12,22);
TimeInbound=zeros(12,22);
%%GroupBarLTMZscoredOutbound&Inbound
Group1=nan(20000,20);Group2=nan(20000,20);Group3=nan(20000,20);Group4=nan(20000,20);Group5=nan(20000,20);Group6=nan(20000,20);Group7=nan(20000,20);Group8=nan(20000,20);Group9=nan(20000,20);Group10=nan(20000,20);Group11=nan(20000,20);Group12=nan(20000,20);index1=1;index2=1;index3=1;index4=1;index5=1;index6=1;index7=1;index8=1;index9=1;index10=1;index11=1;index12=1;
%%GroupLSingle-trialLTM
concMatrix1=nan(20000,20);concMatrix2=nan(20000,20);concMatrix3=nan(20000,20);concMatrix4=nan(20000,20);concMatrix5=nan(20000,20);concMatrix6=nan(20000,20);concMatrix7=nan(20000,20);concMatrix8=nan(20000,20);concMatrix9=nan(20000,20);concMatrix10=nan(20000,20);concMatrix11=nan(20000,20);concMatrix12=nan(20000,20);index1=1;index2=1;index3=1;index4=1;index5=1;index6=1;index7=1;index8=1;index9=1;index10=1;index11=1;index12=1;
%%GLMFRSignCells
AllInOneArraySArm=nan(1000,120);AllInOneArrayRArm=nan(1000,120);AllInOneArraySCenter=nan(1000,120);AllInOneArrayRCenter=nan(1000,120);
IndexAllInOneSArm=1;IndexAllInOneRArm=1;IndexAllInOneSCenter=1;IndexAllInOneRCenter=1;
%%ForGroupingAllSpeedRelatedCells
MatrixFR=nan(1000,3780);indexMatrix=1;
%%ForHistory&FirstPic
MatrixFR=nan(207,36);indexMatrix=1;
%%GLM Thomas for speed
AmountOfCells=0;MatrixR=nan(207,1);
indexMatrixClosed=1;MatrixFR4Prism=nan(207,36);
%%AnxietyOnCells
AmountOnCells=0;AmountOnCellsKeptLv2=0;AmountOnCellsKeptLv3=0;AmountOnCellsKeptLv4=0;AmountOnCellsKeptNew=0;iCell=1;iCellLv2=1;iCellLv3=1;iCellLv4=1;MatrixOpen=nan(207,12);AmountOffCells=0;AmountOffCellsKeptLv2=0;AmountOffCellsKeptLv3=0;AmountOffCellsKeptLv4=0;iCellOff=1;iCellOffLv2=1;iCellOffLv3=1;iCellOffLv4=1;MatrixOff=nan(207,12);AmountAntCells=0;AmountAntCellsKeptLv2=0;AmountAntCellsKeptLv3=0;AmountAntCellsKeptLv4=0;iCellAnt=1;iCellAntLv2=1;iCellAntLv3=1;iCellAntLv4=1;MatrixAnt=nan(207,12);
%%ToGroupLTMNewExpAnymaze
MatrixGroup=nan(12,72);indexMatrix=1;MatrixGroupPerc=nan(12,72);
%%PlotPyrAndIn
matrixIn=nan(207,36);rowMatrixIn=1;matrixPyr=nan(207,36);rowMatrixPyr=1;
MatrixFR=nan(100000,36);
%%Spearman
MatrixOpen=nan(10000,2);MatrixClosed=nan(10000,2);MatrixCenter=nan(10000,2);indexIn=1;indexInC=1;indexInCen=1;
%%TimeSpentPerCompt
MatrixTime=nan(22,36);indexMatrixTime=1;MatrixTimePerc=nan(22,36);
%%singletrials
MatrixSingleTrials=nan(22,12);indexMatrix=1;
%%Representative Cells
MatrixFR=nan(50,24);indexFR=1;
%%Firing fields size
MatrixFF=nan(12,207);indexFF=1;
%%SpeedPerCompt
MatrixSpeed=nan(22,36);IndexSpeed=1;
%%TimePerComptInOutbound
MatrixAllTogether=nan(12,66);IndexAllTogether=1;
%%TimeInHesitationOutbound
MatrixAllTogether=nan(12,22);IndexAllTogether=1;
%%TimeInHesitationOutboundOPTO
MatrixAllTogether=nan(12,12);IndexAllTogether=1;
%%Speed in outbound SpeedOutboundPerCompSingleTrialLTM
MatrixAllTogether=nan(12,12);IndexAllTogether=1;

%%ToGroupSpeedInBin
MatrixSpeedTogetherLv1A=nan(1000,300);IndexMatrixLv1A=1;MatrixSpeedTogetherNovA=nan(1000,300);IndexMatrixNovA=1;MatrixSpeedTogetherFirstA=nan(1000,300);IndexMatrixFirstA=1;MatrixSpeedTogetherLv2A=nan(1000,300);IndexMatrixLv2A=1;MatrixSpeedTogetherLv3A=nan(1000,300);IndexMatrixLv3A=1;MatrixSpeedTogetherLv4A=nan(1000,300);IndexMatrixLv4A=1;MatrixSpeedTogetherLv4D=nan(1000,300);IndexMatrixLv4D=1;MatrixSpeedTogetherLv3D=nan(1000,300);IndexMatrixLv3D=1;MatrixSpeedTogetherLv2D=nan(1000,300);IndexMatrixLv2D=1;MatrixSpeedTogetherLv1D=nan(1000,300);IndexMatrixLv1D=1;MatrixSpeedTogetherFirstD=nan(1000,300);IndexMatrixFirstD=1;MatrixSpeedTogetherNovD=nan(1000,300);IndexMatrixNovD=1;
%%CellsByMechanisms
HigherFRLv1=0;HigherFRLv2=0;HigherFRLv3=0;HigherFRLv4=0;NewCellLv2=0;NewCellLv3=0;NewCellLv4=0;OverlapCellLv2=0;OverlapCellLv3=0;OverlapCellLv4=0;RateRemapLv2=0;RateRemapLv3=0;RateRemapLv4=0;
%%To group all cells per session per bin
MatrixCC=nan(15000,28);MatrixLC=nan(15000,28);MatrixMC=nan(15000,28);MatrixHC=nan(15000,28);IndexCC=1;IndexLC=1;IndexMC=1;IndexHC=1;
%%To group all RateRemappingCells and newly recruited
MatrixCC=nan(1500000,2);MatrixLC=nan(1500000,2);MatrixMC=nan(1500000,2);MatrixHC=nan(1500000,2);IndexCC=1;IndexLC=1;IndexMC=1;IndexHC=1;HigherFRLv1=0;HigherFRLv2=0;HigherFRLv3=0;HigherFRLv4=0;NewCellLv2=0;NewCellLv3=0;NewCellLv4=0;OverlapCellLv2=0;OverlapCellLv3=0;OverlapCellLv4=0;RateRemapLv2=0;RateRemapLv3=0;RateRemapLv4=0;
%%Time In Hesitation zone
MatrixH=nan(22,12);indexH=1;MatrixHTimePerc=nan(22,12);
%ToSWelectAnxietyOnCells
AnxOnCellsLabels=nan(22,50);RowIndex=1;MatrixClosedNA=nan(15000,414);MatrixCenterNA=nan(15000,414);MatrixOpenNA=nan(15000,414);MatrixClosedLA=nan(15000,414);MatrixCenterLA=nan(15000,414);MatrixOpenLA=nan(15000,414);MatrixClosedMA=nan(15000,414);MatrixCenterMA=nan(15000,414);MatrixOpenMA=nan(15000,414);MatrixClosedHA=nan(15000,414);MatrixCenterHA=nan(15000,414);MatrixOpenHA=nan(15000,414);CellNumber=1;
%ToGroupAllOfThem
MatrixNAIngoing=nan(1000,414);MatrixNAOutgoing=nan(1000,414);CellNumberNAOut=1;CellNumberNAIn=1;MatrixLAIngoing=nan(1000,414);MatrixLAOutgoing=nan(1000,414);CellNumberLAOut=1;CellNumberLAIn=1;MatrixMAIngoing=nan(1000,414);MatrixMAOutgoing=nan(1000,414);CellNumberMAOut=1;CellNumberMAIn=1;MatrixHAIngoing=nan(1000,414);MatrixHAOutgoing=nan(1000,414);CellNumberHAOut=1;CellNumberHAIn=1;
%OutboundAndAlsoInboundFromHugoScript
NAMatrix=nan(1000,207);NumbCells=1;LAMatrix=nan(1000,207);MAMatrix=nan(1000,207);HAMatrix=nan(1000,207);indexRowNA=1;indexRowLA=1;indexRowMA=1;indexRowHA=1;
%OnlyQuantAnxietyOnCells
AnxOnSessNA=0;AnxOnSessLA=0;AnxOnSessMA=0;AnxOnSessHA=0;
%OrganizeSessionsPerLevel
MatrixNA=nan(1500,500);indexNA=1;MatrixVLA=nan(1500,500);indexVLA=1;MatrixLA=nan(1500,500);indexLA=1;MatrixMA=nan(1500,500);indexMA=1;MatrixHA=nan(1500,500);indexHA=1;MatrixNAdesc=nan(1500,500);indexNAdesc=1;MatrixVLAdesc=nan(1500,500);indexVLAdesc=1;MatrixLAdesc=nan(1500,500);indexLAdesc=1;MatrixMAdesc=nan(1500,500);indexMAdesc=1;MatrixHAdesc=nan(1500,500);indexHAdesc=1;
%RateRemapping
HigherFRVLC=0;HigherFRLC=0;HigherFRMC=0;HigherFRNC=0;HigherFRHC=0;RateRemapNC=0;RateRemapVLC=0;RateRemapLC=0;RateRemapMC=0;RateRemapHC=0;MatrixCC=0;MatrixLC=0;MatrixMC=0;MatrixHC=0;IndexCC=0;IndexLC=0;IndexMC=0;IndexHC=0;
%FiringRateClosedCenterOpen
MatrixFR=nan(5,621);IndexFR=1;
%RR with correlation
numbCells=0;MatrixToPlot=nan(30,10);MatrixToPlotClosed=nan(30,10);MatrixNARR=nan(30,10);MatrixVLARR=nan(30,10);MatrixLARR=nan(30,10);MatrixMARR=nan(30,10);MatrixHARR=nan(30,10);
%FirstTimeAnxietyOnCells
HigherFRVLC=0;HigherFRLC=0;HigherFRMC=0;HigherFRNC=0;HigherFRHC=0;MatrixVLCTot=nan(150,20);MatrixLCTot=nan(150,20);MatrixMCTot=nan(150,20);MatrixHCTot=nan(150,20);MatrixCCClosed=nan(101,5);MatrixVLCClosed=nan(108,5);MatrixLCClosed=nan(19,5);MatrixMCClosed=nan(16,5);MatrixHCClosed=nan(7,5);MatrixCC=nan(101,5);MatrixVLC=nan(108,5);MatrixLC=nan(19,5);MatrixMC=nan(16,5);MatrixHC=nan(7,5);IndexCC=1;IndexVLC=1;IndexLC=1;IndexMC=1;IndexHC=1;MatrixVLCTotLC=nan(150,20);MatrixVLCTotMC=nan(150,20);MatrixVLCTotHC=nan(150,20);MatrixLCTotVLC=nan(150,20);MatrixLCTotMC=nan(150,20);MatrixLCTotHC=nan(150,20);MatrixMCTotVLC=nan(150,20);MatrixMCTotLC=nan(150,20);MatrixMCTotHC=nan(150,20);MatrixHCTotVLC=nan(150,20);MatrixHCTotLC=nan(150,20);MatrixHCTotMC=nan(150,20);MatrixVLCTotNC=nan(150,20);MatrixLCTotNC=nan(150,20);MatrixMCTotNC=nan(150,20);MatrixHCTotNC=nan(150,20);
%SpeedCalculatedOnHeatMaps
MatrixFR=nan(207,105);indexFR=1;


for ii=1:12%% To group GLM results
indexMatrixClosed=1;indexMatrixCenter=1;indexMatrixOpen=1;

i=1;
while i <= 22 %size(MasterXlsx,1) %

%      if i~=46% && i~=42 %&& i~=13 && i~=15 && i~=19% || i==17 || i==18 || i==19 || i==20
        %% path
        basenametable=MasterXlsx(i,1);
        basenamecell=table2cell(basenametable);
        basenamefolder=basenamecell{1,1};
        cd (basenamefolder);
        %% basename
        [~,nameSess] = fileparts(basenamefolder);
        %% session
        LTMsession=table2array(MasterXlsx(i,6));
        sessionLTMI=str2num(LTMsession{1,1});
        Ymazesession=table2array(MasterXlsx(i,5));
        sessionYmazeI=str2num(Ymazesession{1,1});
        %% Y maze specs
        nCells=table2array(MasterXlsx(i,7));
        nSess1=table2array(MasterXlsx(i,8));
        nSess2=table2array(MasterXlsx(i,9));
        nSess3=table2array(MasterXlsx(i,10));
        nSess4=table2array(MasterXlsx(i,11));
        nSess5=table2array(MasterXlsx(i,12));
        TotSession=table2array(MasterXlsx(i,13));
        IndexNoConflictSess1STR=table2array(MasterXlsx(i,14));
        IndexNoConflictSess1=str2num(IndexNoConflictSess1STR{1,1});
        IndexNoConflictSess2STR=table2array(MasterXlsx(i,15));
        IndexNoConflictSess2=str2num(IndexNoConflictSess2STR{1,1});
        if isempty(IndexNoConflictSess2)
            IndexNoConflictSess2=[1];
        end
        IndexSessToKeep2STR=table2array(MasterXlsx(i,16));
        IndexSessToKeep2=str2num(IndexSessToKeep2STR{1,1});
        IndexNoConflictSess3STR=table2array(MasterXlsx(i,17));
        IndexNoConflictSess3=str2num(IndexNoConflictSess3STR{1,1});
        IndexSessToKeep3STR=table2array(MasterXlsx(i,18));
        IndexSessToKeep3=str2num(IndexSessToKeep3STR{1,1});
        if isempty(IndexSessToKeep3)
            IndexSessToKeep3=[1];
        end
        IndexNoConflictSess4STR=table2array(MasterXlsx(i,19));
        IndexNoConflictSess4=str2num(IndexNoConflictSess4STR{1,1});
        IndexSessToKeep4STR=table2array(MasterXlsx(i,20));
        IndexSessToKeep4=str2num(IndexSessToKeep4STR{1,1});
        if isempty(IndexSessToKeep4)
            IndexSessToKeep4=[1];
        end
        IndexNoConflictSess5STR=table2array(MasterXlsx(i,21));
        IndexNoConflictSess5=str2num(IndexNoConflictSess5STR{1,1});
        IndexSessToKeep5STR=table2array(MasterXlsx(i,22));
        IndexSessToKeep5=str2num(IndexSessToKeep5STR{1,1});
        if isempty(IndexSessToKeep5)
            IndexSessToKeep5=[1];
        end
        %% Arm
        OpenArm=char(table2array(MasterXlsx(i,30)));
        ChosenArm=char(table2array(MasterXlsx(i,31)));
        
        %%Ch to use for theta analyses
        Ch2UseTheta = table2array(MasterXlsx(i,23));
        %%Ch to use for SWR analyses
        Ch2UseRipples = table2array(MasterXlsx(i,47));%
        %% tetrode
        Tetr=table2array(MasterXlsx(i,2));
        tet2useI=str2num(Tetr{1,1});
        %% cell  
        cellsI=MasterXlsx.Cell{i}; %%%%%ATTENTION
        %% R after S
        RafterS=char(table2array(MasterXlsx(i,32)));
        %% S after R
        SafterR=char(table2array(MasterXlsx(i,33)));
        %% S after S
        SafterS=char(table2array(MasterXlsx(i,34)));
        %% R after R
        RafterR=char(table2array(MasterXlsx(i,35)));
        %% S after S after S
        SafterSafterS=char(table2array(MasterXlsx(i,36)));
        %% R after R after R
        RafterRafterR=char(table2array(MasterXlsx(i,37)));
        %% First trials S
        FirstTrialsS=char(table2array(MasterXlsx(i,38)));
        %% First trials R
        FirstTrialsR=char(table2array(MasterXlsx(i,39)));
        %% Last trials S
        LastTrialsS=char(table2array(MasterXlsx(i,40)));
        %% Last trials S
        LastTrialsR=char(table2array(MasterXlsx(i,41)));
        %% Sess for Opto exp
        nameSessForOptoSTR=table2array(MasterXlsx(i,21));
        nameSessForOpto=str2num(nameSessForOptoSTR{1,1});
        %% Pyr vs Intern
        CellType=MasterXlsx(i,4);
        Typeofcell=table2cell(CellType);
        charTypeofcell=Typeofcell{1,1};
        %%SignCells
        RiskyCenterCells=table2array(MasterXlsx(i,56));
        RCellsCenter=str2num(RiskyCenterCells{1,1});
        SafeCenterCells=table2array(MasterXlsx(i,57));
        SCellsCenter=str2num(SafeCenterCells{1,1});
        RiskyArmCells=table2array(MasterXlsx(i,58));
        RCellsArm=str2num(RiskyArmCells{1,1});
        SafeArmCells=table2array(MasterXlsx(i,59));
        SCellsArm=str2num(SafeArmCells{1,1});
        
        %% Check tet and cells
        %         if size(tet2useI,2) ~= size(cellsI,2)
        %             disp('Tet and units do not match, stop');
        %             return
        %         end
        %     %% Create TRK
%             NewName=nameSess(1:end-6); %%Check whether -5 or -6
%             RenamingFilesCSVOpto(NewName);
%             Split2CamerasTrkInTopFront(nameSess);
%             Opto=1; %0 if you didn't do the csv to xlsx conversions, 1 if so;
%             CreateTrk(nameSess,Opto);
        
%             %% Create coordinates for Y-maze
%             SessCoordSTR=table2array(MasterXlsx(i,21));
%             SessCoord=str2num(SessCoordSTR{1,1});
%             CalcCoordYmaze(nameSess,SessCoord);
%         
%             %% Select dat Plus Minus 10 seconds before the animal crosses
%             SessCoordSTR=table2array(MasterXlsx(i,21));
%             SessCoord=str2num(SessCoordSTR{1,1});
%             SelectionPlusMinus10secDat(nameSess,SessCoord);
            
%             %% Theta division
%             %%1
%             indexExp=i;
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[9];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec1';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeTheta(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Center
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[9];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec1Center';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaCenter(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Arm
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[9];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec1Arm';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaArm(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             
% 
%             %%2
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[13];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec2';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeTheta(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);
%             ThetaCoh(folderTheta,indexExp);
%             %% Center
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[13];%str2num(ThetavHC{1,1});
%             folderTheta='SelandFiltDat10Sec2Center';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));
%             RiskySafeThetaCenter(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);            
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %% Arm
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[13];%str2num(ThetavHC{1,1});
%             folderTheta='SelandFiltDat10Sec2Arm';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));
%             RiskySafeThetaArm(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);            
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             
%             %%3
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[17];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec3';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeTheta(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);            
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Center
%             folderTheta='SelandFiltDat10Sec3Center';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaCenter(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);            
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Arm
%             folderTheta='SelandFiltDat10Sec3Arm';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaArm(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);            
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%              
%             %%4
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[21];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec4';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeTheta(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Center
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[21];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec4Center';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaCenter(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Arm
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[21];%str2num(ThetavHC{1,1});
%             folderTheta='SelandFiltDat10Sec4Arm';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));            
%             RiskySafeThetaArm(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
% 
%             %%5
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[25];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec5';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeTheta(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Center
%             folderTheta='SelandFiltDat10Sec5Center';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaCenter(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             folderTheta='SelandFiltDat10Sec5Arm';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaArm(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             
%             %%6
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[29];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec6';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeTheta(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Center
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[29];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec6Center';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaCenter(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%             %%Arm
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[1];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[29];%str2num(ThetavHC{1,1});             
%             folderTheta='SelandFiltDat10Sec6Arm';
%             if isfolder(folderTheta)
%                 rmdir(folderTheta, 's');
%             end
%             mkdir(sprintf('%s', folderTheta));             
%             RiskySafeThetaArm(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use,folderTheta);             
%             %% Theta Cohe
%             ThetaCoh(folderTheta,indexExp);
%              
            
% %             %% ToGroup
%             cd('SelandFiltDat10Sec5Arm')
% %            No light I
%             RI=readtable('Coherence10secBefandAfter5-1RI.xlsx','ReadVariableNames',0);
%             ValuesRI=table2array(RI(:,:));
%             RiskyI(indexRI:(indexRI+size(RI,1)-1),1:size(RI,2))=ValuesRI;            
%             SI=readtable('Coherence10secBefandAfter5-1SI.xlsx','ReadVariableNames',0);
%             ValuesSI=table2array(SI(:,:));
%             SafeI(indexSI:(indexSI+size(SI,1)-1),1:size(SI,2))=ValuesSI;
%             indexRI=indexRI+size(RI,1);
%             indexSI=indexSI+size(SI,1);
% %            Light
%             RII=readtable('Coherence10secBefandAfter5-1RII.xlsx','ReadVariableNames',0);
%             ValuesRII=table2array(RII(:,:));
%             RiskyII(indexRII:(indexRII+size(RII,1)-1),1:size(RII,2))=ValuesRII;            
%             SII=readtable('Coherence10secBefandAfter5-1SII.xlsx','ReadVariableNames',0);
%             ValuesSII=table2array(SII(:,:));
%             SafeII(indexSII:(indexSII+size(SII,1)-1),1:size(SII,2))=ValuesSII;
%             indexRII=indexRII+size(RII,1);
%             indexSII=indexSII+size(SII,1);
% %            No light II
%             RIII=readtable('Coherence10secBefandAfter5-1RIII.xlsx','ReadVariableNames',0);
%             ValuesRIII=table2array(RIII(:,:));
%             RiskyIII(indexRIII:(indexRIII+size(RIII,1)-1),1:size(RIII,2))=ValuesRIII;            
%             SIII=readtable('Coherence10secBefandAfter5-1SIII.xlsx','ReadVariableNames',0);
%             ValuesSIII=table2array(SIII(:,:));
%             SafeIII(indexSIII:(indexSIII+size(SIII,1)-1),1:size(SIII,2))=ValuesSIII;
%             indexRIII=indexRIII+size(RIII,1);
%             indexSIII=indexSIII+size(SIII,1);
%             
            %% ThetaPower Ymaze
%             ThetamPFC=table2array(MasterXlsx(i,48)); 
%             ThetamPFC2use=[4];%str2num(ThetamPFC{1,1});
%             ThetavHC=table2array(MasterXlsx(i,49));
%             ThetavHC2use=[29];%str2num(ThetavHC{1,1});
% 
%             FreqPower(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use);
%             folderSTR='MTSPower';
%             if isfolder(folderSTR)==1
%                 rmdir(folderSTR);
%             end
%             MTSPowerYmaze(nameSess,OpenArm,ChosenArm,ThetamPFC2use,ThetavHC2use);
%             %% ToGroup
%             
%             cd('MTSPower')
%             %No light I
%             FilenameRI='MTSPower10secBefandAftervHCRisky5-1NoLightI.xlsx';
%             if isfile(FilenameRI)
%                 RI=readtable(FilenameRI,'ReadVariableNames',0);
%                 ValuesRI=table2array(RI(:,:));
%                 RiskyI(indexRI:(indexRI+size(RI,1)-1),1:size(RI,2))=ValuesRI;
%                 indexRI=indexRI+size(RI,1);
%             end
%             SI=readtable('MTSPower10secBefandAftervHCSafe5-1NoLightI.xlsx','ReadVariableNames',0);
%             ValuesSI=table2array(SI(:,:));
%             SafeI(indexSI:(indexSI+size(SI,1)-1),1:size(SI,2))=ValuesSI;
%             indexSI=indexSI+size(SI,1);
%             %Light
%             FilenameRII='MTSPower10secBefandAftervHCRisky5-1Light.xlsx';
%             if isfile(FilenameRII)
%                 RII=readtable(FilenameRII,'ReadVariableNames',0);
%                 ValuesRII=table2array(RII(:,:));
%                 RiskyII(indexRII:(indexRII+size(RII,1)-1),1:size(RII,2))=ValuesRII;
%                 indexRII=indexRII+size(RII,1);
%             end
%             SII=readtable('MTSPower10secBefandAftervHCSafe5-1Light.xlsx','ReadVariableNames',0);
%             ValuesSII=table2array(SII(:,:));
%             SafeII(indexSII:(indexSII+size(SII,1)-1),1:size(SII,2))=ValuesSII;
%             indexSII=indexSII+size(SII,1);
%             %No light II
%             FilenameRIII='MTSPower10secBefandAftervHCRisky5-1NoLightII.xlsx';
%             if isfile(FilenameRIII)
%                 RIII=readtable(FilenameRIII,'ReadVariableNames',0);
%                 ValuesRIII=table2array(RIII(:,:));
%                 RiskyIII(indexRIII:(indexRIII+size(RIII,1)-1),1:size(RIII,2))=ValuesRIII;
%                 indexRIII=indexRIII+size(RIII,1);
%             end
%             SIII=readtable('MTSPower10secBefandAftervHCSafe5-1NoLightII.xlsx','ReadVariableNames',0);
%             ValuesSIII=table2array(SIII(:,:));
%             SafeIII(indexSIII:(indexSIII+size(SIII,1)-1),1:size(SIII,2))=ValuesSIII;  
%             indexSIII=indexSIII+size(SIII,1);

%             %% GroupLTMLinearBar
%             GroupLinearPlaceFields(tet2useI,sessionLTMI,cellsI);
%             
              %% Count single trials linear track
%             [indexExp,Counts]=CountSingleTrials(sessionLTMI,indexExp,Counts);
%             indexExp=indexExp+1;
%             %% Group Time Per comp
%                 cd('Analyses')
%                 cd('LTM')
%                 Matrix=readtable(['TimeAnimalInACB.xlsx']);
%                 MatrixArray=table2array(Matrix);
%                 TimeClosed(1:12,i)=MatrixArray(:,1);
%                 TimeCenter(1:12,i)=MatrixArray(:,2);
%                 TimeOpen(1:12,i)=MatrixArray(:,3);
%                 %% Group Time Hesit zone Outbound vs Inbound
%                 cd('Analyses')
%                 cd('Single-trial')
%                 cd('Results')
%                 MatrixIn=readtable(['TimeInHInboundTrials.xlsx']);
%                 MatrixArrayIn=table2array(MatrixIn);
%                 TimeInbound(1:12,i)=MatrixArrayIn(:,1);
%                 MatrixOut=readtable(['TimeInHOutboundTrials.xlsx']);
%                 MatrixArrayOut=table2array(MatrixOut);
%                 TimeOutbound(1:12,i)=MatrixArrayOut(:,1);
%                 %% Group Time Hesit zone Outbound vs Inbound
%                 [Group1,Group2,Group3,Group4,Group5,Group6,Group7,Group8,Group9,Group10,Group11,Group12,index1,index2,index3,index4,index5,index6,index7,index8,index9,index10,index11,index12]=GroupSingleTrialInboundOutbound(Group1,Group2,Group3,Group4,Group5,Group6,Group7,Group8,Group9,Group10,Group11,Group12,index1,index2,index3,index4,index5,index6,index7,index8,index9,index10,index11,index12);

            %% placemap
            %     cd('Analyses')
            %     cd('LTM')
            %     if isfolder('PlaceMap')
            %         rmdir('PlaceMap', 's');
            %     end
            %     cd ..
            %     cd ..
            %
            %     placemap_CC(nameSess,tet2useI,cellsI,20000,sessionLTMI,1,4,'All');
            
            %     if i<=20
            %         cd('Analyses')
            %         cd('Ymaze')
            %         if isfolder('PlaceMap')
            %             rmdir('PlaceMap', 's');
            %         end
            %         cd ..
            %         cd ..
            %         placemap_CC(nameSess,tet2useI,cellsI,20000,sessionYmazeI,1,4,'Y');
            %         ReorgYmaze(nameSess,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
            %     end
%         %% FR per comp LTM
%                 ZscoredVal=nan(10000,3);
%                 AllInOneTableFR=nan(10000,3);
%                 indexFR=1;
%                 for indexTet=1:size(tet2useI,2)
%                     tet2use=tet2useI(1,indexTet);
%                     cellcell=cellsI{1,indexTet};
%                     for indexCell=1:size(cellcell,2)
%                         cells=cellcell(1,indexCell);
%                         [AllInOneTableFR,ZscoredVal,indexFR]=FRPerCompLTM(nameSess,tet2use,cells,sessionLTMI,AllInOneTableFR,ZscoredVal,indexFR);
%                     end
%                 end
%                 ReorgLTMsessFRXcompZsored(ZscoredVal);
%                 ReorgTime;
%         %% FR per comp LTM NormToPeak
%                 ZscoredVal=nan(10000,3);
%                 AllInOneTableFR=nan(10000,3);
%                 indexFR=1;
%                 for indexTet=1:size(tet2useI,2)
%                     tet2use=tet2useI(1,indexTet);
%                     cellcell=cellsI{1,indexTet};
%                     for indexCell=1:size(cellcell,2)
%                         cells=cellcell(1,indexCell);
%                         [AllInOneTableFR,ZscoredVal,indexFR]=FRPerCompLTMNormToPeak(nameSess,tet2use,cells,sessionLTMI,AllInOneTableFR,ZscoredVal,indexFR);
%                     end
%                 end
%                 ReorgLTMsessFRXcompNormToPeak(ZscoredVal);
%         %% to group
%         cd('Analyses')
%         cd('LTM')
%         Reorgxlsx_filenameZscoredFRACB = strcat('ReorgAllCellsZscoredFRACB.xlsx');
%         TableNormToPeak=readtable(Reorgxlsx_filenameZscoredFRACB,'ReadVariableNames',1);
%         ArrayNormToPeak=table2array(TableNormToPeak);
%         ArrayToGroup(indexGroup:(indexGroup+(size(ArrayNormToPeak,1))-1),1:36)=ArrayNormToPeak;
%         indexGroup=indexGroup+(size(ArrayNormToPeak,1));

        %% FR Bar LTM
        %     ZscoredValBar=nan(10000,20);
        %     AllInOneTableFRBar=nan(10000,20);
        %     indexFRBar=1;
        %     for indexTet=1:size(tet2useI,2)
        %         tet2use=tet2useI(1,indexTet);
        %         cellcell=cellsI{1,indexTet};
        %         for indexCell=1:size(cellcell,2)
        %             cells=cellcell(1,indexCell);
        %             [AllInOneTableFRBar,ZscoredValBar,indexFRBar]=FRBarLTM(nameSess,tet2use,cells,sessionLTMI,AllInOneTableFRBar,ZscoredValBar,indexFRBar);
        %         end
        %     end
        %     ReorgLTMsessZscoredBar(ZscoredValBar);
        
        %% ReorgFiringField Bar LTM
        %     for iSess=1:size(sessionLTMI,2)
        %         Sess=sessionLTMI(1,iSess);
        %         [normToMaxconcMatrix,inormIndex,concMatrix]=ReorgPlaceFieldsBARLTM(iSess,Sess,normToMaxconcMatrix,inormIndex);
        %     end
        %     inormIndex=inormIndex+size(concMatrix,1);
        
        %% ReorgOnlyFirstFiringField Bar LTM
        %     for iSess=1:size(sessionLTMI,2)
        %         Sess=sessionLTMI(1,iSess);
        %         [inormIndex,concMatrix]=ReorgOnlySessOnePlaceFieldsBARLTM(iSess,Sess,inormIndex,concMatrix);
        %     end
        
%         %% Firing rate in center vs proximal
%             for iSess=1:size(sessionLTMI,2)
%                 Sess=sessionLTMI(1,iSess);
%                 [inormIndex,concMatrix]=FiringRateInCenterProxVSDistal(iSess,Sess,inormIndex,concMatrix);
%             end
        % Theta in the center in outbound and inbound LTM
%         ThetaCenterOutboundAndInboundFilt(sessionLTMI,nameSess,Ch2UseTheta)
%         QuantThetaCenterInOutboundandInbound(nameSess,sessionLTMI)
%         % Group Them to plot
%         cd('analyses')
%         cd('ThetasingleTrial')
%         InboundTable=readtable(['ThetaPowerInboundAllLv.xlsx'],'ReadVariableNames',1);
%         OutboundTable=readtable(['ThetaPowerOutboundAllLv.xlsx'],'ReadVariableNames',1);
%         ValuesInbound=table2array(InboundTable);
%         ValuesOutbound=table2array(OutboundTable);
%         concMatrixOut(inormIndex:inormIndex+11,1:10000)=ValuesOutbound;
%         concMatrixIn(inormIndex:inormIndex+11,1:10000)=ValuesInbound;
%         inormIndex=inormIndex+12;
%         %% ThetaPower LTM
%         MTSPowerLTM(nameSess,Ch2UseTheta,sessionLTMI);
%         %Group
%         cd('Analyses')
%         cd('ThetasingleTrial');
%         ArrayTableNorm=readtable(['MTSPowerLTM0.5-120HzNorm.xlsx'],'ReadVariableNames',0);
%         ValuesNorm=table2array(ArrayTableNorm);
%         ArrayTable=readtable(['MTSPowerLTM0.5-120Hz.xlsx'],'ReadVariableNames',0);
%         Values=table2array(ArrayTable);
%         concMatrixNorm(inormIndex:inormIndex+11,1:15999)=ValuesNorm;
%         concMatrix(inormIndex:inormIndex+11,1:15999)=Values;
%         inormIndex=inormIndex+12;
       % Group Single-trial LTM
%         [concMatrix1,concMatrix2,concMatrix3,concMatrix4,concMatrix5,concMatrix6,concMatrix7,concMatrix8,concMatrix9,concMatrix10,concMatrix11,concMatrix12,index1,index2,index3,index4,index5,index6,index7,index8,index9,index10,index11,index12]=GroupAllSingleTrial(concMatrix1,concMatrix2,concMatrix3,concMatrix4,concMatrix5,concMatrix6,concMatrix7,concMatrix8,concMatrix9,concMatrix10,concMatrix11,concMatrix12,index1,index2,index3,index4,index5,index6,index7,index8,index9,index10,index11,index12);
        
        
        %% FR per comp Ymaze
        %     cd('Analyses')
        %     if isfolder('Ymaze')==0
        %     mkdir(sprintf('%s', 'Ymaze'));
        %     end
        %     cd('Ymaze')
        %     if isfolder('ZscoredValuesCenterArm')
        %         rmdir('ZscoredValuesCenterArm', 's');
        %     end
        %     cd ..
        %     cd ..
        %     ZscoredVal=nan(10000,2);
        %     AllInOneTableFR=nan(10000,2);
        %     Norm2FRInter=nan(10000,2);
        %     indexFR=1;
        %     for indexTet=1:size(tet2useI,2)
        %         tet2use=tet2useI(1,indexTet);
        %         cellcell=cellsI{1,indexTet};
        %         for indexCell=1:size(cellcell,2)
        %             cells=cellcell(1,indexCell);
        %             [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FRPerCompYMaze(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %         end
        %     end
        %     ReorgYmazesessFRXcompZscored(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %     ReorgTimeYmaze(nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);

%         %Grouping FilesForNace
%         if i<=20
%             MasterCol=[];
%             indexFR=1;
%             indexTypeofcell=1;
%             for indexTet=1:size(tet2useI,2)
%                 tet2use=tet2useI(1,indexTet);
%                 cellcell=cellsI{1,indexTet};
%                 for indexCell=1:size(cellcell,2)
%                     cells=cellcell(1,indexCell);
%                     [MasterCol,indexTypeofcell,indexFR]=GroupFileForNace(nameSess,indexFR,tet2use,cells,sessionYmazeI,charTypeofcell,indexTypeofcell,MasterCol,nSess1,nSess2,nSess3,nSess4,nSess5,OpenArm,ChosenArm);
%                 end
%             end
%             headers={'Basename','Tetrode','Cell','FRinMinus10s','FRinMinus9s','FRinMinus8s','FRinMinus7s','FRinMinus6s','FRinMinus5s','FRinMinus4s','FRinMinus3s','FRinMinus2s','FRinMinus1s','FRinPlus1s','FRinPlus2s','FRinPlus3s','FRinPlus4s','FRinPlus5s','FRinPlus6s','FRinPlus7s','FRinPlus8s','FRinPlus9s','FRinPlus10s','SpeedinMinus10s','SpeedinMinus9s','SpeedinMinus8s','SpeedinMinus7s','SpeedinMinus6s','SpeedinMinus5s','SpeedinMinus4s','SpeedinMinus3s','SpeedinMinus2s','SpeedinMinus1s','SpeedinPlus1s','SpeedinPlus2s','SpeedinPlus3s','SpeedinPlus4s','SpeedinPlus5s','SpeedinPlus6s','SpeedinPlus7s','SpeedinPlus8s','SpeedinPlus9s','SpeedinPlus10s','OpenArm','ChosenArm','ChoiceType','TimeInCenterInSec','TimeOnTheArmInSec','Configuration','TrialNumber','CellType'};
%             MasterColI=MasterCol;
%             MasterColI.Properties.VariableNames=headers;
%             towrite=MasterColI(:,:);
%             arraytable=towrite;
%             nametable=strcat('MasterFile_',nameSess,'.xlsx');
%             if isfile(nametable)==1
%                 delete(nametable);
%             end
%             writetable(arraytable,nametable);
%             cd('T:\Carlo')
%             cd('FilesForNace')
%             if isfile(nametable)==1
%                 delete(nametable);
%             end
%             writetable(arraytable,nametable);
%         end
%         %Grouping FilesForNace In ms
%         if i<=20
%             MasterCol=[];
%             indexFR=1;
%             indexTypeofcell=1;
%             for indexTet=1:size(tet2useI,2)
%                 tet2use=tet2useI(1,indexTet);
%                 cellcell=cellsI{1,indexTet};
%                 for indexCell=1:size(cellcell,2)
%                     cells=cellcell(1,indexCell);
%                     [MasterCol,indexTypeofcell,indexFR]=GroupFileForNaceInms(nameSess,indexFR,tet2use,cells,sessionYmazeI,charTypeofcell,indexTypeofcell,MasterCol,nSess1,nSess2,nSess3,nSess4,nSess5,OpenArm,ChosenArm);
%                 end
%             end
%             headers={'Basename','Tetrode','Cell','FRinMinus10s','FRinMinus9_8s','FRinMinus9_6s','FRinMinus9_4s','FRinMinus9_2s','FRinMinus9s','FRinMinus8_8s','FRinMinus8_6s','FRinMinus8_4s','FRinMinus8_2s','FRinMinus8s','FRinMinus7_8s','FRinMinus7_6s','FRinMinus7_4s','FRinMinus7_2s','FRinMinus7s','FRinMinus6_8s','FRinMinus6_6s','FRinMinus6_4s','FRinMinus6_2s','FRinMinus6s','FRinMinus5_8s','FRinMinus5_6s','FRinMinus5_4s','FRinMinus5_2s','FRinMinus5s','FRinMinus4_8s','FRinMinus4_6s','FRinMinus4_4s','FRinMinus4_2s','FRinMinus4s','FRinMinus3_8s','FRinMinus3_6s','FRinMinus3_4s','FRinMinus3_2s','FRinMinus3s','FRinMinus2_8s','FRinMinus2_6s','FRinMinus2_4s','FRinMinus2_2s','FRinMinus2s','FRinMinus1_8s','FRinMinus1_6s','FRinMinus1_4s','FRinMinus1_2s','FRinMinus1s','FRinMinus0_8s','FRinMinus0_6s','FRinMinus0_4s','FRinMinus0_2s','FRinPlus0_2s','FRinPlus0_4s','FRinPlus0_6s','FRinPlus0_8s','FRinPlus1s','FRinPlus1_2s','FRinPlus1_4s','FRinPlus1_6s','FRinPlus1_8s','FRinPlus2s','FRinPlus2_2s','FRinPlus2_4s','FRinPlus2_6s','FRinPlus2_8s','FRinPlus3s','FRinPlus3_2s','FRinPlus3_4s','FRinPlus3_6s','FRinPlus3_8s','FRinPlus4s','FRinPlus4_2s','FRinPlus4_4s','FRinPlus4_6s','FRinPlus4_8s','FRinPlus5s','FRinPlus5_2s','FRinPlus5_4s','FRinPlus5_6s','FRinPlus5_8s','FRinPlus6s','FRinPlus6_2s','FRinPlus6_4s','FRinPlus6_6s','FRinPlus6_8s','FRinPlus7s','FRinPlus7_2s','FRinPlus7_4s','FRinPlus7_6s','FRinPlus7_8s','FRinPlus8s','FRinPlus8_2s','FRinPlus8_4s','FRinPlus8_6s','FRinPlus8_8s','FRinPlus9s','FRinPlus9_2s','FRinPlus9_4s','FRinPlus9_6s','FRinPlus9_8s','FRinPlus10s','SpeedinMinus10s','SpeedinMinus9s','SpeedinMinus8s','SpeedinMinus7s','SpeedinMinus6s','SpeedinMinus5s','SpeedinMinus4s','SpeedinMinus3s','SpeedinMinus2s','SpeedinMinus1s','SpeedinPlus1s','SpeedinPlus2s','SpeedinPlus3s','SpeedinPlus4s','SpeedinPlus5s','SpeedinPlus6s','SpeedinPlus7s','SpeedinPlus8s','SpeedinPlus9s','SpeedinPlus10s','OpenArm','ChosenArm','ChoiceType','TimeInCenterInSec','TimeOnTheArmInSec','Configuration','TrialNumber','CellType'};
%             MasterColI=MasterCol;
%             MasterColI.Properties.VariableNames=headers;
%             towrite=MasterColI(:,:);
%             arraytable=towrite;
%             nametable=strcat('MasterFile_',nameSess,'Inms.xlsx');
%             if isfile(nametable)==1
%                 delete(nametable);
%             end
%             writetable(arraytable,nametable);
%             cd('T:\Carlo')
%             cd('FilesForNace')
%             if isfile(nametable)==1
%                 delete(nametable);
%             end
%             writetable(arraytable,nametable);
%         end
%                 % FR linearized Y maze
%                 if i<=20
%                     AnalysesFolder = ('Analyses'); %%Save pics
%                     cd (AnalysesFolder)
%                     cd ('Ymaze')
%                     if isfolder('LinearizedYmace1cmBins')
%                         rmdir('LinearizedYmace1cmBins', 's');
%                     end
%                     cd ..
%                     cd ..
%                     %CellsNum=str2double(nCells{1,1});
%                     CellsNum=nCells;
%                     GroupCells=nan(30000,(CellsNum+6)*size(sessionYmazeI,2));
%                     indexCostant=1;
%                     for indexTet=1:size(tet2useI,2)
%                         tet2use=tet2useI(1,indexTet);
%                         cellcell=cellsI{1,indexTet};
%                         for indexCell=1:size(cellcell,2)
%                             cells=cellcell(1,indexCell);
%                             [GroupCells,indexCostant]=FRLinearizedYMaze(nameSess,tet2use,cells,sessionYmazeI,GroupCells,CellsNum,nSess1,nSess2,nSess3,nSess4,nSess5,indexCostant,OpenArm,ChosenArm);
%                         end
%                     end
%                     cd (AnalysesFolder)
%                     cd ('Ymaze')                    
%                     if exist ('LinearizedYmace1cmBins','dir')
%                         cd ('LinearizedYmace1cmBins')
%                     else
%                         mkdir(sprintf('%s', 'LinearizedYmace1cmBins'))
%                         cd ('LinearizedYmace1cmBins')
%                     end
%                     arraytable=table(GroupCells);
%                     nametable=strcat('LinearizedYmace1cmBins.xlsx');
%                     if isfile(nametable)==1
%                         delete(nametable);
%                     end
%                     writetable(arraytable,nametable);
%                     %cd('T:\Carlo')
%                     cd('/mnt/groupCiocchi1/Carlo');
%                     cd('FilesForNace')
%                     nametable=strcat(nameSess,'_LinearizedYmace1cmBins.xlsx');
%                     if isfile(nametable)==1
%                         delete(nametable);
%                     end
%                     writetable(arraytable,nametable);
%                 end
% 

                % FR 10 seconds before entering the arm
%                 if i<=20
%                     cd('Analyses')
%                     if isfolder('Ymaze')==0
%                         mkdir(sprintf('%s', 'Ymaze'));
%                     end
%                     cd('Ymaze')
%                     if isfolder('Zscored&FR10secBefore')
%                         rmdir('Zscored&FR10secBefore', 's');
%                     end
%                     cd ..
%                     cd ..
%                     ZscoredVal=nan(10000,20);
%                     AllInOneTableFR=nan(10000,20);
%                     Norm2FRInter=nan(10000,20);
%                     indexFR=1;
%                     for indexTet=1:size(tet2useI,2)
%                         tet2use=tet2useI(1,indexTet);
%                         cellcell=cellsI{1,indexTet};
%                         for indexCell=1:size(cellcell,2)
%                             cells=cellcell(1,indexCell);
%                             [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMaze(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
%                         end
%                     end
%                     ReorgYmazesess10secBeforeZscored(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
%                 cd('Analyses')
%                 cd('Ymaze')
%                 cd('Zscored&FR10secBefore')
%                 fileTimeArmName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBefore.xlsx');
%                 %Time
%                 fileTimeArm=xlsread([fileTimeArmName]);
%                 ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:180)=fileTimeArm(:,:);
%                 ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
%                 end
                
%                 % FR 10 seconds before entering the arm in 250ms steps
%                 if i<=20
%                     cd('Analyses')
%                     if isfolder('Ymaze')==0
%                         mkdir(sprintf('%s', 'Ymaze'));
%                     end
%                     cd('Ymaze')
%                     if isfolder('Zscored&FR10secBeforeInms')
%                         rmdir('Zscored&FR10secBeforeInms', 's');
%                     end
%                     cd ..
%                     cd ..
%                     ZscoredVal=nan(10000,100);
%                     AllInOneTableFR=nan(10000,100);
%                     Norm2FRInter=nan(10000,100);
%                     indexFR=1;
%                     for indexTet=1:size(tet2useI,2)
%                         tet2use=tet2useI(1,indexTet);
%                         cellcell=cellsI{1,indexTet};
%                         for indexCell=1:size(cellcell,2)
%                             cells=cellcell(1,indexCell);
%                             [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeInms(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
%                         end
%                     end
%                     ReorgYmazesess10secBeforeZscoredInms(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
%                     cd('Analyses')
%                     cd('Ymaze')
%                     cd('Zscored&FR10secBeforeInms')
% %                     fileTimeArmName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBeforeInms.xlsx');
% %                     %Time
% %                     fileTimeArm=xlsread([fileTimeArmName]);
% %                     ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:180)=fileTimeArm(:,:);
% %                     ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
%                 end
        
        % FR 10 seconds before entering the arm Pyr %%MasterXlsx=readtable(['MasterFile3.0WindPyr.xlsx']); in the first line
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored&FR10secBeforePyr')
        %                 rmdir('Zscored&FR10secBeforePyr', 's');
        %             end
        %             cd ..
        %             cd ..
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazePyr(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %                 end
        %             end
        %             ReorgYmazesess10secBeforeZscoredPyr(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored&FR10secBeforePyr')
        %         end
        %     %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored&FR10secBeforePyr')
        %             fileName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),1:180)=file10secBefore(:,:);
        %             ccTIMEArm=ccTIMEArm+size(file10secBefore,1);
        %         end
        
        %         % FR 10 seconds before entering the arm In
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored&FR10secBeforeIn')
        %                 rmdir('Zscored&FR10secBeforeIn', 's');
        %             end
        %             cd ..
        %             cd ..
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeIn(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %                 end
        %             end
        %             ReorgYmazesess10secBeforeZscoredIn(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored&FR10secBeforeIn')
        %         end
        
        %         %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored&FR10secBeforeIn')
        %             fileName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),1:180)=file10secBefore(:,:);
        %             ccTIMEArm=ccTIMEArm+size(file10secBefore,1);
        %         end
        %         % FR 10 seconds before entering the arm SignCells
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored&FR10secBeforeSignCells')
        %                 rmdir('Zscored&FR10secBeforeSignCells', 's');
        %             end
        %             cd ..
        %             cd ..
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeSignCells(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %                 end
        %             end
        %             ReorgYmazesess10secBeforeZscoredSignCells(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored&FR10secBeforeSignCells')
        %         end
        
        %         %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored&FR10secBeforeSignCells')
        %             fileName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),1:180)=file10secBefore(:,:);
        %             ccTIMEArm=ccTIMEArm+size(file10secBefore,1);
        %         end
        %
        
        %             %% FR 10 seconds before entering the arm SignCells
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored&FR10secBeforeOnlyRiskyCells')
        %                 rmdir('Zscored&FR10secBeforeOnlyRiskyCells', 's');
        %             end
        %             cd ..
        %             cd ..
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeOnlyRiskyCells(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %                 end
        %             end
        %             ReorgYmazesess10secBeforeZscoredOnlyRiskyCells(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored&FR10secBeforeOnlyRiskyCells')
        %         end
        %
        %         %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored&FR10secBeforeOnlyRiskyCells')
        %             fileName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),1:180)=file10secBefore(:,:);
        %             ccTIMEArm=ccTIMEArm+size(file10secBefore,1);
        %         end
        
        %  %% FR 10 seconds before entering the arm SignCells Safe
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored&FR10secBeforeOnlySafeCells')
        %                 rmdir('Zscored&FR10secBeforeOnlySafeCells', 's');
        %             end
        %             cd ..
        %             cd ..
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeOnlySafeCells(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %                 end
        %             end
        %             ReorgYmazesess10secBeforeZscoredOnlySafeCells(Norm2FRInter,ZscoredVal,AllInOneTableFR,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored&FR10secBeforeOnlySafeCells')
        %         end
        %
        %         %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored&FR10secBeforeOnlySafeCells')
        %             fileName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),1:180)=file10secBefore(:,:);
        %             ccTIMEArm=ccTIMEArm+size(file10secBefore,1);
        %         end
        
        
        %         % FR 5 seconds before entering the arm
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored5secBefore')
        %                 rmdir('Zscored5secBefore', 's');
        %             end
        %             cd ..
        %             cd ..
        %             ZscoredVal=nan(10000,10);
        %             AllInOneTableFR=nan(10000,10);
        %             Norm2FRInter=nan(10000,10);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR5secBeforeEnteringtheArmYMaze(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %                 end
        %             end
        %             ReorgYmazesess5secBeforeZscored(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Zscored5secBefore')
        %         end
        
        %% FR 10 seconds before entering the arm LL
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored10secBeforeLL')
        %                 rmdir('Zscored10secBeforeLL', 's');
        %             end
        %             cd ..
        %             cd ..
        %
        %             if size(OpenArm,2)~= size(ChosenArm,2)
        %                 disp('Sizes OpenArm and ChosenArm not matching');
        %                 return
        %             end
        %
        %             if size(OpenArm,2)~= (nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 disp('Numbers not matching');
        %                 return
        %             end
        %
        %             countSess1=0;
        %             for iv=1:nSess1
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='L'
        %                     countSess1=countSess1+1;
        %                 end
        %             end
        %             countSess2=0;
        %             for iv=(nSess1+1):(nSess1+nSess2)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='L'
        %                     countSess2=countSess2+1;
        %                 end
        %             end
        %             countSess3=0;
        %             for iv=(nSess1+nSess2+1):(nSess1+nSess2+nSess3)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='L'
        %                     countSess3=countSess3+1;
        %                 end
        %             end
        %             countSess4=0;
        %             for iv=(1+nSess1+nSess2+nSess3):(nSess1+nSess2+nSess3+nSess4)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='L'
        %                     countSess4=countSess4+1;
        %                 end
        %             end
        %             countSess5=0;
        %             for iv=(1+nSess1+nSess2+nSess3+nSess4):(nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='L'
        %                     countSess5=countSess5+1;
        %                 end
        %             end
        %             nSess1=countSess1;
        %             nSess2=countSess2;
        %             nSess3=countSess3;
        %             nSess4=countSess4;
        %             nSess5=countSess5;
        %             TotSession=nSess1+nSess2+nSess3+nSess4+nSess5;
        %
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeLL(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter,nSess1,OpenArm,ChosenArm,TotSession,nCells);
        %                 end
        %             end
        %             if sum(isnan(ZscoredVal(1:TotSession*nCells)))==(TotSession*nCells)
        %                 ZscoredVal(1,1)=-999;
        %                 disp('Attention,no spike 10 secs before entering');
        %             end
        %             if sum(isnan(Norm2FRInter(1:TotSession*nCells)))==(TotSession*nCells)
        %                 Norm2FRInter(1,1)=-999;
        %                 disp('Attention,No spike 10 secs before entering');
        %             end
        %             ReorgYmazesess10secBeforeZscoredLL(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession);
        %
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored10secBeforeLL')
        %
        %         fileTimeArmName=strcat('ReorgAllCellsZscoredFR10secBeforeLL.xlsx');
        %         fileTimeArm=xlsread([fileTimeArmName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:100)=fileTimeArm(:,:);
        %         ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
        %
        %         end
        
        %         %% FR 10 seconds before entering the arm RR
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored10secBeforeRR')
        %                 rmdir('Zscored10secBeforeRR', 's');
        %             end
        %             cd ..
        %             cd ..
        %
        %             if size(OpenArm,2)~= size(ChosenArm,2)
        %                 disp('Sizes OpenArm and ChosenArm not matching');
        %                 return
        %             end
        %
        %             if size(OpenArm,2)~= (nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 disp('Numbers not matching');
        %                 return
        %             end
        %
        %             countSess1=0;
        %             for iv=1:nSess1
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='R'
        %                     countSess1=countSess1+1;
        %                 end
        %             end
        %             countSess2=0;
        %             for iv=(nSess1+1):(nSess1+nSess2)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='R'
        %                     countSess2=countSess2+1;
        %                 end
        %             end
        %             countSess3=0;
        %             for iv=(nSess1+nSess2+1):(nSess1+nSess2+nSess3)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='R'
        %                     countSess3=countSess3+1;
        %                 end
        %             end
        %             countSess4=0;
        %             for iv=(1+nSess1+nSess2+nSess3):(nSess1+nSess2+nSess3+nSess4)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='R'
        %                     countSess4=countSess4+1;
        %                 end
        %             end
        %             countSess5=0;
        %             for iv=(1+nSess1+nSess2+nSess3+nSess4):(nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='R'
        %                     countSess5=countSess5+1;
        %                 end
        %             end
        %             nSess1=countSess1;
        %             nSess2=countSess2;
        %             nSess3=countSess3;
        %             nSess4=countSess4;
        %             nSess5=countSess5;
        %             TotSession=nSess1+nSess2+nSess3+nSess4+nSess5;
        %
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeRR(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter,nSess1,OpenArm,ChosenArm,TotSession,nCells);
        %                 end
        %             end
        %             if sum(isnan(ZscoredVal(1:TotSession*nCells)))==(TotSession*nCells)
        %                 ZscoredVal(1,1)=-999;
        %                 disp('Attention,no spike 10 secs before entering');
        %             end
        %             if sum(isnan(Norm2FRInter(1:TotSession*nCells)))==(TotSession*nCells)
        %                 Norm2FRInter(1,1)=-999;
        %                 disp('Attention,No spike 10 secs before entering');
        %             end
        %             ReorgYmazesess10secBeforeZscoredRR(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession);
        %
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored10secBeforeRR')
        %
        %         fileTimeArmName=strcat('ReorgAllCellsZscoredFR10secBeforeRR.xlsx');
        %         fileTimeArm=xlsread([fileTimeArmName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:100)=fileTimeArm(:,:);
        %         ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
        %
        %         end
        %         %% FR 10 seconds before entering the arm LR
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored10secBeforeLR')
        %                 rmdir('Zscored10secBeforeLR', 's');
        %             end
        %             cd ..
        %             cd ..
        %
        %             if size(OpenArm,2)~= size(ChosenArm,2)
        %                 disp('Sizes OpenArm and ChosenArm not matching');
        %                 return
        %             end
        %
        %             if size(OpenArm,2)~= (nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 disp('Numbers not matching');
        %                 return
        %             end
        %
        %             countSess1=0;
        %             for iv=1:nSess1
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='R'
        %                     countSess1=countSess1+1;
        %                 end
        %             end
        %             countSess2=0;
        %             for iv=(nSess1+1):(nSess1+nSess2)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='R'
        %                     countSess2=countSess2+1;
        %                 end
        %             end
        %             countSess3=0;
        %             for iv=(nSess1+nSess2+1):(nSess1+nSess2+nSess3)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='R'
        %                     countSess3=countSess3+1;
        %                 end
        %             end
        %             countSess4=0;
        %             for iv=(1+nSess1+nSess2+nSess3):(nSess1+nSess2+nSess3+nSess4)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='R'
        %                     countSess4=countSess4+1;
        %                 end
        %             end
        %             countSess5=0;
        %             for iv=(1+nSess1+nSess2+nSess3+nSess4):(nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 if OpenArm(1,iv)=='L' && ChosenArm(1,iv)=='R'
        %                     countSess5=countSess5+1;
        %                 end
        %             end
        %             nSess1=countSess1;
        %             nSess2=countSess2;
        %             nSess3=countSess3;
        %             nSess4=countSess4;
        %             nSess5=countSess5;
        %             TotSession=nSess1+nSess2+nSess3+nSess4+nSess5;
        %
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeLR(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter,nSess1,OpenArm,ChosenArm,TotSession,nCells);
        %                 end
        %             end
        %             if sum(isnan(ZscoredVal(1:TotSession*nCells)))==(TotSession*nCells)
        %                 ZscoredVal(1,1)=-999;
        %                 disp('Attention,no spike 10 secs before entering');
        %             end
        %             if sum(isnan(Norm2FRInter(1:TotSession*nCells)))==(TotSession*nCells)
        %                 Norm2FRInter(1,1)=-999;
        %                 disp('Attention,No spike 10 secs before entering');
        %             end
        %             ReorgYmazesess10secBeforeZscoredLR(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession);
        %
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored10secBeforeLR')
        %
        %         fileTimeArmName=strcat('ReorgAllCellsZscoredFR10secBeforeLR.xlsx');
        %         fileTimeArm=xlsread([fileTimeArmName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:100)=fileTimeArm(:,:);
        %         ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
        %
        %         end
        %         %% FR 10 seconds before entering the arm RL
        %         if i<=20
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored10secBeforeRL')
        %                 rmdir('Zscored10secBeforeRL', 's');
        %             end
        %             cd ..
        %             cd ..
        %
        %             if size(OpenArm,2)~= size(ChosenArm,2)
        %                 disp('Sizes OpenArm and ChosenArm not matching');
        %                 return
        %             end
        %
        %             if size(OpenArm,2)~= (nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 disp('Numbers not matching');
        %                 return
        %             end
        %
        %             countSess1=0;
        %             for iv=1:nSess1
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='L'
        %                     countSess1=countSess1+1;
        %                 end
        %             end
        %             countSess2=0;
        %             for iv=(nSess1+1):(nSess1+nSess2)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='L'
        %                     countSess2=countSess2+1;
        %                 end
        %             end
        %             countSess3=0;
        %             for iv=(nSess1+nSess2+1):(nSess1+nSess2+nSess3)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='L'
        %                     countSess3=countSess3+1;
        %                 end
        %             end
        %             countSess4=0;
        %             for iv=(1+nSess1+nSess2+nSess3):(nSess1+nSess2+nSess3+nSess4)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='L'
        %                     countSess4=countSess4+1;
        %                 end
        %             end
        %             countSess5=0;
        %             for iv=(1+nSess1+nSess2+nSess3+nSess4):(nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 if OpenArm(1,iv)=='R' && ChosenArm(1,iv)=='L'
        %                     countSess5=countSess5+1;
        %                 end
        %             end
        %             nSess1=countSess1;
        %             nSess2=countSess2;
        %             nSess3=countSess3;
        %             nSess4=countSess4;
        %             nSess5=countSess5;
        %             TotSession=nSess1+nSess2+nSess3+nSess4+nSess5;
        %
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeRL(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter,nSess1,OpenArm,ChosenArm,TotSession,nCells);
        %                 end
        %             end
        %             if sum(isnan(ZscoredVal(1:TotSession*nCells)))==(TotSession*nCells)
        %                 ZscoredVal(1,1)=-999;
        %                 disp('Attention,no spike 10 secs before entering');
        %             end
        %             if sum(isnan(Norm2FRInter(1:TotSession*nCells)))==(TotSession*nCells)
        %                 Norm2FRInter(1,1)=-999;
        %                 disp('Attention,No spike 10 secs before entering');
        %             end
        %             ReorgYmazesess10secBeforeZscoredRL(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession);
        %
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored10secBeforeRL')
        %
        %         fileTimeArmName=strcat('ReorgAllCellsZscoredFR10secBeforeRL.xlsx');
        %         fileTimeArm=xlsread([fileTimeArmName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:100)=fileTimeArm(:,:);
        %         ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
        %
        %         end
        %         %% FR 10 seconds before entering the arm BLOCKS
        %         if i<=20
        %             ArrayToUse=LastTrialsS;
        %             cd('Analyses')
        %             if isfolder('Ymaze')==0
        %                 mkdir(sprintf('%s', 'Ymaze'));
        %             end
        %             cd('Ymaze')
        %             if isfolder('Zscored10secBeforeLateTrialsS')
        %                 rmdir('Zscored10secBeforeLateTrialsS', 's');
        %             end
        %             cd ..
        %             cd ..
        %
        %             if size(OpenArm,2)~= (nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 disp('Numbers not matching');
        %                 return
        %             end
        %
        %             countSess1=0;
        %             for iv=1:nSess1
        %                 if ArrayToUse(1,iv)=='R'
        %                     countSess1=countSess1+1;
        %                 end
        %             end
        %             countSess2=0;
        %             for iv=(nSess1+1):(nSess1+nSess2)
        %                 if ArrayToUse(1,iv)=='R'
        %                     countSess2=countSess2+1;
        %                 end
        %             end
        %             countSess3=0;
        %             for iv=(nSess1+nSess2+1):(nSess1+nSess2+nSess3)
        %                 if ArrayToUse(1,iv)=='R'
        %                     countSess3=countSess3+1;
        %                 end
        %             end
        %             countSess4=0;
        %             for iv=(1+nSess1+nSess2+nSess3):(nSess1+nSess2+nSess3+nSess4)
        %                 if ArrayToUse(1,iv)=='R'
        %                     countSess4=countSess4+1;
        %                 end
        %             end
        %             countSess5=0;
        %             for iv=(1+nSess1+nSess2+nSess3+nSess4):(nSess1+nSess2+nSess3+nSess4+nSess5)
        %                 if ArrayToUse(1,iv)=='R'
        %                     countSess5=countSess5+1;
        %                 end
        %             end
        %             nSess1=countSess1;
        %             nSess2=countSess2;
        %             nSess3=countSess3;
        %             nSess4=countSess4;
        %             nSess5=countSess5;
        %             TotSession=nSess1+nSess2+nSess3+nSess4+nSess5;
        %
        %             ZscoredVal=nan(10000,20);
        %             AllInOneTableFR=nan(10000,20);
        %             Norm2FRInter=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FR10secBeforeEnteringtheArmYMazeRafterR(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter,nSess1,ArrayToUse,TotSession,nCells);
        %                 end
        %             end
        %             if sum(isnan(ZscoredVal(1:TotSession*nCells)))==(TotSession*nCells)
        %                 ZscoredVal(1,1)=-999;
        %                 disp('Attention,no spike 10 secs before entering');
        %             end
        %             if sum(isnan(Norm2FRInter(1:TotSession*nCells)))==(TotSession*nCells)
        %                 Norm2FRInter(1,1)=-999;
        %                 disp('Attention,No spike 10 secs before entering');
        %             end
        %             ReorgYmazesess10secBeforeZscoredRafterR(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession);
        %
        %         cd('Analyses')
        %         cd('Ymaze')
        %         cd('Zscored10secBeforeLateTrialsS')
        %
        %         fileTimeArmName=strcat('ReorgAllCellsZscoredFR10secBeforeLateTrialsS.xlsx');
        %         fileTimeArm=xlsread([fileTimeArmName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:100)=fileTimeArm(:,:);
        %         ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
        %
        %         end
        %% To group all experiments
        %     cd('Analyses')
        %     cd('Ymaze')
        %     cd('ZscoredValuesCenterArm')
        %         fileTimeArmName=strcat('ReorgXConflictNoCoflictAllCellsTimeinSecArm.xlsx');
        %         fileTimeArm=xlsread([fileTimeArmName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(fileTimeArm,1)-1),1:9)=fileTimeArm(:,:);
        %         ccTIMEArm=ccTIMEArm+size(fileTimeArm,1);
        
        %     fileTimeCenterName=strcat('ReorgXConflictNoCoflictAllCellsTimeinSecCenter.xlsx');
        %     fileTimeCenter=xlsread([fileTimeCenterName]);
        %     ArrayTIMECenter(ccTIMECenter:(ccTIMECenter+size(fileTimeCenter,1)-1),1:9)=fileTimeCenter(:,:);
        %     ccTIMECenter=ccTIMECenter+size(fileTimeCenter,1);
        
        %     fileFRArmName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRArm.xlsx');
        %     fileFRArm=xlsread([fileFRArmName]);
        %     ArrayFRArm(ccFRArm:(ccFRArm+size(fileFRArm,1)-1),1:9)=fileFRArm(:,:);
        %     ccFRArm=ccFRArm+size(fileFRArm,1);
        %
        %     fileFRCenterName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRCenter.xlsx');
        %     fileFRCenter=xlsread([fileFRCenterName]);
        %     ArrayFRCenter(ccFRCenter:(ccFRCenter+size(fileFRCenter,1)-1),1:9)=fileFRCenter(:,:);
        %     ccFRCenter=ccFRCenter+size(fileFRCenter,1);
        %% FR BAR Ymaze
        %     cd('Analyses')
        %     if isfolder('Ymaze')==0
        %     mkdir(sprintf('%s', 'Ymaze'));
        %     end
        %     cd('Ymaze')
        %     if isfolder('ZscoredBARValues')
        %         rmdir('ZscoredBARValues', 's');
        %     end
        %     cd ..
        %     cd ..
        %     ZscoredVal=nan(10000,23);
        %     AllInOneTableFR=nan(10000,23);
        %     Norm2FRInter=nan(10000,23);
        %     indexFR=1;
        %     for indexTet=1:size(tet2useI,2)
        %         tet2use=tet2useI(1,indexTet);
        %         cellcell=cellsI{1,indexTet};
        %         for indexCell=1:size(cellcell,2)
        %             cells=cellcell(1,indexCell);
        %             [AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter]=FRBarYMaze(nameSess,tet2use,cells,sessionYmazeI,AllInOneTableFR,ZscoredVal,indexFR,Norm2FRInter);
        %         end
        %     end
        %     ReorgYmazesessFRBarZscored(Norm2FRInter,ZscoredVal,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %% To group all experiments
        %     cd('Analyses')
        %     cd('Ymaze')
        %     cd('ZscoredBARValues')
        %
        %     fileCCName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRCC.xlsx');
        %     fileCC=xlsread([fileCCName]);
        %     ArrayCC(ccCC:(ccCC+size(fileCC,1)-1),1:23)=fileCC(:,:);
        %     ccCC=ccCC+size(fileCC,1);
        %
        %     fileCnoNName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRCnoN.xlsx');
        %     fileCnoN=xlsread([fileCnoNName]);
        %     ArrayCnoN(ccCnoN:(ccCnoN+size(fileCnoN,1)-1),1:23)=fileCnoN(:,:);
        %     ccCnoN=ccCnoN+size(fileCnoN,1);
        %
        %     fileCNName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRNovelty.xlsx');
        %     fileCN=xlsread([fileCNName]);
        %     ArrayCN(ccCN:(ccCN+size(fileCN,1)-1),1:23)=fileCN(:,:);
        %     ccCN=ccCN+size(fileCN,1);
        %
        %     fileCO1SName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRO1Safe.xlsx');
        %     fileCO1S=xlsread([fileCO1SName]);
        %     ArrayCO1S(ccCO1s:(ccCO1s+size(fileCO1S,1)-1),1:23)=fileCO1S(:,:);
        %     ccCO1s=ccCO1s+size(fileCO1S,1);
        %
        %     fileCO1RName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRO1Risky.xlsx');
        %     fileCO1R=xlsread([fileCO1RName]);
        %     ArrayCO1R(ccCO1r:(ccCO1r+size(fileCO1R,1)-1),1:23)=fileCO1R(:,:);
        %     ccCO1r=ccCO1r+size(fileCO1R,1);
        %
        %     fileCO2SName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRO2Safe.xlsx');
        %     fileCO2S=xlsread([fileCO2SName]);
        %     ArrayCO2S(ccCO2s:(ccCO2s+size(fileCO2S,1)-1),1:23)=fileCO2S(:,:);
        %     ccCO2s=ccCO2s+size(fileCO2S,1);
        %
        %     fileCO2RName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRO2Risky.xlsx');
        %     fileCO2R=xlsread([fileCO2RName]);
        %     ArrayCO2R(ccCO2r:(ccCO2r+size(fileCO2R,1)-1),1:23)=fileCO2R(:,:);
        %     ccCO2r=ccCO2r+size(fileCO2R,1);
        %
        %     fileCO3SName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRO3Safe.xlsx');
        %     fileCO3S=xlsread([fileCO3SName]);
        %     ArrayCO3S(ccCO3s:(ccCO3s+size(fileCO3S,1)-1),1:23)=fileCO3S(:,:);
        %     ccCO3s=ccCO3s+size(fileCO3S,1);
        %
        %     fileCO3RName=strcat('ReorgXConflictNoCoflictAllCellsNormToAFRO3Risky.xlsx');
        %     fileCO3R=xlsread([fileCO3RName]);
        %     ArrayCO3R(ccCO3r:(ccCO3r+size(fileCO3R,1)-1),1:23)=fileCO3R(:,:);
        %     ccCO3r=ccCO3r+size(fileCO3R,1);
        
        %% To group all experiments
        % cd ('Analyses')
        % cd('LTM')
        %
        % filename1=strcat('ZscoredFRBarSess',int2str(configindex),'.xlsx');
        % if isfile(filename1)
        %     content1=[];
        %     content1= xlsread([filename1]);
        %     Array(cc:(cc+size(content1,1)-1),1:20)=content1(1:end,1:end);
        %     cc=cc+size(content1,1);
        % end
        %% spike char
        %     cd('Analyses')
        %
        %     if isfolder('SpikeChar')
        %         rmdir('SpikeChar', 's');
        %     end
        %     cd ..
        %     for indexTet=1:size(tet2useI,2)
        %         tet2use=tet2useI(1,indexTet);
        %         cellcell=cellsI{1,indexTet};
        %         for indexCell=1:size(cellcell,2)
        %             cells=cellcell(1,indexCell);
        %             SpikeChar(nameSess, tet2use, cells, 20000);
        %         end
        %     end
        %     destination='/mnt/groupCiocchi1/Carlo/Units2.0/';
        %     cd('Analyses')
        %     cd('SpikeChar')
        %     mypath=cd;
        %     names = dir(mypath);
        %     names([names.isdir]) = [];
        %     fileNames2 = {names.name};
        %     for ii=1:size(fileNames2,2)
        %         filenamepngchar=strcat(nameSess,'_',fileNames2{1,ii});
        %         destinationRen=strcat(destination,filenamepngchar);
        %         Origin=strcat(fileNames2{1,ii});
        %         copyfile(Origin,destinationRen);
        %     end
        
%         %% single trial
%                 cd('Analyses')
%                 cd('Single-trial')
%                 if isfolder('Results')
%                     rmdir('Results', 's');
%                 end
%                 cd ..
%                 cd ..
%                 [ZscoredArrayTrials,inormIndex,ShortLongTrialsMatrix,matrixinormIndex] = PlotLinearMaze_CC(nameSess,sessionLTMI,cellsI,tet2useI,nCells,ShortLongTrialsMatrix,ZscoredArrayTrials,inormIndex,matrixinormIndex);
%                [ArrayH,ArrayIngoing]=PlotLinearMazeTime_CC(nameSess,sessionLTMI);
%                ArrayI(:,i)=ArrayH;
%                ArrayAll(:,i)=ArrayIngoing;
%                 cd('Analyses')
%                 cd('Single-trial')
%                 filename1=strcat('ZscoredBarLTM',int2str(configindex),'.xlsx');
%                  if isfile(filename1)
%                      content1=[];
%                      content1= xlsread([filename1]);
%                      Array(cc:(cc+size(content1,1)-1),1:size(content1,2))=content1(1:end,1:end);
%                      cc=cc+size(content1,1);
%                  end
%               [ArrayH,IndexArrayH]=TimeinHesitationzone(nameSess,sessionLTMI,ArrayH,IndexArrayH);
%               [MatrixAllTogether,IndexAllTogether]=TimeOutboundInHesitZoneSingleTrialLTM(nameSess,nCells,MatrixAllTogether,IndexAllTogether,basenamefolder);
%             [MatrixAllTogether,IndexAllTogether]=SpeedOutboundPerCompSingleTrialLTM(nameSess,nCells,MatrixAllTogether,IndexAllTogether,basenamefolder);



%                   %TimeInClosedCenterOpen
%                   [ArrayH,IndexArrayH]=TimeinClosed(nameSess,sessionLTMI,ArrayH,IndexArrayH);
%                   [ArrayH,IndexArrayH]=TimeinCenter(nameSess,sessionLTMI,ArrayH,IndexArrayH);
%                   [ArrayH,IndexArrayH]=TimeinOpen(nameSess,sessionLTMI,ArrayH,IndexArrayH);
%                 cd ('Analyses')
%                 cd('Single-trial')
%                 for IndexArrayH=1:12
%                     file=xlsread([strcat('BarLTM',int2str(IndexArrayH),'.xlsx')]);
%                     ArrayH(IndexArrayH,cc)=size(file,1);
%                 end
%                 cc=cc+1;

                %%Time in Anymaze new exp LTM
%                 CompartmentLTM(nameSess,sessionLTMI);
                %%Group Time in LTM anymaze
%                 [MatrixGroup,indexMatrix,MatrixGroupPerc]=GroupTimeLTMAnymaze(MatrixGroup,indexMatrix,MatrixGroupPerc);
 

%                 %% Time Center Outbound
%                 cd('Analyses')
%                 cd('Single-trial')
%                 if isfolder('ResultsTimeCenterInOutbound')
%                     rmdir('ResultsTimeCenterInOutbound', 's');
%                 end
%                 mkdir(sprintf('%s', 'ResultsTimeCenterInOutbound'))
%                 cd ..
%                 cd ..
%                 [ArrayH,ArrayIngoing]=PlotLinearMazeTimeCenterInOutbound_CC(nameSess,sessionLTMI);
%                 ArrayI(:,i)=ArrayH;
%                 ArrayAll(:,i)=ArrayIngoing;
%                 
        %% TimeinH
        % cd('Analyses')
        % cd('LTM')
        % file=xlsread([strcat('TimeAnimalInHzone.xlsx')]);
        % ArrayH(i,1:12)=file(1:12,1);
        
        %     % Time on armOutboundInbound
        %     if i<=22
        %         cd('Analyses')
        %         cd('Single-trial')
        %         if isfolder('ResultsWithArm')
        %             rmdir('ResultsWithArm', 's');
        %         end
        %         mkdir(sprintf('%s', 'ResultsWithArm'))
        %         cd ..
        %         cd ..
        %         [ArrayH,ArrayIngoing,ArrayArmO,ArrayArmI]=PlotLinearMazeTime_CC(nameSess,sessionLTMI);
        %     end
        %
        %     %Group
        %     if i<=22
        %         cd('Analyses')
        %         cd('Single-trial')
        %         cd('ResultsWithArm')
        %         fileName=strcat('TimeOnArmOutboundTrials.xlsx');
        %         %Time
        %         file10secBefore=xlsread([fileName]);
        %         ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),ii)=file10secBefore(:,:);
        %         ii=ii+1;
        %     end
        
        
        %% Speed and FR
        %         if i<=20
        %             for iSess=1:size(sessionYmazeI,2)
        %                 Sess=sessionYmazeI(1,iSess);
        %                 arraytoexp=nan(1000,nCells);
        %                 index=1;
        %                 SpkCounts=0;
        %                 for indexTet=1:size(tet2useI,2)
        %                     tet2use=tet2useI(1,indexTet);
        %                     cellcell=cellsI{1,indexTet};
        %                     for indexCell=1:size(cellcell,2)
        %                         cells=cellcell(1,indexCell);
        %                         [arraytoexp,index,SpkCounts]=SpeedCalcAndFR(Sess,tet2use,cells,arraytoexp,index,SpkCounts,nCells);
        %                     end
        %                 end
        %                 cd ('Analyses');
        %                 cd('Ymaze');
        %                 if isfolder('Speed')
        %                     cd('Speed');
        %                 else
        %                     mkdir(sprintf('%s', 'Speed'));
        %                     cd('Speed');
        %                 end
        %                 arraytable=table(arraytoexp);
        %                 nametable=strcat('Sess_',int2str(Sess),'.xlsx');
        %                 if isfile(nametable)==1
        %                     delete(nametable);
        %                 end
        %                 writetable(arraytable,nametable);
        %                 cd ..
        %                 cd ..
        %                 cd ..
        %             end
        %         end
        %         %% Group for different configs %%Repeat for each ConfigSess
        %         if i<=20
        %             cd ('Analyses');
        %             cd('Ymaze');
        %             cd('Speed');
        %             for iSess=1:size(sessionYmazeI,2)
        %                 Sess=sessionYmazeI(1,iSess);
        %                 xlsxName=strcat('Sess_',int2str(Sess),'.xlsx');
        %                 Xlsxfile=readtable([xlsxName]);
        %                 Xlsxfilearray=table2array(Xlsxfile);
        %                 [row col]=size(Xlsxfile);
        %                 if Sess>(nSess1+nSess2+nSess3+nSess4) && Sess<=(nSess1+nSess2+nSess3+nSess4+nSess5)
        %                     if sum(Sess==(IndexNoConflictSess5+nSess1+nSess2+nSess3+nSess4))==1
        %                         ArrayNoConflict(indexNo1C:(indexNo1C+row-1),1:col)=Xlsxfilearray;
        %                         indexNo1C=indexNo1C+row;
        %                     elseif sum(Sess==IndexSessToKeep5+nSess1+nSess2+nSess3+nSess4)==1
        %                         ArrayConflict(index1C:(index1C+row-1),1:col)=Xlsxfilearray;
        %                         index1C=index1C+row;
        %                     else
        %                         disp('error');
        %                         return
        %                     end
        %                 end
        %                 if (nSess1+nSess2+nSess3+nSess4+nSess5)==TotSession
        %                 else
        %                     disp('Error');
        %                 end
        %             end
        %         end
        
        %% ApproachAvoidanceQuant
        %         if i>8 && i<21
        %             [CountArray,cc]=ApproachAvoidanceQuantification(nameSess,sessionYmazeI,CountArray,cc);
        %             cc=cc+1;
        %         end
        %         %%% once done, divide conflict no conflict
        %         if i>8 && i<21
        %             cd('T:\Carlo')
        %             filename1 = strcat('ApproachAvoidanceHighConflict.xlsx');
        %             file = xlsread(filename1);
        %             iii=i-8;
        %             SafeC(iii,1:size(IndexNoConflictSess5,2))=file(iii,IndexNoConflictSess5);
        %             RiskyC(iii,1:size(IndexSessToKeep5,2))=file(iii,IndexSessToKeep5);
        %         end
        
%         %% Speed&FR in the center and speed&FR on the arm
%                 IndexForColCellsSpeedandFR=1;
%                 ArrayForAllAveC=nan(200,size(sessionYmazeI,2)); %%200 to exceed cells*4
%                 if i<21
%                     for indexTet=1:size(tet2useI,2)
%                         tet2use=tet2useI(1,indexTet);
%                         cellcell=cellsI{1,indexTet};
%                         for indexCell=1:size(cellcell,2)
%                             cells=cellcell(1,indexCell);
%                             [ArrayForAllAveC,IndexForColCellsSpeedandFR]=SpeedInTheCenter10sBefore(nameSess,tet2use,cells,sessionYmazeI,ArrayForAllAveC,IndexForColCellsSpeedandFR);
%                             IndexForColCellsSpeedandFR=IndexForColCellsSpeedandFR+4;
%                         end
%                     end
%                     cd('Analyses')
%                     cd('Ymaze')
%                     arraytable=table(ArrayForAllAveC);
%                     nametable=strcat('Speed&FR10secbeforeinCenterandArm.xlsx');
%                     if isfile(nametable)==1
%                         delete(nametable);
%                     end
%                     writetable(arraytable,nametable);
%                 end
        %         %% once done to put them together for noconflict
        %         if i<21
        %             cd('Analyses')
        %             cd('Ymaze')
        %             filename2=strcat('Speed&FR10secbeforeinCenterandArm.xlsx');
        %             Filename=xlsread(filename2);
        %             ArrayNoConflict1(ii:ii+size(Filename,1)-1,1:size(IndexNoConflictSess5,2))=Filename(:,(IndexNoConflictSess5+(nSess1+nSess2+nSess3+nSess4)));
        %             ii=ii+size(Filename,1);
        %         end
        %         %% once done to put them together for conflict
        %         if i<21
        %             cd('Analyses')
        %             cd('Ymaze')
        %             filename2=strcat('Speed&FR10secbeforeinCenterandArm.xlsx');
        %             Filename=xlsread(filename2);
        %             ArrayNoConflict1(ii:ii+size(Filename,1)-1,1:size(IndexSessToKeep2,2))=Filename(:,(IndexSessToKeep2+(nSess1)));
        %             ii=ii+size(Filename,1);
        %         end
        %% Optoexperiments
        %     %time in center and on the arm
        %     if i>22
        %         %OptoTime(ChosenArm,OpenArm,nameSessForOpto,nameSess);
        %         %%%%to group them
        %         [indextogroupseconds,CoordArray]=GroupTimeInCenterAndArm(ChosenArm,OpenArm,indextogroupseconds,CoordArray);
        %         indextogroupseconds=indextogroupseconds+15;
        %     end
        
        %% ApproachAvoidanceQuant4OptoExp
        %         if i>22
        %             [CountArray4optoexp,cc]=ApproachAvoidanceQuantification4OptoExp(nameSess,nameSessForOpto,CountArray4optoexp,cc);
        %             cc=cc+1;
        %         end
        %         %%% once done, divide conflict no conflict
        %         if i>22
        %             %%%%to group them
        %         [indextogroupseconds,CoordArray]=GroupApproachAvoidance4OptoExp(ChosenArm,OpenArm,indextogroupseconds,CoordArray);
        %         indextogroupseconds=indextogroupseconds+15;
        %         end
        %
        
        %     %% Create Matrixes for glm
        %     if i<21
        %         [FRMatrix,CCMatrix,CnoNMatrix,CNMatrix,CS1Matrix,CR1Matrix,CS2Matrix,CR2Matrix,CS3Matrix,CR3Matrix,IndexMatrix,TimeMatrix]=creatematrixforglm3sArm(FRMatrix,CCMatrix,CnoNMatrix,CNMatrix,CS1Matrix,CR1Matrix,CS2Matrix,CR2Matrix,CS3Matrix,CR3Matrix,IndexMatrix,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5,nCells,TimeMatrix);
        %     end
        % %% Pyr vs In
        %     if i<23
        %         IndexRow=1;
        %         for indexTet=1:size(tet2useI,2)
        %             tet2use=tet2useI(1,indexTet);
        %             cellcell=cellsI{1,indexTet};
        %             for indexCell=1:size(cellcell,2)
        %                 cells=cellcell(1,indexCell);
        %                 SR=20000;
        %                 session=1; % done on the 1st session
        %                 [OutputResult,SWandFR] = SpikeCharRN(nameSess, tet2use, cells, SR, session);
        %                 ArrayForChart(indexChart,1:2)=SWandFR;
        %                 indexChart=indexChart+1;
        %                 ArrayForResult(IndexRow,IndexCol)=OutputResult;
        %                 IndexRow=IndexRow+1;
        %             end
        %         end
        %         IndexCol=IndexCol+1;
        %     end
        %     %% Theta1
        %     if i<=20
        %         cd('Analyses')
        %         if isfolder('Theta')
        %             rmdir('Theta', 's');
        %         end
        %         cd ..
        %         [ThetaValueBef,ThetaValueAft]=ThetaEstimation(nameSess,Ch2UseTheta,sessionYmazeI);
        %         ReorgTheta(ThetaValueBef,ThetaValueAft,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %     end
        %     %% Theta Power 10 sec before and after
        %     if i<=20
        %         cd('Analyses')
        %         if isfolder('ThetaHilbert')
        %             rmdir('ThetaHilbert', 's');
        %         end
        %         cd ..
        %         AllInOneTableFR=nan(10000,20);
        %         indexFR=1;
        %         [AllInOneTableFR,indexFR]=ThetaPower10secBeforeEnteringtheArmYMaze(nameSess,Ch2UseTheta,sessionYmazeI,AllInOneTableFR,indexFR);
        %         ThetaPowerReorgYmazesess10secBefore(AllInOneTableFR,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5)
        %     end
        %     %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('ThetaHilbert')
        %             fileName=strcat('ReorgXConflictNoConflictThetaPower10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             file10secBefore(file10secBefore==-999)=nan;
        %             for indexRow=1:size(file10secBefore,1)
        %                 Array=file10secBefore(indexRow,:);
        %                 Array1=Array(1,1:20)./max(max(Array(1,1:20)));
        %                 Array2=Array(1,21:40)./max(max(Array(1,21:40)));
        %                 Array3=Array(1,41:60)./max(max(Array(1,41:60)));
        %                 Array4=Array(1,61:80)./max(max(Array(1,61:80)));
        %                 Array5=Array(1,81:100)./max(max(Array(1,81:100)));
        %                 Array6=Array(1,101:120)./max(max(Array(1,101:120)));
        %                 Array7=Array(1,121:140)./max(max(Array(1,121:140)));
        %                 Array8=Array(1,141:160)./max(max(Array(1,141:160)));
        %                 Array9=Array(1,161:180)./max(max(Array(1,161:180)));
        %                 NormTable(indexRow,1:180)=[Array1,Array2,Array3,Array4,Array5,Array6,Array7,Array8,Array9];
        %             end
        %              MaxTable=max(max(file10secBefore));
        %              NormTable=file10secBefore./MaxTable;
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(NormTable,1)-1),1:180)=NormTable(:,:);
        %             ccTIMEArm=ccTIMEArm+size(NormTable,1);
        %         end
%         %% Speed 10 sec before and after
%             if i<=20
%                 cd('Analyses')
%                 if isfolder('Speed10SecBefore')
%                     rmdir('Speed10SecBefore', 's');
%                 end
%                 cd ..
%                 AllInOneTableFR=nan(10000,20);
%                 indexFR=1;
%                 [AllInOneTableFR,indexFR]=Speed10secBeforeEnteringtheArmYMaze(nameSess,sessionYmazeI,AllInOneTableFR,indexFR);
%                 SpeedReorgYmazesess10secBefore(AllInOneTableFR,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5)
%             end
        %     %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Speed10SecBefore')
        %             fileName=strcat('ReorgXConflictNoConflictSpeed10SecBefore10secBefore.xlsx');
        %             %Time
        %             file10secBefore=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(file10secBefore,1)-1),1:180)=file10secBefore(:,:);
        %             ccTIMEArm=ccTIMEArm+size(file10secBefore,1);
        %         end
        %         %% speed and firing rate 20s before end
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             if isfolder('Speed&FR20SecBeforeEnd')
        %                 rmdir('Speed&FR20SecBeforeEnd', 's');
        %             end
        %             cd ..
        %             cd ..
        %             AllInOneTableSpeed=nan(10000,20);
        %             ZscoredVal=nan(10000,20);
        %             indexFR=1;
        %             for indexTet=1:size(tet2useI,2)
        %                 tet2use=tet2useI(1,indexTet);
        %                 cellcell=cellsI{1,indexTet};
        %                 for indexCell=1:size(cellcell,2)
        %                     cells=cellcell(1,indexCell);
        %                     [ZscoredVal,AllInOneTableSpeed,indexFR]=SpeedAndFR20SecBeforeEnd(sessionYmazeI,tet2use,cells,ZscoredVal,AllInOneTableSpeed,indexFR);
        %                 end
        %             end
        %             ReorgYmazeSessSpeedAndFR20SecBeforeEnd(ZscoredVal,AllInOneTableSpeed,nCells,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5);
        %         end
        %         %% To group
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('Speed&FR20SecBeforeEnd')
        %             fileName=strcat('ReorgXConflictNoCoflictAllCellsZscoredFR20secBeforeEnd.xlsx');
        %             fileName2=strcat('ReorgXConflictNoCoflictSpeed20secBeforeEnd.xlsx');
        %             %Time
        %             FR20secBeforeEnd=xlsread([fileName]);
        %             Speed20secBeforeEnd=xlsread([fileName2]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(FR20secBeforeEnd,1)-1),1:180)=FR20secBeforeEnd(:,:);
        %             ccTIMEArm=ccTIMEArm+size(FR20secBeforeEnd,1);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexNoConflictSess1,2)-1),1:20)=Speed20secBeforeEnd(1:size(IndexNoConflictSess1,2),1:20);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexNoConflictSess2,2)-1),21:40)=Speed20secBeforeEnd(1:size(IndexNoConflictSess2,2),21:40);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexSessToKeep2,2)-1),41:60)=Speed20secBeforeEnd(1:size(IndexSessToKeep2,2),41:60);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexNoConflictSess3,2)-1),61:80)=Speed20secBeforeEnd(1:size(IndexNoConflictSess3,2),61:80);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexSessToKeep3,2)-1),81:100)=Speed20secBeforeEnd(1:size(IndexSessToKeep3,2),81:100);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexNoConflictSess4,2)-1),101:120)=Speed20secBeforeEnd(1:size(IndexNoConflictSess4,2),101:120);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexSessToKeep4,2)-1),121:140)=Speed20secBeforeEnd(1:size(IndexSessToKeep4,2),121:140);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexNoConflictSess5,2)-1),141:160)=Speed20secBeforeEnd(1:size(IndexNoConflictSess5,2),141:160);
        %             SpeedMatrix(IndexSpeed:(IndexSpeed+size(IndexSessToKeep5,2)-1),161:180)=Speed20secBeforeEnd(1:size(IndexSessToKeep5,2),161:180);
        %             MaxSessArray=[size(IndexNoConflictSess1,2),size(IndexNoConflictSess2,2),size(IndexSessToKeep2,2),size(IndexNoConflictSess3,2),size(IndexSessToKeep3,2),size(IndexNoConflictSess4,2),size(IndexSessToKeep4,2),size(IndexNoConflictSess5,2),size(IndexSessToKeep5,2)];
        %             IndexSpeed=IndexSpeed+max(MaxSessArray);
        %         end
        %         %% SWR Filter
        %         if i<=20
        %             SWRFilterAllSessions(nameSess);
        %         end
        %% SWRs Power 10 sec before and after
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             if isfolder('SWRHilbert')
        %                 rmdir('SWRHilbert', 's');
        %             end
        %             cd ..
        %             cd ..
        %             AllInOneTableFR=nan(10000,20);
        %             indexFR=1;
        %             [AllInOneTableFR,indexFR]=SWRPower10secBeforeEnteringtheArmYMaze(nameSess,Ch2UseRipples,sessionYmazeI,AllInOneTableFR,indexFR);
        %             SWRPowerReorgYmazesess10secBefore(AllInOneTableFR,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5)
        %         end
        %         %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd ('SWRHilbert')
        %             fileName=strcat('ReorgXConflictNoConflictSWRPower10secBefore.xlsx');
        %             %Time
        %             SWR20secBeforeEnd=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(SWR20secBeforeEnd,1)-1),1:180)=SWR20secBeforeEnd(:,:);
        %             ccTIMEArm=ccTIMEArm+size(SWR20secBeforeEnd,1);
        %         end
        
        %         %% SWRs Power 10 sec before and after Only selected events
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             if isfolder('SWRHilbert3STD')
        %                 rmdir('SWRHilbert3STD', 's');
        %             end
        %             cd ..
        %             cd ..
        %             AllInOneTableFR=nan(10000,20);
        %             indexFR=1;
        %             [AllInOneTableFR,indexFR]=SelectedSWRPower10secBeforeEnteringtheArmYMaze(nameSess,Ch2UseRipples,sessionYmazeI,AllInOneTableFR,indexFR);
        %             SelectedSWRPowerReorgYmazesess10secBefore(AllInOneTableFR,nSess1,nSess2,nSess3,nSess4,nSess5,TotSession,IndexNoConflictSess1,IndexNoConflictSess2,IndexSessToKeep2,IndexNoConflictSess3,IndexSessToKeep3,IndexNoConflictSess4,IndexSessToKeep4,IndexNoConflictSess5,IndexSessToKeep5)
        %         end
        %         %% Group exp
        %         if i<=20
        %             cd('Analyses')
        %             cd('Ymaze')
        %             cd('SWRHilbert3STD')
        %             fileName=strcat('ReorgXConflictNoConflictSWRPower10secBefore.xlsx');
        %             %Time
        %             SWR20secBeforeEnd=xlsread([fileName]);
        %             ArrayTIMEArm(ccTIMEArm:(ccTIMEArm+size(SWR20secBeforeEnd,1)-1),1:180)=SWR20secBeforeEnd(:,:);
        %             ccTIMEArm=ccTIMEArm+size(SWR20secBeforeEnd,1);
        %         end
%             %% GLM grouping sign
%             [AllInOneArraySArm,AllInOneArrayRArm,AllInOneArraySCenter,AllInOneArrayRCenter,IndexAllInOneSArm,IndexAllInOneRArm,IndexAllInOneSCenter,IndexAllInOneRCenter]=GLMGroupingCells(nCells,IndexNoConflictSess3,IndexNoConflictSess4,IndexNoConflictSess5,IndexSessToKeep3,IndexSessToKeep4,IndexSessToKeep5,SCellsArm,RCellsArm,SCellsCenter,RCellsCenter,AllInOneArraySArm,AllInOneArrayRArm,AllInOneArraySCenter,AllInOneArrayRCenter,IndexAllInOneSArm,IndexAllInOneRArm,IndexAllInOneSCenter,IndexAllInOneRCenter);           
%             %% time in hesitatione zone
%             [MatrixH,indexH,MatrixHTimePerc]=TimeSpentInH(nameSess,nCells,MatrixH,indexH,MatrixHTimePerc);

%         %% Data for Camille
%         FindPosEverysecAndFR(nameSess,sessionLTMI,nCells,tet2useI,cellsI);
%         FindPosEverysecAndFRin200ms(nameSess,sessionLTMI,nCells,tet2useI,cellsI);
%         FR5secBeforeSingleTrialLTM(nameSess,nCells);
%         FR10secBeforeSingleTrialLTM(nameSess,nCells);
%         %% Find pos in opto experiment
%         FindPosEverysecForOptoExp(nameSess,sessionLTMI,nCells);
        %New Data
%         GroupForCamilleBinSpeedFR(nameSess,nCells);
%         GroupForCamilleBinSpeedFR200ms(nameSess,nCells);
%         GroupForCamilleBinPositionSpeedFR(nameSess,nCells);

        %% Speed
%         FindSpeedEverysecAndFR(nameSess,sessionLTMI,nCells,tet2useI,cellsI);

        %%SpeedPerCompt
%         [MatrixSpeed,IndexSpeed]=SpeedPerCompt(nameSess,nCells,MatrixSpeed,IndexSpeed);

        %% GLM Thomas for speed
%         OrganiseTableGLM(nameSess,nCells);
%         [AmountOfCells]=GLMSpeedCorrectedValues(nameSess,nCells,AmountOfCells);
        [AmountOfCells,MatrixR]=GLMSpeedCorrectedValuesR2(nameSess,nCells,AmountOfCells,MatrixR);
%         [MatrixFR4Prism,indexMatrixClosed]=GroupCellsForPrism(nameSess,indexMatrixClosed,nCells,MatrixFR4Prism);

        %% Pyr vs In
%         FindPyrCells(nameSess,nCells,charTypeofcell);
%         [matrixIn,rowMatrixIn,matrixPyr,rowMatrixPyr]=PlotPyrIn(nameSess,nCells,charTypeofcell,matrixIn,rowMatrixIn,matrixPyr,rowMatrixPyr);

        %% Anxiety Cells
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVHCSub(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVHCSubToPlotHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVHCSubPerSess(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsAllLv(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsSignBetweenMCHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsSignBetweenLCHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsAcrossLVHCSubPerSess(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsAcrossLVCCHCSubPerSess(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsSignBetweenCCHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVMCSubHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVLCSubHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVLCMCSubHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVCCSubHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsLVCCLCMCSubHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVCCLC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVCCLCDesc(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVLCMC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVLCMCDesc(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVMCHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVMCHCDesc(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVLCHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVCCHC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVNovCC(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLC,iCellCC,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew]=FindScalingCellsLVLCNov(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt,AmountOnCellsKeptNew);


        %% Descendent
%         [AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt]=FindOnCellsAllLvDesc(nameSess,nCells,AmountOnCells,AmountOnCellsKeptLv2,AmountOnCellsKeptLv3,AmountOnCellsKeptLv4,iCell,iCellLv2,iCellLv3,iCellLv4,MatrixOpen,AmountOffCells,AmountOffCellsKeptLv2,AmountOffCellsKeptLv3,AmountOffCellsKeptLv4,iCellOff,iCellOffLv2,iCellOffLv3,iCellOffLv4,MatrixOff,AmountAntCells,AmountAntCellsKeptLv2,AmountAntCellsKeptLv3,AmountAntCellsKeptLv4,iCellAnt,iCellAntLv2,iCellAntLv3,iCellAntLv4,MatrixAnt);

        %%SpearmanTest
%         [MatrixOpen,MatrixClosed,MatrixCenter,indexIn,indexInC,indexInCen]=groupforspearman(nameSess,MatrixOpen,MatrixClosed,MatrixCenter,indexIn,indexInC,indexInCen,nCells);
        %%history
%        [MatrixFR,indexMatrix]=ToPlotTimeSpeedBinZscoreFirstTrials(nameSess,nCells,MatrixFR,indexMatrix,i);
%        [MatrixFR,indexMatrix]=ToPlotTimeSpeedBinZscoreSecondTrials(nameSess,nCells,MatrixFR,indexMatrix,i);
%        [MatrixFR,indexMatrix]=ToPlotTimeSpeedBinZscoreThirdTrials(nameSess,nCells,MatrixFR,indexMatrix,i);
%        [MatrixFR,indexMatrix]=ToPlotTimeSpeedBinZscoreFourthTrials(nameSess,nCells,MatrixFR,indexMatrix,i);
    
        %%FigScalingPaperLTM
%         [MatrixFR,indexMatrix]=PlotScalingFigPaperScaling(nameSess,nCells,MatrixFR,indexMatrix);

        %%Time spent per compt
%         [MatrixTime,indexMatrixTime,MatrixTimePerc]=TimeSpentPerComp(nameSess,nCells,MatrixTime,indexMatrixTime,MatrixTimePerc);

        %% Single trials
%         [MatrixSingleTrials,indexMatrix]=NumberOfTrials(nameSess,nCells,MatrixSingleTrials,indexMatrix);
        %% Outbound time
%         [MatrixAllTogether,IndexAllTogether]=TimeOutboundPerCompSingleTrialLTM(nameSess,nCells,MatrixAllTogether,IndexAllTogether,basenamefolder);
        %%SpeedInOutboundTrials
%         SpeedOutboundSingleTrialLTM(nameSess,nCells,basenamefolder);
        %%ToGroupSpeed
%         [MatrixSpeedTogetherLv1A,IndexMatrixLv1A,MatrixSpeedTogetherNovA,IndexMatrixNovA,MatrixSpeedTogetherFirstA,IndexMatrixFirstA,MatrixSpeedTogetherLv2A,IndexMatrixLv2A,MatrixSpeedTogetherLv3A,IndexMatrixLv3A,MatrixSpeedTogetherLv4A,IndexMatrixLv4A,MatrixSpeedTogetherLv4D,IndexMatrixLv4D,MatrixSpeedTogetherLv3D,IndexMatrixLv3D,MatrixSpeedTogetherLv2D,IndexMatrixLv2D,MatrixSpeedTogetherLv1D,IndexMatrixLv1D,MatrixSpeedTogetherFirstD,IndexMatrixFirstD,MatrixSpeedTogetherNovD,IndexMatrixNovD]=GroupSpeedOutbound(nameSess,MatrixSpeedTogetherLv1A,IndexMatrixLv1A,MatrixSpeedTogetherNovA,IndexMatrixNovA,MatrixSpeedTogetherFirstA,IndexMatrixFirstA,MatrixSpeedTogetherLv2A,IndexMatrixLv2A,MatrixSpeedTogetherLv3A,IndexMatrixLv3A,MatrixSpeedTogetherLv4A,IndexMatrixLv4A,MatrixSpeedTogetherLv4D,IndexMatrixLv4D,MatrixSpeedTogetherLv3D,IndexMatrixLv3D,MatrixSpeedTogetherLv2D,IndexMatrixLv2D,MatrixSpeedTogetherLv1D,IndexMatrixLv1D,MatrixSpeedTogetherFirstD,IndexMatrixFirstD,MatrixSpeedTogetherNovD,IndexMatrixNovD);
        %%To group AllExp Fr per bin
%         [MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=ToGroupAllInDifferentGroupsAndPlotPopulationPerBin(nameSess,nCells,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
%         [MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=ToGroupAllInDifferentGroupsAndPlotPopulationPerBinDesc(nameSess,nCells,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %%To group all RateRemappingCells
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AllCellsByRateRemapping(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AllCellsByRateRemappingDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %%to group all cells newly recruited
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AllCellsRecruited(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AllCellsRecruitedDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %% To create the bar for novelty
%         [MatrixCC,IndexCC]=ToGroupAllRemappingCellsinNov(nameSess,nCells,MatrixCC,IndexCC);

        %%Representative Cells
%         [MatrixFR,indexFR]=FindReprCell(nameSess,nCells,MatrixFR,indexFR);
%         [MatrixFR,indexFR]=FindReprCellDesc(nameSess,nCells,MatrixFR,indexFR);
        %%ActivatedCellsPerConfig
%         FindActCellinLC(nameSess,nCells);
%         FindActCellinMC(nameSess,nCells);
%         FindActCellinHC(nameSess,nCells);
%         FindActCellinLCDesc(nameSess,nCells);
%         FindActCellinMCDesc(nameSess,nCells);
%         FindActCellinHCDesc(nameSess,nCells);

        %%2Mechanisms for HC
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToCC(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToLC(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToMC(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToHC(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToCCDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToLCDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToMCDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismToHCDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);

        %% Firing fields size
%         [MatrixFF,indexFF]=SizeOfFiringFields(nameSess,nCells,MatrixFF,indexFF);

        %Delete Nan in speed
%         DeleteNanSpeed(nameSess);
        %% To group GLM results
%         [MatrixFR,indexMatrixClosed,indexMatrixCenter,indexMatrixOpen,ii]=CalculateClosedCenterOpenGLMCorrectedFR(nameSess,nCells,MatrixFR,indexMatrixClosed,indexMatrixCenter,indexMatrixOpen,ii); %%External for loop
%         [MatrixFR,indexMatrix]=ToPlotTimeSpeedBinZscoreResidualsGLM(nameSess,nCells,MatrixFR,indexMatrix);

        %% To find cells divided by mechanisms
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanism(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
%         [HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4]=CellsByMechanismDesc(nameSess,nCells,HigherFRLv1,HigherFRLv2,HigherFRLv3,HigherFRLv4,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapLv2,RateRemapLv3,RateRemapLv4);
        %%AnxietyOnCellSelection
%         [AnxOnCellsLabels,RowIndex,MatrixClosedNA,MatrixCenterNA,MatrixOpenNA,MatrixClosedLA,MatrixCenterLA,MatrixOpenLA,MatrixClosedMA,MatrixCenterMA,MatrixOpenMA,MatrixClosedHA,MatrixCenterHA,MatrixOpenHA,CellNumber]=SelectAnxietyOnCells(AnxOnCellsLabels,RowIndex,nameSess,nCells,CellNumber,MatrixClosedNA,MatrixCenterNA,MatrixOpenNA,MatrixClosedLA,MatrixCenterLA,MatrixOpenLA,MatrixClosedMA,MatrixCenterMA,MatrixOpenMA,MatrixClosedHA,MatrixCenterHA,MatrixOpenHA);
        % only OutboundAndInbound
%         FROutboundandInboundSingleTrialLTM(nameSess,nCells);
        %GroupAllOfThem
%         [MatrixNAIngoing,MatrixNAOutgoing,CellNumberNAOut,CellNumberNAIn,MatrixLAIngoing,MatrixLAOutgoing,CellNumberLAOut,CellNumberLAIn,MatrixMAIngoing,MatrixMAOutgoing,CellNumberMAOut,CellNumberMAIn,MatrixHAIngoing,MatrixHAOutgoing,CellNumberHAOut,CellNumberHAIn]=GroupAllExps(nameSess,MatrixNAIngoing,MatrixNAOutgoing,CellNumberNAOut,CellNumberNAIn,MatrixLAIngoing,MatrixLAOutgoing,CellNumberLAOut,CellNumberLAIn,MatrixMAIngoing,MatrixMAOutgoing,CellNumberMAOut,CellNumberMAIn,MatrixHAIngoing,MatrixHAOutgoing,CellNumberHAOut,CellNumberHAIn);
%         [NAMatrix,NumbCells,LAMatrix,MAMatrix,HAMatrix,indexRowNA,indexRowLA,indexRowMA,indexRowHA]=OutboundFromHugosScript(NAMatrix,NumbCells,basenamefolder,LAMatrix,MAMatrix,HAMatrix,nameSess,sessionLTMI,nCells,indexRowNA,indexRowLA,indexRowMA,indexRowHA);
%         [NAMatrix,NumbCells,LAMatrix,MAMatrix,HAMatrix,indexRowNA,indexRowLA,indexRowMA,indexRowHA]=OutboundFromHugoBinned(NAMatrix,NumbCells,basenamefolder,LAMatrix,MAMatrix,HAMatrix,nameSess,sessionLTMI,nCells,indexRowNA,indexRowLA,indexRowMA,indexRowHA);
%         [NAMatrix,NumbCells,LAMatrix,MAMatrix,HAMatrix,indexRowNA,indexRowLA,indexRowMA,indexRowHA]=InboundFromHugosScript(NAMatrix,NumbCells,basenamefolder,LAMatrix,MAMatrix,HAMatrix,nameSess,sessionLTMI,nCells,indexRowNA,indexRowLA,indexRowMA,indexRowHA);
%         [NAMatrix,NumbCells,LAMatrix,MAMatrix,HAMatrix,indexRowNA,indexRowLA,indexRowMA,indexRowHA]=InboundFromHugoBinned(NAMatrix,NumbCells,basenamefolder,LAMatrix,MAMatrix,HAMatrix,nameSess,sessionLTMI,nCells,indexRowNA,indexRowLA,indexRowMA,indexRowHA);
%         [NAMatrix,NumbCells,LAMatrix,MAMatrix,HAMatrix,indexRowNA,indexRowLA,indexRowMA,indexRowHA]=OutboundFromHugoBinnedEntireMaze(NAMatrix,NumbCells,basenamefolder,LAMatrix,MAMatrix,HAMatrix,nameSess,sessionLTMI,nCells,indexRowNA,indexRowLA,indexRowMA,indexRowHA);
%         [NAMatrix,NumbCells,LAMatrix,MAMatrix,HAMatrix,indexRowNA,indexRowLA,indexRowMA,indexRowHA]=InboundFromHugoBinnedEntireMaze(NAMatrix,NumbCells,basenamefolder,LAMatrix,MAMatrix,HAMatrix,nameSess,sessionLTMI,nCells,indexRowNA,indexRowLA,indexRowMA,indexRowHA);
        %QuantAnxietzOnCells
%         [AnxOnSessNA,AnxOnSessLA,AnxOnSessMA,AnxOnSessHA]=SimplyNumberOfAnxietyOnCells(nameSess,nCells,AnxOnSessNA,AnxOnSessLA,AnxOnSessMA,AnxOnSessHA);
        
        %Convert CSV in xlsx for behaviour only experimets
        %%OnlyBehaviourExp
%         ConvertCSVinXlsxOnlyBehaviour(nameSess);
        %%Time in closed center oopen
%         QuantifyTimeInClosedAndOpenableOnlyBehaviour(sessionLTMI,nameSess);
%         % Number of trials only behaviour
%         NumberOfTrialsOnlyBehaviour(nameSess,sessionLTMI);
%         %Convert CSV in XLSX in OnlyOptorec
%         ConvertCSVinXlsxOnlyOptoManipulationBehav(nameSess);
        %Amount of time opto exp only
%         QuantifyTimeInClosedAndOpenableOnlyOptoBehav(sessionLTMI,nameSess)
        %number of trials OptoExp
%         NumberOfTrialsOnlyOpto(nameSess,sessionLTMI);
%         [MatrixNA,indexNA,MatrixVLA,indexVLA,MatrixLA,indexLA,MatrixMA,indexMA,MatrixHA,indexHA,MatrixNAdesc,indexNAdesc,MatrixVLAdesc,indexVLAdesc,MatrixLAdesc,indexLAdesc,MatrixMAdesc,indexMAdesc,MatrixHAdesc,indexHAdesc]=OrganizeCellsPerSessions(nameSess,nCells,MatrixNA,indexNA,MatrixVLA,indexVLA,MatrixLA,indexLA,MatrixMA,indexMA,MatrixHA,indexHA,MatrixNAdesc,indexNAdesc,MatrixVLAdesc,indexVLAdesc,MatrixLAdesc,indexLAdesc,MatrixMAdesc,indexMAdesc,MatrixHAdesc,indexHAdesc);
%         %RateRemappingMech
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=RateRemappingMechanism(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %Recruitment
%        [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=CellsRecruited(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %Desc
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=CellsRecruitedDesc(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %tot
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,MatrixVLCClosed,MatrixLCClosed,MatrixMCClosed,MatrixHCClosed,MatrixCC,MatrixVLC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexVLC,IndexLC,IndexMC,IndexHC]=CellsRecruitedTot(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,MatrixVLCClosed,MatrixLCClosed,MatrixMCClosed,MatrixHCClosed,MatrixCC,MatrixVLC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexVLC,IndexLC,IndexMC,IndexHC);
        %Binned
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,MatrixVLCClosed,MatrixLCClosed,MatrixMCClosed,MatrixHCClosed,MatrixCC,MatrixVLC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexVLC,IndexLC,IndexMC,IndexHC,MatrixVLCTot,MatrixLCTot,MatrixMCTot,MatrixHCTot,MatrixVLCTotLC,MatrixVLCTotMC,MatrixVLCTotHC,MatrixLCTotVLC,MatrixLCTotMC,MatrixLCTotHC,MatrixMCTotVLC,MatrixMCTotLC,MatrixMCTotHC,MatrixHCTotVLC,MatrixHCTotLC,MatrixHCTotMC,MatrixVLCTotNC,MatrixLCTotNC,MatrixMCTotNC,MatrixHCTotNC]=CellsRecruitedTotBinned(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,MatrixVLCClosed,MatrixLCClosed,MatrixMCClosed,MatrixHCClosed,MatrixCC,MatrixVLC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexVLC,IndexLC,IndexMC,IndexHC,MatrixVLCTot,MatrixLCTot,MatrixMCTot,MatrixHCTot,MatrixVLCTotLC,MatrixVLCTotMC,MatrixVLCTotHC,MatrixLCTotVLC,MatrixLCTotMC,MatrixLCTotHC,MatrixMCTotVLC,MatrixMCTotLC,MatrixMCTotHC,MatrixHCTotVLC,MatrixHCTotLC,MatrixHCTotMC,MatrixVLCTotNC,MatrixLCTotNC,MatrixMCTotNC,MatrixHCTotNC);
        %AnxietyOnCells
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AnxietyOnCells(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AnxietyOnCellsTot(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %Amxiety on cells Desc
%         [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AnxietyOnCellsDesc(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC);
        %FiringRateClosedCenterOpen
%         [MatrixFR,IndexFR]=FindFiringRate(nameSess,nCells,MatrixFR,IndexFR);
%         [MatrixFR,IndexFR]=FindFiringRateAscDesc(nameSess,nCells,MatrixFR,IndexFR);
%         [MatrixFR,IndexFR]=FindFiringRateGLMModulatedCells(nameSess,nCells,MatrixFR,IndexFR);
        %Find RR with correlation
%         [numbCells,MatrixToPlot,MatrixToPlotClosed,MatrixNARR,MatrixVLARR,MatrixLARR,MatrixMARR,MatrixHARR]=FindRateRemappingLinear(nameSess,nCells,numbCells,MatrixToPlot,MatrixToPlotClosed,MatrixNARR,MatrixVLARR,MatrixLARR,MatrixMARR,MatrixHARR);
%         [numbCells]=FindRateRemappingLinearTot(nameSess,nCells,numbCells);
        %GLM Speed corrected on heat maps
%         [MatrixFR,indexFR]=MakeBarForAllRateRemappedCellsForSpeed(nameSess,nCells,MatrixFR,indexFR);
        
        %% kilosort
        %     KiloSortWrapperCarlo;
        % mkdir(sprintf('%s', 'Analyses'));
        % cd('Analyses');
        % mkdir(sprintf('%s', 'Single-trial'));
        %% to copy units png
        %     destination='/mnt/groupCiocchi1/Carlo/Units2.0/';
        %     cd('Units')
        %     mypath=cd;
        %     names = dir(mypath);
        %     names([names.isdir]) = [];
        %     fileNames2 = {names.name};
        %     for ii=1:size(fileNames2,2)
        %         filenamepngchar=strcat(nameSess,'_',fileNames2{1,ii});
        %         destinationRen=strcat(destination,filenamepngchar);
        %         Origin=strcat(fileNames2{1,ii});
        %         copyfile(Origin,destinationRen);
        %     end
        %% Kilosort for probe
%         ChanMapName='64Poly5_2SHANKSX.mat';
%         ConfigFileName='configFile.m';
%         basename='CC68-0124-0105';
%         master_kilosortWindowsCarloWrapper(basename,ChanMapName,ConfigFileName);        

        %% end of all scripts
        disp(strcat('Session:',nameSess,' successfully done'));
%     end %when there is if at the beginning
    i=i+1;
    %close all
    clearvars -except MasterXlsx i AmountOfCells MatrixR MatrixVLCTotNC MatrixLCTotNC MatrixMCTotNC MatrixHCTotNC MatrixNARR MatrixVLARR MatrixLARR MatrixMARR MatrixHARR MatrixVLCTotLC MatrixVLCTotMC MatrixVLCTotHC MatrixLCTotVLC MatrixLCTotMC MatrixLCTotHC MatrixMCTotVLC MatrixMCTotLC MatrixMCTotHC MatrixHCTotVLC MatrixHCTotLC MatrixHCTotMC MatrixVLCTot MatrixLCTot MatrixMCTot MatrixHCTot MatrixToPlotClosed MatrixVLCClosed MatrixLCClosed MatrixMCClosed MatrixHCClosed HigherFRVLC HigherFRLC HigherFRMC HigherFRNC HigherFRHC RateRemapNC RateRemapVLC RateRemapLC RateRemapMC RateRemapHC MatrixCC MatrixVLC MatrixLC MatrixMC MatrixHC IndexCC IndexVLC IndexLC IndexMC IndexHC MatrixToPlot numbCells MatrixFR indexFR IndexFR HigherFRVLC HigherFRLC HigherFRMC HigherFRNC HigherFRHC NewCellLv2 NewCellLv3 NewCellLv4 OverlapCellLv2 OverlapCellLv3 OverlapCellLv4 RateRemapNC RateRemapVLC RateRemapLC RateRemapMC RateRemapHC MatrixCC MatrixVLC MatrixLC MatrixMC MatrixHC IndexCC IndexVLC IndexLC IndexMC IndexHC %nameSess nCells AnxOnSessNA AnxOnSessLA AnxOnSessMA AnxOnSessHA %NAMatrix NumbCells LAMatrix MAMatrix HAMatrix indexRowNA indexRowLA indexRowMA indexRowHA AnxOnCellsLabels RowIndex MatrixNAIngoing MatrixNAOutgoing CellNumberNAOut CellNumberNAIn MatrixLAIngoing MatrixLAOutgoing CellNumberLAOut CellNumberLAIn MatrixMAIngoing MatrixMAOutgoing CellNumberMAOut CellNumberMAIn MatrixHAIngoing MatrixHAOutgoing CellNumberHAOut CellNumberHAIn MatrixClosedNA MatrixCenterNA MatrixOpenNA MatrixClosedLA MatrixCenterLA MatrixOpenLA MatrixClosedMA MatrixCenterMA MatrixOpenMA MatrixClosedHA MatrixCenterHA MatrixOpenHA CellNumber %MatrixH indexH MatrixHTimePerc MatrixCC MatrixLC MatrixMC MatrixHC IndexCC IndexLC IndexMC IndexHC HigherFRLv1 HigherFRLv2 HigherFRLv3 HigherFRLv4 NewCellLv2 NewCellLv3 NewCellLv4 OverlapCellLv2 OverlapCellLv3 OverlapCellLv4 RateRemapLv2 RateRemapLv3 RateRemapLv4 MatrixAllTogether IndexAllTogether MatrixSpeedTogetherLv1A IndexMatrixLv1A MatrixSpeedTogetherNovA IndexMatrixNovA MatrixSpeedTogetherFirstA IndexMatrixFirstA MatrixSpeedTogetherLv2A IndexMatrixLv2A MatrixSpeedTogetherLv3A IndexMatrixLv3A MatrixSpeedTogetherLv4A IndexMatrixLv4A MatrixSpeedTogetherLv4D IndexMatrixLv4D MatrixSpeedTogetherLv3D IndexMatrixLv3D MatrixSpeedTogetherLv2D IndexMatrixLv2D MatrixSpeedTogetherLv1D IndexMatrixLv1D MatrixSpeedTogetherFirstD IndexMatrixFirstD MatrixSpeedTogetherNovD IndexMatrixNovD MatrixSpeed IndexSpeed MatrixFF indexFF MatrixFR indexFR MatrixSingleTrials indexMatrix MatrixTime indexMatrixTime MatrixTimePerc MatrixFR indexMatrix MatrixOpen MatrixClosed MatrixCenter indexIn indexInC indexInCen matrixIn rowMatrixIn matrixPyr rowMatrixPyr AmountOnCells AmountOffCells AmountAntCells AmountOnCellsKeptLv2 AmountOnCellsKeptLv3 AmountOnCellsKeptLv4 AmountOnCellsKeptNew iCell iCellLv2 iCellLv3 iCellLv4 MatrixOpen MatrixGroup indexMatrix MatrixGroupPerc indexMatrixClosed MatrixFR4Prism AmountOfCells MatrixFR indexMatrix indexMatrixClosed indexMatrixCenter indexMatrixOpen ii AmountOffCells AmountOffCellsKeptLv2 AmountOffCellsKeptLv3 AmountOffCellsKeptLv4 iCellOff iCellOffLv2 iCellOffLv3 iCellOffLv4 MatrixOff AmountAntCells AmountAntCellsKeptLv2 AmountAntCellsKeptLv3 AmountAntCellsKeptLv4 iCellAnt iCellAntLv2 iCellAntLv3 iCellAntLv4 MatrixAnt ArrayH IndexArrayH%ArrayH IndexArrayH AllInOneArraySArm AllInOneArrayRArm AllInOneArraySCenter AllInOneArrayRCenter IndexAllInOneSArm IndexAllInOneRArm IndexAllInOneSCenter IndexAllInOneRCenter %RiskyI SafeI RiskyII SafeII RiskyIII SafeIII indexRI indexSI indexRII indexSII indexRIII indexSIII %%ArrayI ArrayAll%indexrow MasterCol%concMatrix1 concMatrix2 concMatrix3 concMatrix4 concMatrix5 concMatrix6 concMatrix7 concMatrix8 concMatrix9 concMatrix10 concMatrix11 concMatrix12 index1 index2 index3 index4 index5 index6 index7 index8 index9 index10 index11 index12%inormIndex concMatrixNorm concMatrix %concMatrixIn concMatrixOut inormIndex%concMatrix inormIndex %ArrayToGroup indexGroup %ArrayTIMEArm ccTIMEArm ii %ArrayForChart indexChart IndexCol %SpeedMatrix IndexSpeed%ArrayForResult IndexCol %FRMatrix TimeMatrix CCMatrix CnoNMatrix CNMatrix CS1Matrix CR1Matrix CS2Matrix CR2Matrix CS3Matrix CR3Matrix IndexMatrix
    %indextogroupseconds CoordArray %CountArray4optoexp cc % %ArrayNoConflict1 ii %RiskyC SafeC %CountArray cc %ArrayConflict ArrayNoConflict index1C indexNo1C %ArrayI ArrayAll %ccTIMEArm ArrayTIMEArm ZscoredArrayTrials ShortLongTrialsMatrix matrixinormIndex %ArrayI ArrayTIMEArm ccTIMEArm %ccFRArm ccFRCenter ArrayFRArm ArrayFRCenter%ccCC ccCN ccCnoN ccCO1s ccCO2s ccCO3s ccCO1r ccCO2r ccCO3r ArrayCC ArrayCN ArrayCnoN ArrayCO1R ArrayCO1S ArrayCO2R ArrayCO2S ArrayCO3R ArrayCO3S %ccTIMEArm ccTIMECenter ccFRArm ccFRCenter ArrayTIMEArm ArrayTIMECenter ArrayFRArm ArrayFRCenter%ArrayH ArrayI IndexArrayH %cc Array configindex %cc2 Array2
end

end %% To group GLM results
    
 cd('T:\Carlo')
%  ArrayH=nan(12,30);
%  ArrayH(1:12,1:8)=ArrayI(1:12,1:8)./50;
%  ArrayH(1:12,9:20)=ArrayI(1:12,9:20)./30;
%  ArrayH(1:12,21:22)=ArrayI(1:12,21:22)./50;
%  ArrayTIMEArm(ArrayTIMEArm==-999)=nan;
%  arraytable=table(Matrix);
%  nametable=strcat('FRPerCellPerSessionPerCompt.xlsx');
%  if isfile(nametable)==1
%      delete(nametable);
%  end
%  writetable(arraytable,nametable);

headers = {'Close', 'Sess1Safe', 'Sess1Risky','Sess2Safe', 'Sess2Risky','Sess3Safe', 'Sess3Risky','Sess4Safe', 'Sess4Risky','Sess5Safe', 'Sess5Risky','Sess6Safe', 'Sess6Risky'};
arraytable = array2table(CoordArray, 'VariableNames', headers);

towrite=MatrixFR(:,:);
MatrixCC=MatrixOpenHA(:,1:135);
MatrixCC(isnan(MatrixCC))=-999;

arraytable=table(MatrixHCTotNC);
nametable=strcat('HeatMapHAtotNA.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

arraytable=table(RiskyII(1:indexRII,:));
nametable=strcat('CoherenceThetaRII.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


arraytable=table(RiskyIII(1:indexRIII,:));
nametable=strcat('CoherenceThetaRIII.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


arraytable=table(SafeI(1:indexSI,:));
nametable=strcat('CoherenceThetaSI.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


arraytable=table(SafeII(1:indexSII,:));
nametable=strcat('CoherenceThetaSII.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


arraytable=table(SafeIII(1:indexSIII,:));
nametable=strcat('CoherenceThetaSIII.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


%SafeRisky=[SafeC,RiskyC];
arraytable=table(AllInOneArraySArm);
nametable=strcat('SignSArmCells.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

AllInOneArrayRArm(AllInOneArrayRArm==-999)=nan;
AllInOneArraySArm(AllInOneArraySArm==-999)=nan;
AllInOneArrayRCenter(AllInOneArrayRCenter==-999)=nan;
AllInOneArraySCenter(AllInOneArraySCenter==-999)=nan;



