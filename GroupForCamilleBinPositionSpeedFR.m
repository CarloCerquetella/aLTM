function GroupForCamilleBinPositionSpeedFR(nameSess,nCells)

cd ('H:\carlo\FigPaperLTM\Speed\Speed');
TableSpeedAndFR = readtable(strcat([nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx']),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);
indexMatrix=1;
IndexShift=nCells+5;
%%LvNA
zscoredFRNCAsc = SpeedAndFR(:,(IndexShift)*0+6:(IndexShift)*0+6+nCells-1); zscoredFRNCDesc = SpeedAndFR(:,(IndexShift)*11+6:(IndexShift)*11+6+nCells-1);
BinNCAsc = SpeedAndFR(:,(IndexShift)*0+5); BinNCDesc = SpeedAndFR(:,(IndexShift)*11+5);
SpeedNCAsc = SpeedAndFR(:,(IndexShift)*0+4); SpeedNCDesc = SpeedAndFR(:,(IndexShift)*11+4);
XCoordNCAsc=SpeedAndFR(:,(IndexShift)*0+3); XCoordNCDesc=SpeedAndFR(:,(IndexShift)*11+3);
zscoredFRNC=[zscoredFRNCAsc;zscoredFRNCDesc];
BinNC=[BinNCAsc;BinNCDesc];
XCoordNC=[XCoordNCAsc;XCoordNCDesc];
SpeedNC=[SpeedNCAsc;SpeedNCDesc];
SpeedNC(SpeedNC<=0)=nan;
Matrix(1:size(zscoredFRNC,1),indexMatrix)=BinNC;
Matrix(1:size(zscoredFRNC,1),indexMatrix+1)=SpeedNC;
Matrix(1:size(zscoredFRNC,1),indexMatrix+2)=XCoordNC;
Matrix(1:size(zscoredFRNC,1),indexMatrix+3:indexMatrix+2+nCells)=zscoredFRNC;
indexMatrix=indexMatrix+3+nCells;

%%LvVLA
zscoredFRVLAAsc = SpeedAndFR(:,(IndexShift)*2+6:(IndexShift)*2+6+nCells-1); zscoredFRVLADesc = SpeedAndFR(:,(IndexShift)*9+6:(IndexShift)*9+6+nCells-1);
BinVLAAsc = SpeedAndFR(:,(IndexShift)*2+5); BinVLADesc = SpeedAndFR(:,(IndexShift)*9+5);
SpeedVLAAsc = SpeedAndFR(:,(IndexShift)*2+4); SpeedVLADesc = SpeedAndFR(:,(IndexShift)*9+4);
XCoordVLAAsc=SpeedAndFR(:,(IndexShift)*2+3); XCoordVLADesc=SpeedAndFR(:,(IndexShift)*9+3);
XCoordVLA=[XCoordVLAAsc;XCoordVLADesc];
zscoredFRVLA=[zscoredFRVLAAsc;zscoredFRVLADesc];
BinVLA=[BinVLAAsc;BinVLADesc];
SpeedVLA=[SpeedVLAAsc;SpeedVLADesc];
SpeedVLA(SpeedVLA<=0)=nan;
Matrix(1:size(zscoredFRVLA,1),indexMatrix)=BinVLA;
Matrix(1:size(zscoredFRVLA,1),indexMatrix+1)=SpeedVLA;
Matrix(1:size(zscoredFRVLA,1),indexMatrix+2)=XCoordVLA;
Matrix(1:size(zscoredFRVLA,1),indexMatrix+3:indexMatrix+2+nCells)=zscoredFRVLA;
indexMatrix=indexMatrix+3+nCells;

%%LvLA
zscoredFRLAAsc = SpeedAndFR(:,(IndexShift)*3+6:(IndexShift)*3+6+nCells-1); zscoredFRLADesc = SpeedAndFR(:,(IndexShift)*8+6:(IndexShift)*8+6+nCells-1);
BinLAAsc = SpeedAndFR(:,(IndexShift)*3+5); BinLADesc = SpeedAndFR(:,(IndexShift)*8+5);
SpeedLAAsc = SpeedAndFR(:,(IndexShift)*3+4); SpeedLADesc = SpeedAndFR(:,(IndexShift)*8+4);
XCoordLAAsc=SpeedAndFR(:,(IndexShift)*3+3); XCoordLADesc=SpeedAndFR(:,(IndexShift)*8+3);
XCoordLA=[XCoordLAAsc;XCoordLADesc];
zscoredFRLA=[zscoredFRLAAsc;zscoredFRLADesc];
BinLA=[BinLAAsc;BinLADesc];
SpeedLA=[SpeedLAAsc;SpeedLADesc];
SpeedLA(SpeedLA<=0)=nan;
Matrix(1:size(zscoredFRLA,1),indexMatrix)=BinLA;
Matrix(1:size(zscoredFRLA,1),indexMatrix+1)=SpeedLA;
Matrix(1:size(zscoredFRLA,1),indexMatrix+2)=XCoordLA;
Matrix(1:size(zscoredFRLA,1),indexMatrix+3:indexMatrix+2+nCells)=zscoredFRLA;
indexMatrix=indexMatrix+3+nCells;

%%LvMA
zscoredFRMAAsc = SpeedAndFR(:,(IndexShift)*4+6:(IndexShift)*4+6+nCells-1); zscoredFRMADesc = SpeedAndFR(:,(IndexShift)*7+6:(IndexShift)*7+6+nCells-1);
BinMAAsc = SpeedAndFR(:,(IndexShift)*4+5); BinMADesc = SpeedAndFR(:,(IndexShift)*7+5);
SpeedMAAsc = SpeedAndFR(:,(IndexShift)*4+4); SpeedMADesc = SpeedAndFR(:,(IndexShift)*7+4);
XCoordMAAsc=SpeedAndFR(:,(IndexShift)*4+3); XCoordMADesc=SpeedAndFR(:,(IndexShift)*7+3);
XCoordMA=[XCoordMAAsc;XCoordMADesc];
zscoredFRMA=[zscoredFRMAAsc;zscoredFRMADesc];
BinMA=[BinMAAsc;BinMADesc];
SpeedMA=[SpeedMAAsc;SpeedMADesc];
SpeedMA(SpeedMA<=0)=nan;
Matrix(1:size(zscoredFRMA,1),indexMatrix)=BinMA;
Matrix(1:size(zscoredFRMA,1),indexMatrix+1)=SpeedMA;
Matrix(1:size(zscoredFRMA,1),indexMatrix+2)=XCoordMA;
Matrix(1:size(zscoredFRMA,1),indexMatrix+3:indexMatrix+2+nCells)=zscoredFRMA;
indexMatrix=indexMatrix+3+nCells;

%%LvHA
zscoredFRHAAsc = SpeedAndFR(:,(IndexShift)*5+6:(IndexShift)*5+6+nCells-1); zscoredFRHADesc = SpeedAndFR(:,(IndexShift)*6+6:(IndexShift)*6+6+nCells-1);
BinHAAsc = SpeedAndFR(:,(IndexShift)*5+5); BinHADesc = SpeedAndFR(:,(IndexShift)*6+5);
SpeedHAAsc = SpeedAndFR(:,(IndexShift)*5+4); SpeedHADesc = SpeedAndFR(:,(IndexShift)*6+4);
XCoordHAAsc=SpeedAndFR(:,(IndexShift)*5+3); XCoordHADesc=SpeedAndFR(:,(IndexShift)*6+3);
XCoordHA=[XCoordHAAsc;XCoordHADesc];
zscoredFRHA=[zscoredFRHAAsc;zscoredFRHADesc];
BinHA=[BinHAAsc;BinHADesc];
SpeedHA=[SpeedHAAsc;SpeedHADesc];
SpeedHA(SpeedHA<=0)=nan;
Matrix(1:size(zscoredFRHA,1),indexMatrix)=BinHA;
Matrix(1:size(zscoredFRHA,1),indexMatrix+1)=SpeedHA;
Matrix(1:size(zscoredFRHA,1),indexMatrix+2)=XCoordHA;
Matrix(1:size(zscoredFRHA,1),indexMatrix+3:indexMatrix+2+nCells)=zscoredFRHA;
indexMatrix=indexMatrix+3+nCells;

cd('H:\carlo\FigPaperLTM\Final figures\CurrBioRev\Bin-Speed-Pos-FiringRate');
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
nametable=strcat(nameSess,'Bin-Speed-Pos-ZScoredFRPerCell_AllSess.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

