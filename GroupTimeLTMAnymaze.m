function [MatrixGroup,indexMatrix,MatrixGroupPerc]=GroupTimeLTMAnymaze(MatrixGroup,indexMatrix,MatrixGroupPerc)

cd('Analyses')
cd('LTM')

TableTime=readtable('TimeSpentinClosedCenterOpeninSec.xlsx');
ArrayTime=table2array(TableTime);

MatrixGroup(1:12,indexMatrix:indexMatrix+2)=ArrayTime;

TableTimePerc=readtable('TimeSpentinClosedCenterOpeninPerc.xlsx');
ArrayTimePerc=table2array(TableTimePerc);

MatrixGroupPerc(1:12,indexMatrix:indexMatrix+2)=ArrayTimePerc;

indexMatrix=indexMatrix+3;

end