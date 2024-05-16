function MakeBarForAllPopulation

%% ASC
cd ('H:\carlo\FigPaperLTM\Final figures\Scaling\ThirdFigScalingFR');
%% CC
TableSpeedAndFRCC = readtable(strcat('AllExpPerBinCC.xlsx'),'ReadVariableNames',0);

SpeedAndFRCC=table2array(TableSpeedAndFRCC);
SpeedAndFRCC(SpeedAndFRCC==-999)=nan;
zscoredFRCC = SpeedAndFRCC(:,6:28);
BinCC = SpeedAndFRCC(:,5);

FRCCBin1=mean(reshape(zscoredFRCC(BinCC==1,:),1,[]),'omitnan');
FRCCBin2=mean(reshape(zscoredFRCC(BinCC==2,:),1,[]),'omitnan');
FRCCBin3=mean(reshape(zscoredFRCC(BinCC==3,:),1,[]),'omitnan');
FRCCBin4=mean(reshape(zscoredFRCC(BinCC==4,:),1,[]),'omitnan');
FRCCBin5=mean(reshape(zscoredFRCC(BinCC==5,:),1,[]),'omitnan');
FRCCBin6=mean(reshape(zscoredFRCC(BinCC==6,:),1,[]),'omitnan');
FRCCBin7=mean(reshape(zscoredFRCC(BinCC==7,:),1,[]),'omitnan');
FRCCBin8=mean(reshape(zscoredFRCC(BinCC==8,:),1,[]),'omitnan');
FRCCBin9=mean(reshape(zscoredFRCC(BinCC==9,:),1,[]),'omitnan');
FRCCBin10=mean(reshape(zscoredFRCC(BinCC==10,:),1,[]),'omitnan');
FRCCBin11=mean(reshape(zscoredFRCC(BinCC==11,:),1,[]),'omitnan');
FRCCBin12=mean(reshape(zscoredFRCC(BinCC==12,:),1,[]),'omitnan');
FRCCBin13=mean(reshape(zscoredFRCC(BinCC==13,:),1,[]),'omitnan');
FRCCBin14=mean(reshape(zscoredFRCC(BinCC==14,:),1,[]),'omitnan');
FRCCBin15=mean(reshape(zscoredFRCC(BinCC==15,:),1,[]),'omitnan');
FRCCBin16=mean(reshape(zscoredFRCC(BinCC==16,:),1,[]),'omitnan');
FRCCBin17=mean(reshape(zscoredFRCC(BinCC==17,:),1,[]),'omitnan');
FRCCBin18=mean(reshape(zscoredFRCC(BinCC==18,:),1,[]),'omitnan');
FRCCBin19=mean(reshape(zscoredFRCC(BinCC==19,:),1,[]),'omitnan');
FRCCBin20=mean(reshape(zscoredFRCC(BinCC==20,:),1,[]),'omitnan');
AllFRCC=[FRCCBin1,FRCCBin2,FRCCBin3,FRCCBin4,FRCCBin5,FRCCBin6,FRCCBin7,FRCCBin8,FRCCBin9,FRCCBin10,FRCCBin11,FRCCBin12,FRCCBin13,FRCCBin14,FRCCBin15,FRCCBin16,FRCCBin17,FRCCBin18,FRCCBin19,FRCCBin20];

lin = linspace(1,20,1000);
IntDataCC = interp1(AllFRCC,lin);

%% LC
TableSpeedAndFRLC = readtable(strcat('AllExpPerBinLC.xlsx'),'ReadVariableNames',0);

SpeedAndFRLC=table2array(TableSpeedAndFRLC);
SpeedAndFRLC(SpeedAndFRLC==-999)=nan;
zscoredFRLC = SpeedAndFRLC(:,6:28);
BinLC = SpeedAndFRLC(:,5);

