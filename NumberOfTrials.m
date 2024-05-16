function [MatrixSingleTrials,indexMatrix]=NumberOfTrials(nameSess,nCells,MatrixSingleTrials,indexMatrix)

cd('H:\carlo\FigPaperLTM\OptoLTM')  %%For opto Otherwise %  cd('H:\carlo\FigPaperLTM\Speed\Speed')
TableSpeedAndFR = readtable(strcat(nameSess,'Time-Position-Speed-Bin_AllSess.xlsx'),'ReadVariableNames',0);  %%For opto Otherwise %  TableSpeedAndFR = readtable(strcat(nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx'),'ReadVariableNames',0); 
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+5;
for ii=1:12
    Bin = SpeedAndFR(:,(IndexShift)*(ii-1)+5);
    AllNumb=1:(size(Bin,1)-1);
    IDBin=find(Bin(AllNumb,1)<=11 & Bin(AllNumb+1,1)>11);
    NmrTrials=0;
    for iii=1:size(IDBin,1)
        if Bin((IDBin(iii,1)+1),1)>11
            NmrTrials=NmrTrials+1;
        end
    end
    MatrixSingleTrials(indexMatrix,ii)=NmrTrials;
end
indexMatrix=indexMatrix+1;

end