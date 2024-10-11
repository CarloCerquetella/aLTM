function ExcludeRewards
% NA
NAMatrixOutboundIndexes=MatrixNAOutgoing(:,1:2:end);
NAMatrixOutboundValues=MatrixNAOutgoing(:,2:2:end);
CellNum=1;
for icol=1:207
    if icol==102
    MatrixNAOutgoing120=[];
    ncell1=1;ncell2=1;ncell3=1;ncell4=1;ncell5=1;ncell6=1;ncell7=1;ncell8=1;ncell9=1;ncell10=1;ncell11=1;ncell12=1;ncell13=1;ncell14=1;ncell15=1;ncell16=1;ncell17=1;ncell18=1;ncell19=1;ncell20=1;
    for irow=1:1000
        if NAMatrixOutboundIndexes(irow,icol)==1
            MatrixNAOutgoing120(ncell1,1)=NAMatrixOutboundValues(irow,icol);
            ncell1=ncell1+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==2
            MatrixNAOutgoing120(ncell2,2)=NAMatrixOutboundValues(irow,icol);
            ncell2=ncell2+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==3
            MatrixNAOutgoing120(ncell3,3)=NAMatrixOutboundValues(irow,icol);
            ncell3=ncell3+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==4
            MatrixNAOutgoing120(ncell4,4)=NAMatrixOutboundValues(irow,icol);
            ncell4=ncell4+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==5
            MatrixNAOutgoing120(ncell5,5)=NAMatrixOutboundValues(irow,icol);
            ncell5=ncell5+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==6
            MatrixNAOutgoing120(ncell6,6)=NAMatrixOutboundValues(irow,icol);
            ncell6=ncell6+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==7
            MatrixNAOutgoing120(ncell7,7)=NAMatrixOutboundValues(irow,icol);
            ncell7=ncell7+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==8
            MatrixNAOutgoing120(ncell8,8)=NAMatrixOutboundValues(irow,icol);
            ncell8=ncell8+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==9
            MatrixNAOutgoing120(ncell9,9)=NAMatrixOutboundValues(irow,icol);
            ncell9=ncell9+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==10
            MatrixNAOutgoing120(ncell10,10)=NAMatrixOutboundValues(irow,icol);
            ncell10=ncell10+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==11
            MatrixNAOutgoing120(ncell11,11)=NAMatrixOutboundValues(irow,icol);
            ncell11=ncell11+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==12
            MatrixNAOutgoing120(ncell12,12)=NAMatrixOutboundValues(irow,icol);
            ncell12=ncell12+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==13
            MatrixNAOutgoing120(ncell13,13)=NAMatrixOutboundValues(irow,icol);
            ncell13=ncell13+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==14
            MatrixNAOutgoing120(ncell14,14)=NAMatrixOutboundValues(irow,icol);
            ncell14=ncell14+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==15
            MatrixNAOutgoing120(ncell15,15)=NAMatrixOutboundValues(irow,icol);
            ncell15=ncell15+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==16
            MatrixNAOutgoing120(ncell16,16)=NAMatrixOutboundValues(irow,icol);
            ncell16=ncell16+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==17
            MatrixNAOutgoing120(ncell17,17)=NAMatrixOutboundValues(irow,icol);
            ncell17=ncell17+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==18
            MatrixNAOutgoing120(ncell18,18)=NAMatrixOutboundValues(irow,icol);
            ncell18=ncell18+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==19
            MatrixNAOutgoing120(ncell19,19)=NAMatrixOutboundValues(irow,icol);
            ncell19=ncell19+1;
        elseif NAMatrixOutboundIndexes(irow,icol)==20
            MatrixNAOutgoing120(ncell20,20)=NAMatrixOutboundValues(irow,icol);
            ncell20=ncell20+1;
        end
    end
    NAVector(CellNum,1:20)=[mean(MatrixNAOutgoing120(1:ncell1-1,1)),mean(MatrixNAOutgoing120(1:ncell2-1,2)),mean(MatrixNAOutgoing120(1:ncell3-1,3)),mean(MatrixNAOutgoing120(1:ncell4-1,4)),mean(MatrixNAOutgoing120(1:ncell5-1,5)),mean(MatrixNAOutgoing120(1:ncell6-1,6)),mean(MatrixNAOutgoing120(1:ncell7-1,7)),mean(MatrixNAOutgoing120(1:ncell8-1,8)),mean(MatrixNAOutgoing120(1:ncell9-1,9)),mean(MatrixNAOutgoing120(1:ncell10-1,10)),mean(MatrixNAOutgoing120(1:ncell11-1,11)),mean(MatrixNAOutgoing120(1:ncell12-1,12)),mean(MatrixNAOutgoing120(1:ncell13-1,13)),mean(MatrixNAOutgoing120(1:ncell14-1,14)),mean(MatrixNAOutgoing120(1:ncell15-1,15)),mean(MatrixNAOutgoing120(1:ncell16-1,16)),mean(MatrixNAOutgoing120(1:ncell17-1,17)),mean(MatrixNAOutgoing120(1:ncell18-1,18)),mean(MatrixNAOutgoing120(1:ncell19-1,19)),mean(MatrixNAOutgoing120(1:ncell20-1,20))];
    CellNum=CellNum+1;
    end
