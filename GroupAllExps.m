function [MatrixNAIngoing,MatrixNAOutgoing,CellNumberNAOut,CellNumberNAIn,MatrixLAIngoing,MatrixLAOutgoing,CellNumberLAOut,CellNumberLAIn,MatrixMAIngoing,MatrixMAOutgoing,CellNumberMAOut,CellNumberMAIn,MatrixHAIngoing,MatrixHAOutgoing,CellNumberHAOut,CellNumberHAIn]=GroupAllExps(nameSess,MatrixNAIngoing,MatrixNAOutgoing,CellNumberNAOut,CellNumberNAIn,MatrixLAIngoing,MatrixLAOutgoing,CellNumberLAOut,CellNumberLAIn,MatrixMAIngoing,MatrixMAOutgoing,CellNumberMAOut,CellNumberMAIn,MatrixHAIngoing,MatrixHAOutgoing,CellNumberHAOut,CellNumberHAIn)

cd('H:\carlo\FigPaperLTM\Final figures\InBoundOutbound\NewZScoredValues')
TableBinAndFRNAIngoing = readtable(strcat([nameSess,'Lv1AIngoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRNAIngoing=table2array(TableBinAndFRNAIngoing);
MatrixNAIngoing(1:size(SpeedAndFRNAIngoing,1),CellNumberNAIn:CellNumberNAIn+size(SpeedAndFRNAIngoing,2)-1)=SpeedAndFRNAIngoing;
CellNumberNAIn=CellNumberNAIn+size(SpeedAndFRNAIngoing,2);
TableBinAndFRNAOutgoing = readtable(strcat([nameSess,'Lv1AOutgoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRNAOutgoing=table2array(TableBinAndFRNAOutgoing);
MatrixNAOutgoing(1:size(SpeedAndFRNAOutgoing,1),CellNumberNAOut:CellNumberNAOut+size(SpeedAndFRNAOutgoing,2)-1)=SpeedAndFRNAOutgoing;
CellNumberNAOut=CellNumberNAOut+size(SpeedAndFRNAOutgoing,2);

TableBinAndFRLAIngoing = readtable(strcat([nameSess,'Lv2AIngoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRLAIngoing=table2array(TableBinAndFRLAIngoing);
MatrixLAIngoing(1:size(SpeedAndFRLAIngoing,1),CellNumberLAIn:CellNumberLAIn+size(SpeedAndFRLAIngoing,2)-1)=SpeedAndFRLAIngoing;
CellNumberLAIn=CellNumberLAIn+size(SpeedAndFRLAIngoing,2);
TableBinAndFRLAOutgoing = readtable(strcat([nameSess,'Lv2AOutgoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRLAOutgoing=table2array(TableBinAndFRLAOutgoing);
MatrixLAOutgoing(1:size(SpeedAndFRLAOutgoing,1),CellNumberLAOut:CellNumberLAOut+size(SpeedAndFRLAOutgoing,2)-1)=SpeedAndFRLAOutgoing;
CellNumberLAOut=CellNumberLAOut+size(SpeedAndFRLAOutgoing,2);

TableBinAndFRMAIngoing = readtable(strcat([nameSess,'Lv3AIngoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRMAIngoing=table2array(TableBinAndFRMAIngoing);
MatrixMAIngoing(1:size(SpeedAndFRMAIngoing,1),CellNumberMAIn:CellNumberMAIn+size(SpeedAndFRMAIngoing,2)-1)=SpeedAndFRMAIngoing;
CellNumberMAIn=CellNumberMAIn+size(SpeedAndFRMAIngoing,2);
TableBinAndFRMAOutgoing = readtable(strcat([nameSess,'Lv3AOutgoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRMAOutgoing=table2array(TableBinAndFRMAOutgoing);
MatrixMAOutgoing(1:size(SpeedAndFRMAOutgoing,1),CellNumberMAOut:CellNumberMAOut+size(SpeedAndFRMAOutgoing,2)-1)=SpeedAndFRMAOutgoing;
CellNumberMAOut=CellNumberMAOut+size(SpeedAndFRMAOutgoing,2);

TableBinAndFRHAIngoing = readtable(strcat([nameSess,'Lv4AIngoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRHAIngoing=table2array(TableBinAndFRHAIngoing);
MatrixHAIngoing(1:size(SpeedAndFRHAIngoing,1),CellNumberHAIn:CellNumberHAIn+size(SpeedAndFRHAIngoing,2)-1)=SpeedAndFRHAIngoing;
CellNumberHAIn=CellNumberHAIn+size(SpeedAndFRHAIngoing,2);
TableBinAndFRHAOutgoing = readtable(strcat([nameSess,'Lv4AOutgoing.xlsx']),'ReadVariableNames',0);
SpeedAndFRHAOutgoing=table2array(TableBinAndFRHAOutgoing);
MatrixHAOutgoing(1:size(SpeedAndFRHAOutgoing,1),CellNumberHAOut:CellNumberHAOut+size(SpeedAndFRHAOutgoing,2)-1)=SpeedAndFRHAOutgoing;
CellNumberHAOut=CellNumberHAOut+size(SpeedAndFRHAOutgoing,2);



end