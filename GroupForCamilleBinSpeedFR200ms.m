function GroupForCamilleBinSpeedFR200ms(nameSess,nCells)

cd ('Analyses');
cd ('DataForCamille')
TableSpeedAndFR = readtable(strcat('Time-Position-Bin-ZScoredFRPerCell_AllSessIn200Ms.xlsx'),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);
indexMatrix=1;
IndexShift=nCells+3;
%%LvNA
zscoredFRNCAsc = SpeedAndFR(:,(IndexShift)*0+4:(IndexShift)*0+4+nCells-1); zscoredFRNCDesc = SpeedAndFR(:,(IndexShift)*11+4:(IndexShift)*11+4+nCells-1);
BinNCAsc = SpeedAndFR(:,(IndexShift)*0+3); BinNCDesc = SpeedAndFR(:,(IndexShift)*11+3);
TimeNCAsc = SpeedAndFR(:,(IndexShift)*0+1); TimeNCDesc = SpeedAndFR(:,(IndexShift)*11+1);
zscoredFRNC=[zscoredFRNCAsc;zscoredFRNCDesc];
BinNC=[BinNCAsc;BinNCDesc];
TimeNC=[TimeNCAsc;TimeNCDesc];
TimeNC(TimeNC<=0)=nan;
Matrix(1:size(zscoredFRNC,1),indexMatrix)=BinNC;
Matrix(1:size(zscoredFRNC,1),indexMatrix+1)=TimeNC;
Matrix(1:size(zscoredFRNC,1),indexMatrix+2:indexMatrix+1+nCells)=zscoredFRNC;
indexMatrix=indexMatrix+2+nCells;

%%LvVLA
zscoredFRVLAAsc = SpeedAndFR(:,(IndexShift)*2+4:(IndexShift)*2+4+nCells-1); zscoredFRVLADesc = SpeedAndFR(:,(IndexShift)*9+4:(IndexShift)*9+4+nCells-1);
BinVLAAsc = SpeedAndFR(:,(IndexShift)*2+3); BinVLADesc = SpeedAndFR(:,(IndexShift)*9+3);
TimeVLAAsc = SpeedAndFR(:,(IndexShift)*2+1); TimeVLADesc = SpeedAndFR(:,(IndexShift)*9+1);
zscoredFRVLA=[zscoredFRVLAAsc;zscoredFRVLADesc];
BinVLA=[BinVLAAsc;BinVLADesc];
TimeVLA=[TimeVLAAsc;TimeVLADesc];
TimeVLA(TimeVLA<=0)=nan;
Matrix(1:size(zscoredFRVLA,1),indexMatrix)=BinVLA;
Matrix(1:size(zscoredFRVLA,1),indexMatrix+1)=TimeVLA;
Matrix(1:size(zscoredFRVLA,1),indexMatrix+2:indexMatrix+1+nCells)=zscoredFRVLA;
indexMatrix=indexMatrix+2+nCells;

%%LvLA
zscoredFRLAAsc = SpeedAndFR(:,(IndexShift)*3+4:(IndexShift)*3+4+nCells-1); zscoredFRLADesc = SpeedAndFR(:,(IndexShift)*8+4:(IndexShift)*8+4+nCells-1);
BinLAAsc = SpeedAndFR(:,(IndexShift)*3+3); BinLADesc = SpeedAndFR(:,(IndexShift)*8+3);
TimeLAAsc = SpeedAndFR(:,(IndexShift)*3+1); TimeLADesc = SpeedAndFR(:,(IndexShift)*8+1);
zscoredFRLA=[zscoredFRLAAsc;zscoredFRLADesc];
BinLA=[BinLAAsc;BinLADesc];
TimeLA=[TimeLAAsc;TimeLADesc];
TimeLA(TimeLA<=0)=nan;
Matrix(1:size(zscoredFRLA,1),indexMatrix)=BinLA;
Matrix(1:size(zscoredFRLA,1),indexMatrix+1)=TimeLA;
Matrix(1:size(zscoredFRLA,1),indexMatrix+2:indexMatrix+1+nCells)=zscoredFRLA;
indexMatrix=indexMatrix+2+nCells;

%%LvMA
zscoredFRMAAsc = SpeedAndFR(:,(IndexShift)*4+4:(IndexShift)*4+4+nCells-1); zscoredFRMADesc = SpeedAndFR(:,(IndexShift)*7+4:(IndexShift)*7+4+nCells-1);
BinMAAsc = SpeedAndFR(:,(IndexShift)*4+3); BinMADesc = SpeedAndFR(:,(IndexShift)*7+3);
TimeMAAsc = SpeedAndFR(:,(IndexShift)*4+1); TimeMADesc = SpeedAndFR(:,(IndexShift)*7+1);
zscoredFRMA=[zscoredFRMAAsc;zscoredFRMADesc];
BinMA=[BinMAAsc;BinMADesc];
TimeMA=[TimeMAAsc;TimeMADesc];
TimeMA(TimeMA<=0)=nan;
Matrix(1:size(zscoredFRMA,1),indexMatrix)=BinMA;
Matrix(1:size(zscoredFRMA,1),indexMatrix+1)=TimeMA;
Matrix(1:size(zscoredFRMA,1),indexMatrix+2:indexMatrix+1+nCells)=zscoredFRMA;
indexMatrix=indexMatrix+2+nCells;

%%LvHA
zscoredFRHAAsc = SpeedAndFR(:,(IndexShift)*5+4:(IndexShift)*5+4+nCells-1); zscoredFRHADesc = SpeedAndFR(:,(IndexShift)*6+4:(IndexShift)*6+4+nCells-1);
BinHAAsc = SpeedAndFR(:,(IndexShift)*5+3); BinHADesc = SpeedAndFR(:,(IndexShift)*6+3);
TimeHAAsc = SpeedAndFR(:,(IndexShift)*5+1); TimeHADesc = SpeedAndFR(:,(IndexShift)*6+1);
zscoredFRHA=[zscoredFRHAAsc;zscoredFRHADesc];
BinHA=[BinHAAsc;BinHADesc];
TimeHA=[TimeHAAsc;TimeHADesc];
TimeHA(TimeHA<=0)=nan;
Matrix(1:size(zscoredFRHA,1),indexMatrix)=BinHA;
Matrix(1:size(zscoredFRHA,1),indexMatrix+1)=TimeHA;
Matrix(1:size(zscoredFRHA,1),indexMatrix+2:indexMatrix+1+nCells)=zscoredFRHA;
indexMatrix=indexMatrix+2+nCells;

cd('H:\carlo\FigPaperLTM\Final figures\CurrBioRev\Time-Bin-FiringRate');
% indexHeaderMatrix=1;
% while indexHeaderMatrix<indexMatrix
%     Header{1,indexHeaderMatrix}={'Bin'};
%     Header{1,indexHeaderMatrix+1}={'Speed'};
%     for indexNumbCells=indexHeaderMatrix+2:nCells+indexHeaderMatrix+1
%         Header{1,indexNumbCells}=strcat('Cell',int2str(indexNumbCells-indexHeaderMatrix-1));
%     end
%     indexHeaderMatrix=indexHeaderMatrix+2+nCells;
% end
% Header=convertStringsToChars(Header)
arraytable=table(Matrix);
nametable=strcat(nameSess,'Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