FRLCBin1=mean(reshape(zscoredFRLC(BinLC==1,:),1,[]),'omitnan');
FRLCBin2=mean(reshape(zscoredFRLC(BinLC==2,:),1,[]),'omitnan');
FRLCBin3=mean(reshape(zscoredFRLC(BinLC==3,:),1,[]),'omitnan');
FRLCBin4=mean(reshape(zscoredFRLC(BinLC==4,:),1,[]),'omitnan');
FRLCBin5=mean(reshape(zscoredFRLC(BinLC==5,:),1,[]),'omitnan');
FRLCBin6=mean(reshape(zscoredFRLC(BinLC==6,:),1,[]),'omitnan');
FRLCBin7=mean(reshape(zscoredFRLC(BinLC==7,:),1,[]),'omitnan');
FRLCBin8=mean(reshape(zscoredFRLC(BinLC==8,:),1,[]),'omitnan');
FRLCBin9=mean(reshape(zscoredFRLC(BinLC==9,:),1,[]),'omitnan');
FRLCBin10=mean(reshape(zscoredFRLC(BinLC==10,:),1,[]),'omitnan');
FRLCBin11=mean(reshape(zscoredFRLC(BinLC==11,:),1,[]),'omitnan');
FRLCBin12=mean(reshape(zscoredFRLC(BinLC==12,:),1,[]),'omitnan');
FRLCBin13=mean(reshape(zscoredFRLC(BinLC==13,:),1,[]),'omitnan');
FRLCBin14=mean(reshape(zscoredFRLC(BinLC==14,:),1,[]),'omitnan');
FRLCBin15=mean(reshape(zscoredFRLC(BinLC==15,:),1,[]),'omitnan');
FRLCBin16=mean(reshape(zscoredFRLC(BinLC==16,:),1,[]),'omitnan');
FRLCBin17=mean(reshape(zscoredFRLC(BinLC==17,:),1,[]),'omitnan');
FRLCBin18=mean(reshape(zscoredFRLC(BinLC==18,:),1,[]),'omitnan');
FRLCBin19=mean(reshape(zscoredFRLC(BinLC==19,:),1,[]),'omitnan');
FRLCBin20=mean(reshape(zscoredFRLC(BinLC==20,:),1,[]),'omitnan');
AllFRLC=[FRLCBin1,FRLCBin2,FRLCBin3,FRLCBin4,FRLCBin5,FRLCBin6,FRLCBin7,FRLCBin8,FRLCBin9,FRLCBin10,FRLCBin11,FRLCBin12,FRLCBin13,FRLCBin14,FRLCBin15,FRLCBin16,FRLCBin17,FRLCBin18,FRLCBin19,FRLCBin20];

lin = linspace(1,20,1000);
IntDataLC = interp1(AllFRLC,lin);

%% MC
TableSpeedAndFRMC = readtable(strcat('AllExpPerBinMC.xlsx'),'ReadVariableNames',0);

SpeedAndFRMC=table2array(TableSpeedAndFRMC);
SpeedAndFRMC(SpeedAndFRMC==-999)=nan;
zscoredFRMC = SpeedAndFRMC(:,6:28);
BinMC = SpeedAndFRMC(:,5);

