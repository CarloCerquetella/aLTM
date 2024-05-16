function PlotHeatMaps
%NA
TableSpeedAndFRNA = readtable(strcat('MatrixPerCellNA.xlsx'),'ReadVariableNames',0);
SpeedAndFRNA=table2array(TableSpeedAndFRNA);
FRNA=mean(SpeedAndFRNA(1:207,1:20));
lin = linspace(1,20,1000);
IntDataNA = interp1(FRNA,lin);
%VLA
TableSpeedAndFRVLA = readtable(strcat('MatrixPerCellVLA.xlsx'),'ReadVariableNames',0);
SpeedAndFRVLA=table2array(TableSpeedAndFRVLA);
FRVLA=mean(SpeedAndFRVLA(1:207,1:20));
IntDataVLA = interp1(FRVLA,lin);
%LA
TableSpeedAndFRLA = readtable(strcat('MatrixPerCellLA.xlsx'),'ReadVariableNames',0);
SpeedAndFRLA=table2array(TableSpeedAndFRLA);
FRLA=mean(SpeedAndFRLA(1:207,1:20));
IntDataLA = interp1(FRLA,lin);
%MA
TableSpeedAndFRMA = readtable(strcat('MatrixPerCellMA.xlsx'),'ReadVariableNames',0);
SpeedAndFRMA=table2array(TableSpeedAndFRMA);
FRMA=mean(SpeedAndFRMA(2:208,1:20));
IntDataMA = interp1(FRMA,lin);
%HA
TableSpeedAndFRHA = readtable(strcat('MatrixPerCellHA.xlsx'),'ReadVariableNames',0);
SpeedAndFRHA=table2array(TableSpeedAndFRHA);
FRHA=mean(SpeedAndFRHA(1:207,1:20));
IntDataHA = interp1(FRHA,lin);

%% Figures
%NA
figure(1);imagesc(IntDataNA);colormap (jet);set(gca,'xtick',[]);set(gca,'xticklabel',[]);set(gca,'ytick',[]);set(gca,'yticklabel',[]);set(gca, 'LooseInset', get(gca, 'TightInset'));
width=500;height=80;x0picToPoint=10;y0picToPoint=10;set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[FRNA,FRVLA,FRLA,FRMA,FRHA];minMatrix=min(min(matrix));maxMatrix=max(max(matrix));caxis([minMatrix maxMatrix]);
s3 = strcat('AllCellsEntireTrialNA.fig');s4 = strcat('AllCellsEntireTrialNA.png');saveas(gca,s3);saveas(gca,s4);
%VLA
figure(1);imagesc(IntDataVLA);colormap (jet);set(gca,'xtick',[]);set(gca,'xticklabel',[]);set(gca,'ytick',[]);set(gca,'yticklabel',[]);set(gca, 'LooseInset', get(gca, 'TightInset'));
width=500;height=80;x0picToPoint=10;y0picToPoint=10;set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[FRNA,FRVLA,FRLA,FRMA,FRHA];minMatrix=min(min(matrix));maxMatrix=max(max(matrix));caxis([minMatrix maxMatrix]);
s3 = strcat('AllCellsEntireTrialVLA.fig');s4 = strcat('AllCellsEntireTrialVLA.png');saveas(gca,s3);saveas(gca,s4);
%LA
figure(1);imagesc(IntDataLA);colormap (jet);set(gca,'xtick',[]);set(gca,'xticklabel',[]);set(gca,'ytick',[]);set(gca,'yticklabel',[]);set(gca, 'LooseInset', get(gca, 'TightInset'));
width=500;height=80;x0picToPoint=10;y0picToPoint=10;set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[FRNA,FRVLA,FRLA,FRMA,FRHA];minMatrix=min(min(matrix));maxMatrix=max(max(matrix));caxis([minMatrix maxMatrix]);
s3 = strcat('AllCellsEntireTrialLA.fig');s4 = strcat('AllCellsEntireTrialLA.png');saveas(gca,s3);saveas(gca,s4);
%MA
figure(1);imagesc(IntDataMA);colormap (jet);set(gca,'xtick',[]);set(gca,'xticklabel',[]);set(gca,'ytick',[]);set(gca,'yticklabel',[]);set(gca, 'LooseInset', get(gca, 'TightInset'));
width=500;height=80;x0picToPoint=10;y0picToPoint=10;set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[FRNA,FRVLA,FRLA,FRMA,FRHA];minMatrix=min(min(matrix));maxMatrix=max(max(matrix));caxis([minMatrix maxMatrix]);
s3 = strcat('AllCellsEntireTrialMA.fig');s4 = strcat('AllCellsEntireTrialMA.png');saveas(gca,s3);saveas(gca,s4);
%HA
figure(1);imagesc(IntDataHA);colormap (jet);set(gca,'xtick',[]);set(gca,'xticklabel',[]);set(gca,'ytick',[]);set(gca,'yticklabel',[]);set(gca, 'LooseInset', get(gca, 'TightInset'));
width=500;height=80;x0picToPoint=10;y0picToPoint=10;set(gcf,'position',[x0picToPoint,y0picToPoint,width,height]);
matrix=[FRNA,FRVLA,FRLA,FRMA,FRHA];minMatrix=min(min(matrix));maxMatrix=max(max(matrix));caxis([minMatrix maxMatrix]);
s3 = strcat('AllCellsEntireTrialHA.fig');s4 = strcat('AllCellsEntireTrialHA.png');saveas(gca,s3);saveas(gca,s4);

end