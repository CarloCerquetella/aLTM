function [MatrixFR,IndexFR]=FindFiringRate(nameSess,nCells,MatrixFR,IndexFR)

cd ('H:\carlo\FigPaperLTM\Speed\Speed');
TableSpeedAndFR = readtable(strcat([nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx']),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+5;
for indexCell = 6:(6+nCells-1)
    %%OnCells
    %%LvNC
    zscoredFRClosedNC = SpeedAndFR(:,(IndexShift)*0+indexCell);
    BinNC = SpeedAndFR(:,(IndexShift)*0+5);
    indexClosedNC=find(BinNC>0 & BinNC<7);
    indexCenterNC=find(BinNC>6 & BinNC<12);
    indexOpenNC=find(BinNC>11 & BinNC<21);
    FROpenNC=zscoredFRClosedNC(indexOpenNC);
    FRClosedNC=zscoredFRClosedNC(indexClosedNC);
    FRCenterNC=zscoredFRClosedNC(indexCenterNC);

    %%LvVLC
    zscoredFRClosedVLC = SpeedAndFR(:,(IndexShift)*2+indexCell);
    BinVLC = SpeedAndFR(:,(IndexShift)*2+5);
    indexClosedVLC=find(BinVLC>0 & BinVLC<7);
    indexCenterVLC=find(BinVLC>6 & BinVLC<12);
    indexOpenVLC=find(BinVLC>11 & BinVLC<21);
    FROpenVLC=zscoredFRClosedVLC(indexOpenVLC);
    FRClosedVLC=zscoredFRClosedVLC(indexClosedVLC);
    FRCenterVLC=zscoredFRClosedVLC(indexCenterVLC);

    %%LvLC
    zscoredFRClosedLC = SpeedAndFR(:,(IndexShift)*3+indexCell);
    BinLC = SpeedAndFR(:,(IndexShift)*3+5);
    indexClosedLC=find(BinLC>0 & BinLC<7);
    indexCenterLC=find(BinLC>6 & BinLC<12);
    indexOpenLC=find(BinLC>11 & BinLC<21);
    FROpenLC=zscoredFRClosedLC(indexOpenLC);
    FRClosedLC=zscoredFRClosedLC(indexClosedLC);
    FRCenterLC=zscoredFRClosedLC(indexCenterLC);

    %%LvMC
    zscoredFRClosedMC = SpeedAndFR(:,(IndexShift)*4+indexCell);
    BinMC = SpeedAndFR(:,(IndexShift)*4+5);
    indexClosedMC=find(BinMC>0 & BinMC<7);
    indexCenterMC=find(BinMC>6 & BinMC<12);
    indexOpenMC=find(BinMC>11 & BinMC<21);
    FROpenMC=zscoredFRClosedMC(indexOpenMC);
    FRClosedMC=zscoredFRClosedMC(indexClosedMC);
    FRCenterMC=zscoredFRClosedMC(indexCenterMC);

    %%LvHC
    zscoredFRClosedHC = SpeedAndFR(:,(IndexShift)*5+indexCell);
    BinHC = SpeedAndFR(:,(IndexShift)*5+5);
    indexClosedHC=find(BinHC>0 & BinHC<7);
    indexCenterHC=find(BinHC>6 & BinHC<12);
    indexOpenHC=find(BinHC>11 & BinHC<21);
    FROpenHC=zscoredFRClosedHC(indexOpenHC);
    FRClosedHC=zscoredFRClosedHC(indexClosedHC);
    FRCenterHC=zscoredFRClosedHC(indexCenterHC);

    MatrixFR(1:5,IndexFR:IndexFR+2)=[mean(FRClosedNC),mean(FRCenterNC),mean(FROpenNC);mean(FRClosedVLC),mean(FRCenterVLC),mean(FROpenVLC);mean(FRClosedLC),mean(FRCenterLC),mean(FROpenLC);mean(FRClosedMC),mean(FRCenterMC),mean(FROpenMC);mean(FRClosedHC),mean(FRCenterHC),mean(FROpenHC)];
    IndexFR=IndexFR+3;

end

end