FRMCBin1=mean(reshape(zscoredFRMC(BinMC==1,:),1,[]),'omitnan');
FRMCBin2=mean(reshape(zscoredFRMC(BinMC==2,:),1,[]),'omitnan');
FRMCBin3=mean(reshape(zscoredFRMC(BinMC==3,:),1,[]),'omitnan');
FRMCBin4=mean(reshape(zscoredFRMC(BinMC==4,:),1,[]),'omitnan');
FRMCBin5=mean(reshape(zscoredFRMC(BinMC==5,:),1,[]),'omitnan');
FRMCBin6=mean(reshape(zscoredFRMC(BinMC==6,:),1,[]),'omitnan');
FRMCBin7=mean(reshape(zscoredFRMC(BinMC==7,:),1,[]),'omitnan');
FRMCBin8=mean(reshape(zscoredFRMC(BinMC==8,:),1,[]),'omitnan');
FRMCBin9=mean(reshape(zscoredFRMC(BinMC==9,:),1,[]),'omitnan');
FRMCBin10=mean(reshape(zscoredFRMC(BinMC==10,:),1,[]),'omitnan');
FRMCBin11=mean(reshape(zscoredFRMC(BinMC==11,:),1,[]),'omitnan');
FRMCBin12=mean(reshape(zscoredFRMC(BinMC==12,:),1,[]),'omitnan');
FRMCBin13=mean(reshape(zscoredFRMC(BinMC==13,:),1,[]),'omitnan');
FRMCBin14=mean(reshape(zscoredFRMC(BinMC==14,:),1,[]),'omitnan');
FRMCBin15=mean(reshape(zscoredFRMC(BinMC==15,:),1,[]),'omitnan');
FRMCBin16=mean(reshape(zscoredFRMC(BinMC==16,:),1,[]),'omitnan');
FRMCBin17=mean(reshape(zscoredFRMC(BinMC==17,:),1,[]),'omitnan');
FRMCBin18=mean(reshape(zscoredFRMC(BinMC==18,:),1,[]),'omitnan');
FRMCBin19=mean(reshape(zscoredFRMC(BinMC==19,:),1,[]),'omitnan');
FRMCBin20=mean(reshape(zscoredFRMC(BinMC==20,:),1,[]),'omitnan');
AllFRMC=[FRMCBin1,FRMCBin2,FRMCBin3,FRMCBin4,FRMCBin5,FRMCBin6,FRMCBin7,FRMCBin8,FRMCBin9,FRMCBin10,FRMCBin11,FRMCBin12,FRMCBin13,FRMCBin14,FRMCBin15,FRMCBin16,FRMCBin17,FRMCBin18,FRMCBin19,FRMCBin20];

lin = linspace(1,20,1000);
IntDataMC = interp1(AllFRMC,lin);

%% HC
TableSpeedAndFRHC = readtable(strcat('AllExpPerBinHC.xlsx'),'ReadVariableNames',0);

SpeedAndFRHC=table2array(TableSpeedAndFRHC);
SpeedAndFRHC(SpeedAndFRHC==-999)=nan;
zscoredFRHC = SpeedAndFRHC(:,6:28);
BinHC = SpeedAndFRHC(:,5);

FRHCBin1=mean(reshape(zscoredFRHC(BinHC==1,:),1,[]),'omitnan');
FRHCBin2=mean(reshape(zscoredFRHC(BinHC==2,:),1,[]),'omitnan');
FRHCBin3=mean(reshape(zscoredFRHC(BinHC==3,:),1,[]),'omitnan');
FRHCBin4=mean(reshape(zscoredFRHC(BinHC==4,:),1,[]),'omitnan');
FRHCBin5=mean(reshape(zscoredFRHC(BinHC==5,:),1,[]),'omitnan');
FRHCBin6=mean(reshape(zscoredFRHC(BinHC==6,:),1,[]),'omitnan');
FRHCBin7=mean(reshape(zscoredFRHC(BinHC==7,:),1,[]),'omitnan');
FRHCBin8=mean(reshape(zscoredFRHC(BinHC==8,:),1,[]),'omitnan');
FRHCBin9=mean(reshape(zscoredFRHC(BinHC==9,:),1,[]),'omitnan');
FRHCBin10=mean(reshape(zscoredFRHC(BinHC==10,:),1,[]),'omitnan');
FRHCBin11=mean(reshape(zscoredFRHC(BinHC==11,:),1,[]),'omitnan');
FRHCBin12=mean(reshape(zscoredFRHC(BinHC==12,:),1,[]),'omitnan');
FRHCBin13=mean(reshape(zscoredFRHC(BinHC==13,:),1,[]),'omitnan');
FRHCBin14=mean(reshape(zscoredFRHC(BinHC==14,:),1,[]),'omitnan');
FRHCBin15=mean(reshape(zscoredFRHC(BinHC==15,:),1,[]),'omitnan');
FRHCBin16=mean(reshape(zscoredFRHC(BinHC==16,:),1,[]),'omitnan');
FRHCBin17=mean(reshape(zscoredFRHC(BinHC==17,:),1,[]),'omitnan');
FRHCBin18=mean(reshape(zscoredFRHC(BinHC==18,:),1,[]),'omitnan');
FRHCBin19=mean(reshape(zscoredFRHC(BinHC==19,:),1,[]),'omitnan');
FRHCBin20=mean(reshape(zscoredFRHC(BinHC==20,:),1,[]),'omitnan');
AllFRHC=[FRHCBin1,FRHCBin2,FRHCBin3,FRHCBin4,FRHCBin5,FRHCBin6,FRHCBin7,FRHCBin8,FRHCBin9,FRHCBin10,FRHCBin11,FRHCBin12,FRHCBin13,FRHCBin14,FRHCBin15,FRHCBin16,FRHCBin17,FRHCBin18,FRHCBin19,FRHCBin20];