end

arraytable=table(NAVector);
nametable=strcat('NAPerCell1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);
MatrixMean(1,1:4)=mean(NAVector(:,12:15),1);

% VLA
VLAMatrixOutboundIndexes=MatrixVLAOutgoing(:,1:2:end);
VLAMatrixOutboundValues=MatrixVLAOutgoing(:,2:2:end);
CellNum=1;
for icol=1:207
    if icol==102
    MatrixVLAOutgoing120=[];
    ncell1=1;ncell2=1;ncell3=1;ncell4=1;ncell5=1;ncell6=1;ncell7=1;ncell8=1;ncell9=1;ncell10=1;ncell11=1;ncell12=1;ncell13=1;ncell14=1;ncell15=1;ncell16=1;ncell17=1;ncell18=1;ncell19=1;ncell20=1;
    for irow=1:1000
        if VLAMatrixOutboundIndexes(irow,icol)==1
            MatrixVLAOutgoing120(ncell1,1)=VLAMatrixOutboundValues(irow,icol);
            ncell1=ncell1+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==2
            MatrixVLAOutgoing120(ncell2,2)=VLAMatrixOutboundValues(irow,icol);
            ncell2=ncell2+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==3
            MatrixVLAOutgoing120(ncell3,3)=VLAMatrixOutboundValues(irow,icol);
            ncell3=ncell3+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==4
            MatrixVLAOutgoing120(ncell4,4)=VLAMatrixOutboundValues(irow,icol);
            ncell4=ncell4+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==5
            MatrixVLAOutgoing120(ncell5,5)=VLAMatrixOutboundValues(irow,icol);
            ncell5=ncell5+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==6
            MatrixVLAOutgoing120(ncell6,6)=VLAMatrixOutboundValues(irow,icol);
            ncell6=ncell6+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==7
            MatrixVLAOutgoing120(ncell7,7)=VLAMatrixOutboundValues(irow,icol);
            ncell7=ncell7+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==8
            MatrixVLAOutgoing120(ncell8,8)=VLAMatrixOutboundValues(irow,icol);
            ncell8=ncell8+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==9
            MatrixVLAOutgoing120(ncell9,9)=VLAMatrixOutboundValues(irow,icol);
            ncell9=ncell9+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==10
            MatrixVLAOutgoing120(ncell10,10)=VLAMatrixOutboundValues(irow,icol);
            ncell10=ncell10+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==11
            MatrixVLAOutgoing120(ncell11,11)=VLAMatrixOutboundValues(irow,icol);
            ncell11=ncell11+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==12
            MatrixVLAOutgoing120(ncell12,12)=VLAMatrixOutboundValues(irow,icol);
            ncell12=ncell12+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==13
            MatrixVLAOutgoing120(ncell13,13)=VLAMatrixOutboundValues(irow,icol);
            ncell13=ncell13+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==14
            MatrixVLAOutgoing120(ncell14,14)=VLAMatrixOutboundValues(irow,icol);
            ncell14=ncell14+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==15
            MatrixVLAOutgoing120(ncell15,15)=VLAMatrixOutboundValues(irow,icol);
            ncell15=ncell15+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==16
            MatrixVLAOutgoing120(ncell16,16)=VLAMatrixOutboundValues(irow,icol);
            ncell16=ncell16+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==17
            MatrixVLAOutgoing120(ncell17,17)=VLAMatrixOutboundValues(irow,icol);
            ncell17=ncell17+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==18
            MatrixVLAOutgoing120(ncell18,18)=VLAMatrixOutboundValues(irow,icol);
            ncell18=ncell18+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==19
            MatrixVLAOutgoing120(ncell19,19)=VLAMatrixOutboundValues(irow,icol);
            ncell19=ncell19+1;
        elseif VLAMatrixOutboundIndexes(irow,icol)==20
            MatrixVLAOutgoing120(ncell20,20)=VLAMatrixOutboundValues(irow,icol);
            ncell20=ncell20+1;
        end
    end
    VLAVector(CellNum,1:20)=[mean(MatrixVLAOutgoing120(1:ncell1-1,1)),mean(MatrixVLAOutgoing120(1:ncell2-1,2)),mean(MatrixVLAOutgoing120(1:ncell3-1,3)),mean(MatrixVLAOutgoing120(1:ncell4-1,4)),mean(MatrixVLAOutgoing120(1:ncell5-1,5)),mean(MatrixVLAOutgoing120(1:ncell6-1,6)),mean(MatrixVLAOutgoing120(1:ncell7-1,7)),mean(MatrixVLAOutgoing120(1:ncell8-1,8)),mean(MatrixVLAOutgoing120(1:ncell9-1,9)),mean(MatrixVLAOutgoing120(1:ncell10-1,10)),mean(MatrixVLAOutgoing120(1:ncell11-1,11)),mean(MatrixVLAOutgoing120(1:ncell12-1,12)),mean(MatrixVLAOutgoing120(1:ncell13-1,13)),mean(MatrixVLAOutgoing120(1:ncell14-1,14)),mean(MatrixVLAOutgoing120(1:ncell15-1,15)),mean(MatrixVLAOutgoing120(1:ncell16-1,16)),mean(MatrixVLAOutgoing120(1:ncell17-1,17)),mean(MatrixVLAOutgoing120(1:ncell18-1,18)),mean(MatrixVLAOutgoing120(1:ncell19-1,19)),mean(MatrixVLAOutgoing120(1:ncell20-1,20))];
    CellNum=CellNum+1;
    end
end

arraytable=table(VLAVector);
nametable=strcat('VLAPerCell1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);
MatrixMean(2,1:4)=mean(VLAVector(:,12:15),1);

% LA
LAMatrixOutboundIndexes=MatrixLAOutgoing(:,1:2:end);
LAMatrixOutboundValues=MatrixLAOutgoing(:,2:2:end);
CellNum=1;
for icol=1:207
    if icol==102
    MatrixLAOutgoing120=[];
    ncell1=1;ncell2=1;ncell3=1;ncell4=1;ncell5=1;ncell6=1;ncell7=1;ncell8=1;ncell9=1;ncell10=1;ncell11=1;ncell12=1;ncell13=1;ncell14=1;ncell15=1;ncell16=1;ncell17=1;ncell18=1;ncell19=1;ncell20=1;
    for irow=1:1000
        if LAMatrixOutboundIndexes(irow,icol)==1
            MatrixLAOutgoing120(ncell1,1)=LAMatrixOutboundValues(irow,icol);
            ncell1=ncell1+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==2
            MatrixLAOutgoing120(ncell2,2)=LAMatrixOutboundValues(irow,icol);
            ncell2=ncell2+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==3
            MatrixLAOutgoing120(ncell3,3)=LAMatrixOutboundValues(irow,icol);
            ncell3=ncell3+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==4
            MatrixLAOutgoing120(ncell4,4)=LAMatrixOutboundValues(irow,icol);
            ncell4=ncell4+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==5
            MatrixLAOutgoing120(ncell5,5)=LAMatrixOutboundValues(irow,icol);
            ncell5=ncell5+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==6
            MatrixLAOutgoing120(ncell6,6)=LAMatrixOutboundValues(irow,icol);
            ncell6=ncell6+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==7
            MatrixLAOutgoing120(ncell7,7)=LAMatrixOutboundValues(irow,icol);
            ncell7=ncell7+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==8
            MatrixLAOutgoing120(ncell8,8)=LAMatrixOutboundValues(irow,icol);
            ncell8=ncell8+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==9
            MatrixLAOutgoing120(ncell9,9)=LAMatrixOutboundValues(irow,icol);
            ncell9=ncell9+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==10
            MatrixLAOutgoing120(ncell10,10)=LAMatrixOutboundValues(irow,icol);
            ncell10=ncell10+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==11
            MatrixLAOutgoing120(ncell11,11)=LAMatrixOutboundValues(irow,icol);
            ncell11=ncell11+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==12
            MatrixLAOutgoing120(ncell12,12)=LAMatrixOutboundValues(irow,icol);
            ncell12=ncell12+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==13
            MatrixLAOutgoing120(ncell13,13)=LAMatrixOutboundValues(irow,icol);
            ncell13=ncell13+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==14
            MatrixLAOutgoing120(ncell14,14)=LAMatrixOutboundValues(irow,icol);
            ncell14=ncell14+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==15
            MatrixLAOutgoing120(ncell15,15)=LAMatrixOutboundValues(irow,icol);
            ncell15=ncell15+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==16
            MatrixLAOutgoing120(ncell16,16)=LAMatrixOutboundValues(irow,icol);
            ncell16=ncell16+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==17
            MatrixLAOutgoing120(ncell17,17)=LAMatrixOutboundValues(irow,icol);
            ncell17=ncell17+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==18
            MatrixLAOutgoing120(ncell18,18)=LAMatrixOutboundValues(irow,icol);
            ncell18=ncell18+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==19
            MatrixLAOutgoing120(ncell19,19)=LAMatrixOutboundValues(irow,icol);
            ncell19=ncell19+1;
        elseif LAMatrixOutboundIndexes(irow,icol)==20
            MatrixLAOutgoing120(ncell20,20)=LAMatrixOutboundValues(irow,icol);
            ncell20=ncell20+1;
        end
    end
    LAVector(CellNum,1:20)=[mean(MatrixLAOutgoing120(1:ncell1-1,1)),mean(MatrixLAOutgoing120(1:ncell2-1,2)),mean(MatrixLAOutgoing120(1:ncell3-1,3)),mean(MatrixLAOutgoing120(1:ncell4-1,4)),mean(MatrixLAOutgoing120(1:ncell5-1,5)),mean(MatrixLAOutgoing120(1:ncell6-1,6)),mean(MatrixLAOutgoing120(1:ncell7-1,7)),mean(MatrixLAOutgoing120(1:ncell8-1,8)),mean(MatrixLAOutgoing120(1:ncell9-1,9)),mean(MatrixLAOutgoing120(1:ncell10-1,10)),mean(MatrixLAOutgoing120(1:ncell11-1,11)),mean(MatrixLAOutgoing120(1:ncell12-1,12)),mean(MatrixLAOutgoing120(1:ncell13-1,13)),mean(MatrixLAOutgoing120(1:ncell14-1,14)),mean(MatrixLAOutgoing120(1:ncell15-1,15)),mean(MatrixLAOutgoing120(1:ncell16-1,16)),mean(MatrixLAOutgoing120(1:ncell17-1,17)),mean(MatrixLAOutgoing120(1:ncell18-1,18)),mean(MatrixLAOutgoing120(1:ncell19-1,19)),mean(MatrixLAOutgoing120(1:ncell20-1,20))];
    CellNum=CellNum+1;
    end
end

arraytable=table(LAVector);
nametable=strcat('LAPerCell1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);
MatrixMean(3,1:4)=mean(LAVector(:,12:15),1);

% MA
MAMatrixOutboundIndexes=MatrixMAOutgoing(:,1:2:end);
MAMatrixOutboundValues=MatrixMAOutgoing(:,2:2:end);
CellNum=1;
for icol=1:207
    if icol==102
    MatrixMAOutgoing120=[];
    ncell1=1;ncell2=1;ncell3=1;ncell4=1;ncell5=1;ncell6=1;ncell7=1;ncell8=1;ncell9=1;ncell10=1;ncell11=1;ncell12=1;ncell13=1;ncell14=1;ncell15=1;ncell16=1;ncell17=1;ncell18=1;ncell19=1;ncell20=1;
    for irow=1:1000
        if MAMatrixOutboundIndexes(irow,icol)==1
            MatrixMAOutgoing120(ncell1,1)=MAMatrixOutboundValues(irow,icol);
            ncell1=ncell1+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==2
            MatrixMAOutgoing120(ncell2,2)=MAMatrixOutboundValues(irow,icol);
            ncell2=ncell2+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==3
            MatrixMAOutgoing120(ncell3,3)=MAMatrixOutboundValues(irow,icol);
            ncell3=ncell3+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==4
            MatrixMAOutgoing120(ncell4,4)=MAMatrixOutboundValues(irow,icol);
            ncell4=ncell4+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==5
            MatrixMAOutgoing120(ncell5,5)=MAMatrixOutboundValues(irow,icol);
            ncell5=ncell5+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==6
            MatrixMAOutgoing120(ncell6,6)=MAMatrixOutboundValues(irow,icol);
            ncell6=ncell6+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==7
            MatrixMAOutgoing120(ncell7,7)=MAMatrixOutboundValues(irow,icol);
            ncell7=ncell7+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==8
            MatrixMAOutgoing120(ncell8,8)=MAMatrixOutboundValues(irow,icol);
            ncell8=ncell8+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==9
            MatrixMAOutgoing120(ncell9,9)=MAMatrixOutboundValues(irow,icol);
            ncell9=ncell9+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==10
            MatrixMAOutgoing120(ncell10,10)=MAMatrixOutboundValues(irow,icol);
            ncell10=ncell10+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==11
            MatrixMAOutgoing120(ncell11,11)=MAMatrixOutboundValues(irow,icol);
            ncell11=ncell11+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==12
            MatrixMAOutgoing120(ncell12,12)=MAMatrixOutboundValues(irow,icol);
            ncell12=ncell12+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==13
            MatrixMAOutgoing120(ncell13,13)=MAMatrixOutboundValues(irow,icol);
            ncell13=ncell13+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==14
            MatrixMAOutgoing120(ncell14,14)=MAMatrixOutboundValues(irow,icol);
            ncell14=ncell14+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==15
            MatrixMAOutgoing120(ncell15,15)=MAMatrixOutboundValues(irow,icol);
            ncell15=ncell15+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==16
            MatrixMAOutgoing120(ncell16,16)=MAMatrixOutboundValues(irow,icol);
            ncell16=ncell16+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==17
            MatrixMAOutgoing120(ncell17,17)=MAMatrixOutboundValues(irow,icol);
            ncell17=ncell17+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==18
            MatrixMAOutgoing120(ncell18,18)=MAMatrixOutboundValues(irow,icol);
            ncell18=ncell18+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==19
            MatrixMAOutgoing120(ncell19,19)=MAMatrixOutboundValues(irow,icol);
            ncell19=ncell19+1;
        elseif MAMatrixOutboundIndexes(irow,icol)==20
            MatrixMAOutgoing120(ncell20,20)=MAMatrixOutboundValues(irow,icol);
            ncell20=ncell20+1;
        end
    end
    MAVector(CellNum,1:20)=[mean(MatrixMAOutgoing120(1:ncell1-1,1)),mean(MatrixMAOutgoing120(1:ncell2-1,2)),mean(MatrixMAOutgoing120(1:ncell3-1,3)),mean(MatrixMAOutgoing120(1:ncell4-1,4)),mean(MatrixMAOutgoing120(1:ncell5-1,5)),mean(MatrixMAOutgoing120(1:ncell6-1,6)),mean(MatrixMAOutgoing120(1:ncell7-1,7)),mean(MatrixMAOutgoing120(1:ncell8-1,8)),mean(MatrixMAOutgoing120(1:ncell9-1,9)),mean(MatrixMAOutgoing120(1:ncell10-1,10)),mean(MatrixMAOutgoing120(1:ncell11-1,11)),mean(MatrixMAOutgoing120(1:ncell12-1,12)),mean(MatrixMAOutgoing120(1:ncell13-1,13)),mean(MatrixMAOutgoing120(1:ncell14-1,14)),mean(MatrixMAOutgoing120(1:ncell15-1,15)),mean(MatrixMAOutgoing120(1:ncell16-1,16)),mean(MatrixMAOutgoing120(1:ncell17-1,17)),mean(MatrixMAOutgoing120(1:ncell18-1,18)),mean(MatrixMAOutgoing120(1:ncell19-1,19)),mean(MatrixMAOutgoing120(1:ncell20-1,20))];
    CellNum=CellNum+1;
    end
end

arraytable=table(MAVector);
nametable=strcat('MAPerCell1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);
MatrixMean(4,1:4)=mean(MAVector(:,12:15),1);

% HA
HAMatrixOutboundIndexes=MatrixHAOutgoing(:,1:2:end);
HAMatrixOutboundValues=MatrixHAOutgoing(:,2:2:end);
CellNum=1;
for icol=1:207
    if icol==102
    MatrixHAOutgoing120=[];
    ncell1=1;ncell2=1;ncell3=1;ncell4=1;ncell5=1;ncell6=1;ncell7=1;ncell8=1;ncell9=1;ncell10=1;ncell11=1;ncell12=1;ncell13=1;ncell14=1;ncell15=1;ncell16=1;ncell17=1;ncell18=1;ncell19=1;ncell20=1;
    for irow=1:1000
        if HAMatrixOutboundIndexes(irow,icol)==1
            MatrixHAOutgoing120(ncell1,1)=HAMatrixOutboundValues(irow,icol);
            ncell1=ncell1+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==2
            MatrixHAOutgoing120(ncell2,2)=HAMatrixOutboundValues(irow,icol);
            ncell2=ncell2+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==3
            MatrixHAOutgoing120(ncell3,3)=HAMatrixOutboundValues(irow,icol);
            ncell3=ncell3+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==4
            MatrixHAOutgoing120(ncell4,4)=HAMatrixOutboundValues(irow,icol);
            ncell4=ncell4+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==5
            MatrixHAOutgoing120(ncell5,5)=HAMatrixOutboundValues(irow,icol);
            ncell5=ncell5+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==6
            MatrixHAOutgoing120(ncell6,6)=HAMatrixOutboundValues(irow,icol);
            ncell6=ncell6+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==7
            MatrixHAOutgoing120(ncell7,7)=HAMatrixOutboundValues(irow,icol);
            ncell7=ncell7+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==8
            MatrixHAOutgoing120(ncell8,8)=HAMatrixOutboundValues(irow,icol);
            ncell8=ncell8+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==9
            MatrixHAOutgoing120(ncell9,9)=HAMatrixOutboundValues(irow,icol);
            ncell9=ncell9+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==10
            MatrixHAOutgoing120(ncell10,10)=HAMatrixOutboundValues(irow,icol);
            ncell10=ncell10+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==11
            MatrixHAOutgoing120(ncell11,11)=HAMatrixOutboundValues(irow,icol);
            ncell11=ncell11+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==12
            MatrixHAOutgoing120(ncell12,12)=HAMatrixOutboundValues(irow,icol);
            ncell12=ncell12+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==13
            MatrixHAOutgoing120(ncell13,13)=HAMatrixOutboundValues(irow,icol);
            ncell13=ncell13+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==14
            MatrixHAOutgoing120(ncell14,14)=HAMatrixOutboundValues(irow,icol);
            ncell14=ncell14+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==15
            MatrixHAOutgoing120(ncell15,15)=HAMatrixOutboundValues(irow,icol);
            ncell15=ncell15+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==16
            MatrixHAOutgoing120(ncell16,16)=HAMatrixOutboundValues(irow,icol);
            ncell16=ncell16+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==17
            MatrixHAOutgoing120(ncell17,17)=HAMatrixOutboundValues(irow,icol);
            ncell17=ncell17+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==18
            MatrixHAOutgoing120(ncell18,18)=HAMatrixOutboundValues(irow,icol);
            ncell18=ncell18+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==19
            MatrixHAOutgoing120(ncell19,19)=HAMatrixOutboundValues(irow,icol);
            ncell19=ncell19+1;
        elseif HAMatrixOutboundIndexes(irow,icol)==20
            MatrixHAOutgoing120(ncell20,20)=HAMatrixOutboundValues(irow,icol);
            ncell20=ncell20+1;
        end
    end
    HAVector(CellNum,1:20)=[mean(MatrixHAOutgoing120(1:ncell1-1,1)),mean(MatrixHAOutgoing120(1:ncell2-1,2)),mean(MatrixHAOutgoing120(1:ncell3-1,3)),mean(MatrixHAOutgoing120(1:ncell4-1,4)),mean(MatrixHAOutgoing120(1:ncell5-1,5)),mean(MatrixHAOutgoing120(1:ncell6-1,6)),mean(MatrixHAOutgoing120(1:ncell7-1,7)),mean(MatrixHAOutgoing120(1:ncell8-1,8)),mean(MatrixHAOutgoing120(1:ncell9-1,9)),mean(MatrixHAOutgoing120(1:ncell10-1,10)),mean(MatrixHAOutgoing120(1:ncell11-1,11)),mean(MatrixHAOutgoing120(1:ncell12-1,12)),mean(MatrixHAOutgoing120(1:ncell13-1,13)),mean(MatrixHAOutgoing120(1:ncell14-1,14)),mean(MatrixHAOutgoing120(1:ncell15-1,15)),mean(MatrixHAOutgoing120(1:ncell16-1,16)),mean(MatrixHAOutgoing120(1:ncell17-1,17)),mean(MatrixHAOutgoing120(1:ncell18-1,18)),mean(MatrixHAOutgoing120(1:ncell19-1,19)),mean(MatrixHAOutgoing120(1:ncell20-1,20))];
    CellNum=CellNum+1;
    end
end

arraytable=table(HAVector);
nametable=strcat('HAPerCell1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);
MatrixMean(5,1:4)=mean(HAVector(:,12:15),1);


%% ANALYSES
NAVector1215=NAVector(:,12:15);VLAVector1215=VLAVector(:,12:15);LAVector1215=LAVector(:,12:15);MAVector1215=MAVector(:,12:15);HAVector1215=HAVector(:,12:15);
Array1215(1:5,1:4)=[mean(NAVector1215,1);mean(VLAVector1215,1);mean(LAVector1215,1);mean(MAVector1215,1);mean(HAVector1215,1)];
OnlyMean1215(1,1:5)=[mean(NAVector1215(:));mean(VLAVector1215(:));mean(LAVector1215(:));mean(MAVector1215(:));mean(HAVector1215(:))];
MeanHM(1,1:5)=[mean(mean(NAVector1215,1));mean(mean(VLAVector1215,1));mean(mean(LAVector1215,1));mean(mean(MAVector1215,1));mean(mean(HAVector1215,1))];


NAVector1114=NAVector(:,11:14);VLAVector1114=VLAVector(:,11:14);LAVector1114=LAVector(:,11:14);MAVector1114=MAVector(:,11:14);HAVector1114=HAVector(:,11:14);
Array1114(1:5,1:4)=[mean(NAVector1114,1);mean(VLAVector1114,1);mean(LAVector1114,1);mean(MAVector1114,1);mean(HAVector1114,1)];
OnlyMean1114(1,1:5)=[mean(NAVector1114(:));mean(VLAVector1114(:));mean(LAVector1114(:));mean(MAVector1114(:));mean(HAVector1114(:))];

NAVector1216=NAVector(:,12:16);VLAVector1216=VLAVector(:,12:16);LAVector1216=LAVector(:,12:16);MAVector1216=MAVector(:,12:16);HAVector1216=HAVector(:,12:16);
Array1216(1:5,1:5)=[mean(NAVector1216,1,'omitnan');mean(VLAVector1216,1,'omitnan');mean(LAVector1216,1,'omitnan');mean(MAVector1216,1,'omitnan');mean(HAVector1216,1,'omitnan')];
OnlyMean1216(1,1:5)=[mean(NAVector1216(:),'omitnan');mean(VLAVector1216(:),'omitnan');mean(LAVector1216(:),'omitnan');mean(MAVector1216(:),'omitnan');mean(HAVector1216(:),'omitnan')];

%% Single cell 83 & 102
NAVector121583=NAVector(83,12:15);VLAVector121583=VLAVector(83,12:15);LAVector121583=LAVector(83,12:15);MAVector121583=MAVector(83,12:15);HAVector121583=HAVector(83,12:15);
Array121583(1,1:5)=[mean(NAVector121583),mean(VLAVector121583),mean(LAVector121583),mean(MAVector121583),mean(HAVector121583)];

NAVector1215102=NAVector(102,12:15);VLAVector1215102=VLAVector(102,12:15);LAVector1215102=LAVector(102,12:15);MAVector1215102=MAVector(102,12:15);HAVector1215102=HAVector(102,12:15);
Array1215102(1,1:5)=[mean(NAVector1215102),mean(VLAVector1215102),mean(LAVector1215102),mean(MAVector1215102),mean(HAVector1215102)];

NAVector121583=MatrixNAOutgoing120(:,12:15);VLAVector121583=MatrixVLAOutgoing120(:,12:15);LAVector121583=MatrixLAOutgoing120(:,12:15);MAVector121583=MatrixMAOutgoing120(:,12:15);HAVector121583=MatrixHAOutgoing120(:,12:15);
Array121583(1,1:5)=[mean(NAVector121583),mean(VLAVector121583),mean(LAVector121583),mean(MAVector121583),mean(HAVector121583)];

% Write single cells tables
MatrixNAOutgoing120Old=MatrixNAOutgoing120;
MatrixNAOutgoing120(MatrixNAOutgoing120==0)=nan;
arraytable=table(MatrixNAOutgoing120);
nametable=strcat('NASingleCell102Bins1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

MatrixVLAOutgoing120Old=MatrixVLAOutgoing120;
MatrixVLAOutgoing120(MatrixVLAOutgoing120==0)=nan;
arraytable=table(MatrixVLAOutgoing120);
nametable=strcat('VLASingleCell102Bins1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

MatrixLAOutgoing120Old=MatrixLAOutgoing120;
MatrixLAOutgoing120(MatrixLAOutgoing120==0)=nan;
arraytable=table(MatrixLAOutgoing120);
nametable=strcat('LASingleCell102Bins1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

MatrixMAOutgoing120Old=MatrixMAOutgoing120;
MatrixMAOutgoing120(MatrixMAOutgoing120==0)=nan;
arraytable=table(MatrixMAOutgoing120);
nametable=strcat('MASingleCell102Bins1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

MatrixHAOutgoing120Old=MatrixHAOutgoing120;
MatrixHAOutgoing120(MatrixHAOutgoing120==0)=nan;
arraytable=table(MatrixHAOutgoing120);
nametable=strcat('HASingleCell102Bins1-20.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);

end