lin = linspace(1,20,1000);
IntDataHC = interp1(AllFRHC,lin);

%% Figures

figure(1)
imagesc(IntDataCC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsCCAsc.fig');
s4 = strcat('BarAllCellsCCAsc.png');
saveas(gca,s3)
saveas(gca,s4)


figure(2)
imagesc(IntDataLC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsLCAsc.fig');
s4 = strcat('BarAllCellsLCAsc.png');
saveas(gca,s3)
saveas(gca,s4)


figure(3)
imagesc(IntDataMC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsMCAsc.fig');
s4 = strcat('BarAllCellsMCAsc.png');
saveas(gca,s3)
saveas(gca,s4)


figure(4)
imagesc(IntDataHC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsHCAsc.fig');
s4 = strcat('BarAllCellsHCAsc.png');
saveas(gca,s3)
saveas(gca,s4)


%% DESC
cd ('H:\carlo\FigPaperLTM\Final figures\Scaling\ThirdFigScalingFR');
%% CC
TableSpeedAndFRCC = readtable(strcat('AllExpPerBinCCDesc.xlsx'),'ReadVariableNames',0);

SpeedAndFRCC=table2array(TableSpeedAndFRCC);
SpeedAndFRCC(SpeedAndFRCC==-999)=nan;
zscoredFRCC = SpeedAndFRCC(:,6:28);
BinCC = SpeedAndFRCC(:,5);

FRCCBin1=mean(reshape(zscoredFRCC(BinCC==1,:),1,[]),'omitnan');
FRCCBin2=mean(reshape(zscoredFRCC(BinCC==2,:),1,[]),'omitnan');
FRCCBin3=mean(reshape(zscoredFRCC(BinCC==3,:),1,[]),'omitnan');
FRCCBin4=mean(reshape(zscoredFRCC(BinCC==4,:),1,[]),'omitnan');
FRCCBin5=mean(reshape(zscoredFRCC(BinCC==5,:),1,[]),'omitnan');
FRCCBin6=mean(reshape(zscoredFRCC(BinCC==6,:),1,[]),'omitnan');
FRCCBin7=mean(reshape(zscoredFRCC(BinCC==7,:),1,[]),'omitnan');
FRCCBin8=mean(reshape(zscoredFRCC(BinCC==8,:),1,[]),'omitnan');
FRCCBin9=mean(reshape(zscoredFRCC(BinCC==9,:),1,[]),'omitnan');
FRCCBin10=mean(reshape(zscoredFRCC(BinCC==10,:),1,[]),'omitnan');
FRCCBin11=mean(reshape(zscoredFRCC(BinCC==11,:),1,[]),'omitnan');
FRCCBin12=mean(reshape(zscoredFRCC(BinCC==12,:),1,[]),'omitnan');
FRCCBin13=mean(reshape(zscoredFRCC(BinCC==13,:),1,[]),'omitnan');
FRCCBin14=mean(reshape(zscoredFRCC(BinCC==14,:),1,[]),'omitnan');
FRCCBin15=mean(reshape(zscoredFRCC(BinCC==15,:),1,[]),'omitnan');
FRCCBin16=mean(reshape(zscoredFRCC(BinCC==16,:),1,[]),'omitnan');
FRCCBin17=mean(reshape(zscoredFRCC(BinCC==17,:),1,[]),'omitnan');
FRCCBin18=mean(reshape(zscoredFRCC(BinCC==18,:),1,[]),'omitnan');
FRCCBin19=mean(reshape(zscoredFRCC(BinCC==19,:),1,[]),'omitnan');
FRCCBin20=mean(reshape(zscoredFRCC(BinCC==20,:),1,[]),'omitnan');
AllFRCC=[FRCCBin1,FRCCBin2,FRCCBin3,FRCCBin4,FRCCBin5,FRCCBin6,FRCCBin7,FRCCBin8,FRCCBin9,FRCCBin10,FRCCBin11,FRCCBin12,FRCCBin13,FRCCBin14,FRCCBin15,FRCCBin16,FRCCBin17,FRCCBin18,FRCCBin19,FRCCBin20];

lin = linspace(1,20,1000);
IntDataCC = interp1(AllFRCC,lin);

%% LC
TableSpeedAndFRLC = readtable(strcat('AllExpPerBinLCDesc.xlsx'),'ReadVariableNames',0);

SpeedAndFRLC=table2array(TableSpeedAndFRLC);
SpeedAndFRLC(SpeedAndFRLC==-999)=nan;
zscoredFRLC = SpeedAndFRLC(:,6:28);
BinLC = SpeedAndFRLC(:,5);

FRLCBin1=mean(reshape(zscoredFRLC(BinLC==1,:),1,[]),'omitnan');
FRLCBin2=mean(reshape(zscoredFRLC(BinLC==2,:),1,[]),'omitnan');
FRLCBin3=mean(reshape(zscoredFRLC(BinLC==3,:),1,[]),'omitnan');
FRLCBin4=mean(reshape(zscoredFRLC(BinLC==4,:),1,[]),'omitnan');
FRLCBin5=mean(reshape(zscoredFRLC(BinLC==5,:),1,[]),'omitnan');
FRLCBin6=mean(reshape(zscoredFRLC(BinLC==6,:),1,[]),'omitnan');
FRLCBin7=mean(reshape(zscoredFRLC(BinLC==7,:),1,[]),'omitnan');
FRLCBin8=mean(reshape(zscoredFRLC(BinLC==8,:),1,[]),'omitnan');
FRLCBin9=mean(reshape(zscoredFRLC(BinLC==9,:),1,[]),'omitnan');
FRLCBin10=mean(reshape(zscoredFRLC(BinLC==10,:),1,[]),'omitnan');
FRLCBin11=mean(reshape(zscoredFRLC(BinLC==11,:),1,[]),'omitnan');
FRLCBin12=mean(reshape(zscoredFRLC(BinLC==12,:),1,[]),'omitnan');
FRLCBin13=mean(reshape(zscoredFRLC(BinLC==13,:),1,[]),'omitnan');
FRLCBin14=mean(reshape(zscoredFRLC(BinLC==14,:),1,[]),'omitnan');
FRLCBin15=mean(reshape(zscoredFRLC(BinLC==15,:),1,[]),'omitnan');
FRLCBin16=mean(reshape(zscoredFRLC(BinLC==16,:),1,[]),'omitnan');
FRLCBin17=mean(reshape(zscoredFRLC(BinLC==17,:),1,[]),'omitnan');
FRLCBin18=mean(reshape(zscoredFRLC(BinLC==18,:),1,[]),'omitnan');
FRLCBin19=mean(reshape(zscoredFRLC(BinLC==19,:),1,[]),'omitnan');
FRLCBin20=mean(reshape(zscoredFRLC(BinLC==20,:),1,[]),'omitnan');
AllFRLC=[FRLCBin1,FRLCBin2,FRLCBin3,FRLCBin4,FRLCBin5,FRLCBin6,FRLCBin7,FRLCBin8,FRLCBin9,FRLCBin10,FRLCBin11,FRLCBin12,FRLCBin13,FRLCBin14,FRLCBin15,FRLCBin16,FRLCBin17,FRLCBin18,FRLCBin19,FRLCBin20];

lin = linspace(1,20,1000);
IntDataLC = interp1(AllFRLC,lin);

%% MC
TableSpeedAndFRMC = readtable(strcat('AllExpPerBinMCDesc.xlsx'),'ReadVariableNames',0);

SpeedAndFRMC=table2array(TableSpeedAndFRMC);
SpeedAndFRMC(SpeedAndFRMC==-999)=nan;
zscoredFRMC = SpeedAndFRMC(:,6:28);
BinMC = SpeedAndFRMC(:,5);

FRMCBin1=mean(reshape(zscoredFRMC(BinMC==1,:),1,[]),'omitnan');
FRMCBin2=mean(reshape(zscoredFRMC(BinMC==2,:),1,[]),'omitnan');
FRMCBin3=mean(reshape(zscoredFRMC(BinMC==3,:),1,[]),'omitnan');
FRMCBin4=mean(reshape(zscoredFRMC(BinMC==4,:),1,[]),'omitnan');
FRMCBin5=mean(reshape(zscoredFRMC(BinMC==5,:),1,[]),'omitnan');
FRMCBin6=mean(reshape(zscoredFRMC(BinMC==6,:),1,[]),'omitnan');
FRMCBin7=mean(reshape(zscoredFRMC(BinMC==7,:),1,[]),'omitnan');
FRMCBin8=mean(reshape(zscoredFRMC(BinMC==8,:),1,[]),'omitnan');
FRMCBin9=mean(reshape(zscoredFRMC(BinMC==9,:),1,[]),'omitnan');
FRMCBin10=mean(reshape(zscoredFRMC(BinMC==10,:),1,[]),'omitnan');
FRMCBin11=mean(reshape(zscoredFRMC(BinMC==11,:),1,[]),'omitnan');
FRMCBin12=mean(reshape(zscoredFRMC(BinMC==12,:),1,[]),'omitnan');
FRMCBin13=mean(reshape(zscoredFRMC(BinMC==13,:),1,[]),'omitnan');
FRMCBin14=mean(reshape(zscoredFRMC(BinMC==14,:),1,[]),'omitnan');
FRMCBin15=mean(reshape(zscoredFRMC(BinMC==15,:),1,[]),'omitnan');
FRMCBin16=mean(reshape(zscoredFRMC(BinMC==16,:),1,[]),'omitnan');
FRMCBin17=mean(reshape(zscoredFRMC(BinMC==17,:),1,[]),'omitnan');
FRMCBin18=mean(reshape(zscoredFRMC(BinMC==18,:),1,[]),'omitnan');
FRMCBin19=mean(reshape(zscoredFRMC(BinMC==19,:),1,[]),'omitnan');
FRMCBin20=mean(reshape(zscoredFRMC(BinMC==20,:),1,[]),'omitnan');
AllFRMC=[FRMCBin1,FRMCBin2,FRMCBin3,FRMCBin4,FRMCBin5,FRMCBin6,FRMCBin7,FRMCBin8,FRMCBin9,FRMCBin10,FRMCBin11,FRMCBin12,FRMCBin13,FRMCBin14,FRMCBin15,FRMCBin16,FRMCBin17,FRMCBin18,FRMCBin19,FRMCBin20];

lin = linspace(1,20,1000);
IntDataMC = interp1(AllFRMC,lin);

%% HC
TableSpeedAndFRHC = readtable(strcat('AllExpPerBinHCDesc.xlsx'),'ReadVariableNames',0);

SpeedAndFRHC=table2array(TableSpeedAndFRHC);
SpeedAndFRHC(SpeedAndFRHC==-999)=nan;
zscoredFRHC = SpeedAndFRHC(:,6:28);
BinHC = SpeedAndFRHC(:,5);

FRHCBin1=mean(reshape(zscoredFRHC(BinHC==1,:),1,[]),'omitnan');
FRHCBin2=mean(reshape(zscoredFRHC(BinHC==2,:),1,[]),'omitnan');
FRHCBin3=mean(reshape(zscoredFRHC(BinHC==3,:),1,[]),'omitnan');
FRHCBin4=mean(reshape(zscoredFRHC(BinHC==4,:),1,[]),'omitnan');
FRHCBin5=mean(reshape(zscoredFRHC(BinHC==5,:),1,[]),'omitnan');
FRHCBin6=mean(reshape(zscoredFRHC(BinHC==6,:),1,[]),'omitnan');
FRHCBin7=mean(reshape(zscoredFRHC(BinHC==7,:),1,[]),'omitnan');
FRHCBin8=mean(reshape(zscoredFRHC(BinHC==8,:),1,[]),'omitnan');
FRHCBin9=mean(reshape(zscoredFRHC(BinHC==9,:),1,[]),'omitnan');
FRHCBin10=mean(reshape(zscoredFRHC(BinHC==10,:),1,[]),'omitnan');
FRHCBin11=mean(reshape(zscoredFRHC(BinHC==11,:),1,[]),'omitnan');
FRHCBin12=mean(reshape(zscoredFRHC(BinHC==12,:),1,[]),'omitnan');
FRHCBin13=mean(reshape(zscoredFRHC(BinHC==13,:),1,[]),'omitnan');
FRHCBin14=mean(reshape(zscoredFRHC(BinHC==14,:),1,[]),'omitnan');
FRHCBin15=mean(reshape(zscoredFRHC(BinHC==15,:),1,[]),'omitnan');
FRHCBin16=mean(reshape(zscoredFRHC(BinHC==16,:),1,[]),'omitnan');
FRHCBin17=mean(reshape(zscoredFRHC(BinHC==17,:),1,[]),'omitnan');
FRHCBin18=mean(reshape(zscoredFRHC(BinHC==18,:),1,[]),'omitnan');
FRHCBin19=mean(reshape(zscoredFRHC(BinHC==19,:),1,[]),'omitnan');
FRHCBin20=mean(reshape(zscoredFRHC(BinHC==20,:),1,[]),'omitnan');
AllFRHC=[FRHCBin1,FRHCBin2,FRHCBin3,FRHCBin4,FRHCBin5,FRHCBin6,FRHCBin7,FRHCBin8,FRHCBin9,FRHCBin10,FRHCBin11,FRHCBin12,FRHCBin13,FRHCBin14,FRHCBin15,FRHCBin16,FRHCBin17,FRHCBin18,FRHCBin19,FRHCBin20];

lin = linspace(1,20,1000);
IntDataHC = interp1(AllFRHC,lin);

%% Figures

figure(1)
imagesc(IntDataCC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsCCDesc.fig');
s4 = strcat('BarAllCellsCCDesc.png');
saveas(gca,s3)
saveas(gca,s4)


figure(2)
imagesc(IntDataLC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsLCDesc.fig');
s4 = strcat('BarAllCellsLCDesc.png');
saveas(gca,s3)
saveas(gca,s4)


figure(3)
imagesc(IntDataMC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsMCDesc.fig');
s4 = strcat('BarAllCellsMCDesc.png');
saveas(gca,s3)
saveas(gca,s4)


figure(4)
imagesc(IntDataHC)
colormap (jet);
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
set(gca, 'LooseInset', get(gca, 'TightInset'));
width = 500;
height = 80;
x0picToPoint= 10;
y0picToPoint= 10;
set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[AllFRCC,AllFRLC,AllFRMC,AllFRHC];
minMatrix=min(min(matrix));
maxMatrix=max(max(matrix));
caxis([minMatrix maxMatrix]);

s3 = strcat('BarAllCellsHCDesc.fig');
s4 = strcat('BarAllCellsHCDesc.png');
saveas(gca,s3)
saveas(gca,s4)


end