function [numbCells,MatrixAll]=FindRateRemappingLinearTotAscDesc(nameSess,nCells,numbCells,MatrixAll)

cd ('H:\carlo\FigPaperLTM\Speed\Speed');
TableSpeedAndFR = readtable(strcat([nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx']),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+5;
for indexCell = 6:(6+nCells-1)
    %Asc
    %%LvNC
    zscoredFRClosedNCAsc = SpeedAndFR(:,(IndexShift)*0+indexCell); zscoredFRClosedNCDesc = SpeedAndFR(:,(IndexShift)*11+indexCell);
    BinNCAsc = SpeedAndFR(:,(IndexShift)*0+5); BinNCDesc = SpeedAndFR(:,(IndexShift)*11+5);
    zscoredFRClosedNC=[zscoredFRClosedNCAsc];
    BinNC=[BinNCAsc];
    indexNC1=find(BinNC==1);indexNC2=find(BinNC==2);indexNC3=find(BinNC==3);indexNC4=find(BinNC==4);indexNC5=find(BinNC==5);indexNC6=find(BinNC==6);indexNC7=find(BinNC==7);indexNC8=find(BinNC==8);indexNC9=find(BinNC==9);indexNC10=find(BinNC==10);
    indexNC11=find(BinNC==11);indexNC12=find(BinNC==12);indexNC13=find(BinNC==13);indexNC14=find(BinNC==14);indexNC15=find(BinNC==15);indexNC16=find(BinNC==16);indexNC17=find(BinNC==17);indexNC18=find(BinNC==18);indexNC19=find(BinNC==19);indexNC20=find(BinNC==20);
    FRClosedNC=[mean(zscoredFRClosedNC(indexNC1)),mean(zscoredFRClosedNC(indexNC2)),mean(zscoredFRClosedNC(indexNC3)),mean(zscoredFRClosedNC(indexNC4)),mean(zscoredFRClosedNC(indexNC5)),mean(zscoredFRClosedNC(indexNC6))];
    FRCenterNC=[mean(zscoredFRClosedNC(indexNC7)),mean(zscoredFRClosedNC(indexNC8)),mean(zscoredFRClosedNC(indexNC9)),mean(zscoredFRClosedNC(indexNC10)),mean(zscoredFRClosedNC(indexNC11))];
    FROpenNC=[mean(zscoredFRClosedNC(indexNC12)),mean(zscoredFRClosedNC(indexNC13)),mean(zscoredFRClosedNC(indexNC14)),mean(zscoredFRClosedNC(indexNC15)),mean(zscoredFRClosedNC(indexNC16)),mean(zscoredFRClosedNC(indexNC17)),mean(zscoredFRClosedNC(indexNC18)),mean(zscoredFRClosedNC(indexNC19)),mean(zscoredFRClosedNC(indexNC20))];

    %%LvVLC
    zscoredFRClosedVLCAsc = SpeedAndFR(:,(IndexShift)*2+indexCell); zscoredFRClosedVLCDesc = SpeedAndFR(:,(IndexShift)*9+indexCell);
    BinVLCAsc = SpeedAndFR(:,(IndexShift)*2+5); BinVLCDesc = SpeedAndFR(:,(IndexShift)*9+5);
    zscoredFRClosedVLC=[zscoredFRClosedVLCAsc];
    BinVLC=[BinVLCAsc];
    indexVLC1=find(BinVLC==1);indexVLC2=find(BinVLC==2);indexVLC3=find(BinVLC==3);indexVLC4=find(BinVLC==4);indexVLC5=find(BinVLC==5);indexVLC6=find(BinVLC==6);indexVLC7=find(BinVLC==7);indexVLC8=find(BinVLC==8);indexVLC9=find(BinVLC==9);indexVLC10=find(BinVLC==10);
    indexVLC11=find(BinVLC==11);indexVLC12=find(BinVLC==12);indexVLC13=find(BinVLC==13);indexVLC14=find(BinVLC==14);indexVLC15=find(BinVLC==15);indexVLC16=find(BinVLC==16);indexVLC17=find(BinVLC==17);indexVLC18=find(BinVLC==18);indexVLC19=find(BinVLC==19);indexVLC20=find(BinVLC==20);
    FRClosedVLC=[mean(zscoredFRClosedVLC(indexVLC1)),mean(zscoredFRClosedVLC(indexVLC2)),mean(zscoredFRClosedVLC(indexVLC3)),mean(zscoredFRClosedVLC(indexVLC4)),mean(zscoredFRClosedVLC(indexVLC5)),mean(zscoredFRClosedVLC(indexVLC6))];
    FRCenterVLC=[mean(zscoredFRClosedVLC(indexVLC7)),mean(zscoredFRClosedVLC(indexVLC8)),mean(zscoredFRClosedVLC(indexVLC9)),mean(zscoredFRClosedVLC(indexVLC10)),mean(zscoredFRClosedVLC(indexVLC11))];
    FROpenVLC=[mean(zscoredFRClosedVLC(indexVLC12)),mean(zscoredFRClosedVLC(indexVLC13)),mean(zscoredFRClosedVLC(indexVLC14)),mean(zscoredFRClosedVLC(indexVLC15)),mean(zscoredFRClosedVLC(indexVLC16)),mean(zscoredFRClosedVLC(indexVLC17)),mean(zscoredFRClosedVLC(indexVLC18)),mean(zscoredFRClosedVLC(indexVLC19)),mean(zscoredFRClosedVLC(indexVLC20))];

    %%LvLC
    zscoredFRClosedLCAsc = SpeedAndFR(:,(IndexShift)*3+indexCell); zscoredFRClosedLCDesc = SpeedAndFR(:,(IndexShift)*8+indexCell);
    BinLCAsc = SpeedAndFR(:,(IndexShift)*3+5); BinLCDesc = SpeedAndFR(:,(IndexShift)*8+5);
    zscoredFRClosedLC=[zscoredFRClosedLCAsc];
    BinLC=[BinLCAsc];
    indexLC1=find(BinLC==1);indexLC2=find(BinLC==2);indexLC3=find(BinLC==3);indexLC4=find(BinLC==4);indexLC5=find(BinLC==5);indexLC6=find(BinLC==6);indexLC7=find(BinLC==7);indexLC8=find(BinLC==8);indexLC9=find(BinLC==9);indexLC10=find(BinLC==10);
    indexLC11=find(BinLC==11);indexLC12=find(BinLC==12);indexLC13=find(BinLC==13);indexLC14=find(BinLC==14);indexLC15=find(BinLC==15);indexLC16=find(BinLC==16);indexLC17=find(BinLC==17);indexLC18=find(BinLC==18);indexLC19=find(BinLC==19);indexLC20=find(BinLC==20);
    FRClosedLC=[mean(zscoredFRClosedLC(indexLC1)),mean(zscoredFRClosedLC(indexLC2)),mean(zscoredFRClosedLC(indexLC3)),mean(zscoredFRClosedLC(indexLC4)),mean(zscoredFRClosedLC(indexLC5)),mean(zscoredFRClosedLC(indexLC6))];
    FRCenterLC=[mean(zscoredFRClosedLC(indexLC7)),mean(zscoredFRClosedLC(indexLC8)),mean(zscoredFRClosedLC(indexLC9)),mean(zscoredFRClosedLC(indexLC10)),mean(zscoredFRClosedLC(indexLC11))];
    FROpenLC=[mean(zscoredFRClosedLC(indexLC12)),mean(zscoredFRClosedLC(indexLC13)),mean(zscoredFRClosedLC(indexLC14)),mean(zscoredFRClosedLC(indexLC15)),mean(zscoredFRClosedLC(indexLC16)),mean(zscoredFRClosedLC(indexLC17)),mean(zscoredFRClosedLC(indexLC18)),mean(zscoredFRClosedLC(indexLC19)),mean(zscoredFRClosedLC(indexLC20))];

    %%LvMC
    zscoredFRClosedMCAsc = SpeedAndFR(:,(IndexShift)*4+indexCell); zscoredFRClosedMCDesc = SpeedAndFR(:,(IndexShift)*7+indexCell);
    BinMCAsc = SpeedAndFR(:,(IndexShift)*4+5); BinMCDesc = SpeedAndFR(:,(IndexShift)*7+5);
    zscoredFRClosedMC=[zscoredFRClosedMCAsc;zscoredFRClosedMCDesc];
    BinMC=[BinMCAsc;BinMCDesc];
    indexMC1=find(BinMC==1);indexMC2=find(BinMC==2);indexMC3=find(BinMC==3);indexMC4=find(BinMC==4);indexMC5=find(BinMC==5);indexMC6=find(BinMC==6);indexMC7=find(BinMC==7);indexMC8=find(BinMC==8);indexMC9=find(BinMC==9);indexMC10=find(BinMC==10);
    indexMC11=find(BinMC==11);indexMC12=find(BinMC==12);indexMC13=find(BinMC==13);indexMC14=find(BinMC==14);indexMC15=find(BinMC==15);indexMC16=find(BinMC==16);indexMC17=find(BinMC==17);indexMC18=find(BinMC==18);indexMC19=find(BinMC==19);indexMC20=find(BinMC==20);
    FRClosedMC=[mean(zscoredFRClosedMC(indexMC1)),mean(zscoredFRClosedMC(indexMC2)),mean(zscoredFRClosedMC(indexMC3)),mean(zscoredFRClosedMC(indexMC4)),mean(zscoredFRClosedMC(indexMC5)),mean(zscoredFRClosedMC(indexMC6))];
    FRCenterMC=[mean(zscoredFRClosedMC(indexMC7)),mean(zscoredFRClosedMC(indexMC8)),mean(zscoredFRClosedMC(indexMC9)),mean(zscoredFRClosedMC(indexMC10)),mean(zscoredFRClosedMC(indexMC11))];
    FROpenMC=[mean(zscoredFRClosedMC(indexMC12)),mean(zscoredFRClosedMC(indexMC13)),mean(zscoredFRClosedMC(indexMC14)),mean(zscoredFRClosedMC(indexMC15)),mean(zscoredFRClosedMC(indexMC16)),mean(zscoredFRClosedMC(indexMC17)),mean(zscoredFRClosedMC(indexMC18)),mean(zscoredFRClosedMC(indexMC19)),mean(zscoredFRClosedMC(indexMC20))];
    
    %%LvHC
    zscoredFRClosedHCAsc = SpeedAndFR(:,(IndexShift)*5+indexCell); zscoredFRClosedHCDesc = SpeedAndFR(:,(IndexShift)*6+indexCell);
    BinHCAsc = SpeedAndFR(:,(IndexShift)*5+5); BinHCDesc = SpeedAndFR(:,(IndexShift)*6+5);
    zscoredFRClosedHC=[zscoredFRClosedHCAsc];
    BinHC=[BinHCAsc];
    indexHC1=find(BinHC==1);indexHC2=find(BinHC==2);indexHC3=find(BinHC==3);indexHC4=find(BinHC==4);indexHC5=find(BinHC==5);indexHC6=find(BinHC==6);indexHC7=find(BinHC==7);indexHC8=find(BinHC==8);indexHC9=find(BinHC==9);indexHC10=find(BinHC==10);
    indexHC11=find(BinHC==11);indexHC12=find(BinHC==12);indexHC13=find(BinHC==13);indexHC14=find(BinHC==14);indexHC15=find(BinHC==15);indexHC16=find(BinHC==16);indexHC17=find(BinHC==17);indexHC18=find(BinHC==18);indexHC19=find(BinHC==19);indexHC20=find(BinHC==20);
    FRClosedHC=[mean(zscoredFRClosedHC(indexHC1)),mean(zscoredFRClosedHC(indexHC2)),mean(zscoredFRClosedHC(indexHC3)),mean(zscoredFRClosedHC(indexHC4)),mean(zscoredFRClosedHC(indexHC5)),mean(zscoredFRClosedHC(indexHC6))];
    FRCenterHC=[mean(zscoredFRClosedHC(indexHC7)),mean(zscoredFRClosedHC(indexHC8)),mean(zscoredFRClosedHC(indexHC9)),mean(zscoredFRClosedHC(indexHC10)),mean(zscoredFRClosedHC(indexHC11))];
    FROpenHC=[mean(zscoredFRClosedHC(indexHC12)),mean(zscoredFRClosedHC(indexHC13)),mean(zscoredFRClosedHC(indexHC14)),mean(zscoredFRClosedHC(indexHC15)),mean(zscoredFRClosedHC(indexHC16)),mean(zscoredFRClosedHC(indexHC17)),mean(zscoredFRClosedHC(indexHC18)),mean(zscoredFRClosedHC(indexHC19)),mean(zscoredFRClosedHC(indexHC20))];

    
    MatrixOpen=[mean(FROpenNC,'omitnan'),mean(FROpenVLC,'omitnan'),mean(FROpenLC,'omitnan'),mean(FROpenMC,'omitnan'),mean(FROpenHC,'omitnan')];
%     MatrixOpen=[FROpenNC',FROpenVLC',FROpenLC',FROpenMC',FROpenHC'];
    SecondMatrix=[1:5];
    [rho p] = corr(MatrixOpen',SecondMatrix','Type','Spearman');
%     disp(p);

    if p<=0.05
        numbCells=numbCells+1;
        %%LvNCAsc
        indexNC1=find(BinNCAsc==1);indexNC2=find(BinNCAsc==2);indexNC3=find(BinNCAsc==3);indexNC4=find(BinNCAsc==4);indexNC5=find(BinNCAsc==5);indexNC6=find(BinNCAsc==6);indexNC7=find(BinNCAsc==7);indexNC8=find(BinNCAsc==8);indexNC9=find(BinNCAsc==9);indexNC10=find(BinNCAsc==10);
        indexNC11=find(BinNCAsc==11);indexNC12=find(BinNCAsc==12);indexNC13=find(BinNCAsc==13);indexNC14=find(BinNCAsc==14);indexNC15=find(BinNCAsc==15);indexNC16=find(BinNCAsc==16);indexNC17=find(BinNCAsc==17);indexNC18=find(BinNCAsc==18);indexNC19=find(BinNCAsc==19);indexNC20=find(BinNCAsc==20);
        FRClosedNCAsc(1,1:6)=[mean(zscoredFRClosedNCAsc(indexNC1)),mean(zscoredFRClosedNCAsc(indexNC2)),mean(zscoredFRClosedNCAsc(indexNC3)),mean(zscoredFRClosedNCAsc(indexNC4)),mean(zscoredFRClosedNCAsc(indexNC5)),mean(zscoredFRClosedNCAsc(indexNC6))];
        FRCenterNCAsc(1,1:5)=[mean(zscoredFRClosedNCAsc(indexNC7)),mean(zscoredFRClosedNCAsc(indexNC8)),mean(zscoredFRClosedNCAsc(indexNC9)),mean(zscoredFRClosedNCAsc(indexNC10)),mean(zscoredFRClosedNCAsc(indexNC11))];
        FROpenNCAsc(1,1:9)=[mean(zscoredFRClosedNCAsc(indexNC12)),mean(zscoredFRClosedNCAsc(indexNC13)),mean(zscoredFRClosedNCAsc(indexNC14)),mean(zscoredFRClosedNCAsc(indexNC15)),mean(zscoredFRClosedNCAsc(indexNC16)),mean(zscoredFRClosedNCAsc(indexNC17)),mean(zscoredFRClosedNCAsc(indexNC18)),mean(zscoredFRClosedNCAsc(indexNC19)),mean(zscoredFRClosedNCAsc(indexNC20))];

        %%LvVLCAsc
        indexVLC1=find(BinVLCAsc==1);indexVLC2=find(BinVLCAsc==2);indexVLC3=find(BinVLCAsc==3);indexVLC4=find(BinVLCAsc==4);indexVLC5=find(BinVLCAsc==5);indexVLC6=find(BinVLCAsc==6);indexVLC7=find(BinVLCAsc==7);indexVLC8=find(BinVLCAsc==8);indexVLC9=find(BinVLCAsc==9);indexVLC10=find(BinVLCAsc==10);
        indexVLC11=find(BinVLCAsc==11);indexVLC12=find(BinVLCAsc==12);indexVLC13=find(BinVLCAsc==13);indexVLC14=find(BinVLCAsc==14);indexVLC15=find(BinVLCAsc==15);indexVLC16=find(BinVLCAsc==16);indexVLC17=find(BinVLCAsc==17);indexVLC18=find(BinVLCAsc==18);indexVLC19=find(BinVLCAsc==19);indexVLC20=find(BinVLCAsc==20);
        FRClosedVLCAsc(1,1:6)=[mean(zscoredFRClosedVLCAsc(indexVLC1)),mean(zscoredFRClosedVLCAsc(indexVLC2)),mean(zscoredFRClosedVLCAsc(indexVLC3)),mean(zscoredFRClosedVLCAsc(indexVLC4)),mean(zscoredFRClosedVLCAsc(indexVLC5)),mean(zscoredFRClosedVLCAsc(indexVLC6))];
        FRCenterVLCAsc(1,1:5)=[mean(zscoredFRClosedVLCAsc(indexVLC7)),mean(zscoredFRClosedVLCAsc(indexVLC8)),mean(zscoredFRClosedVLCAsc(indexVLC9)),mean(zscoredFRClosedVLCAsc(indexVLC10)),mean(zscoredFRClosedVLCAsc(indexVLC11))];
        FROpenVLCAsc(1,1:9)=[mean(zscoredFRClosedVLCAsc(indexVLC12)),mean(zscoredFRClosedVLCAsc(indexVLC13)),mean(zscoredFRClosedVLCAsc(indexVLC14)),mean(zscoredFRClosedVLCAsc(indexVLC15)),mean(zscoredFRClosedVLCAsc(indexVLC16)),mean(zscoredFRClosedVLCAsc(indexVLC17)),mean(zscoredFRClosedVLCAsc(indexVLC18)),mean(zscoredFRClosedVLCAsc(indexVLC19)),mean(zscoredFRClosedVLCAsc(indexVLC20))];

        %%LvLCAsc
        indexLC1=find(BinLCAsc==1);indexLC2=find(BinLCAsc==2);indexLC3=find(BinLCAsc==3);indexLC4=find(BinLCAsc==4);indexLC5=find(BinLCAsc==5);indexLC6=find(BinLCAsc==6);indexLC7=find(BinLCAsc==7);indexLC8=find(BinLCAsc==8);indexLC9=find(BinLCAsc==9);indexLC10=find(BinLCAsc==10);
        indexLC11=find(BinLCAsc==11);indexLC12=find(BinLCAsc==12);indexLC13=find(BinLCAsc==13);indexLC14=find(BinLCAsc==14);indexLC15=find(BinLCAsc==15);indexLC16=find(BinLCAsc==16);indexLC17=find(BinLCAsc==17);indexLC18=find(BinLCAsc==18);indexLC19=find(BinLCAsc==19);indexLC20=find(BinLCAsc==20);
        FRClosedLCAsc(1,1:6)=[mean(zscoredFRClosedLCAsc(indexLC1)),mean(zscoredFRClosedLCAsc(indexLC2)),mean(zscoredFRClosedLCAsc(indexLC3)),mean(zscoredFRClosedLCAsc(indexLC4)),mean(zscoredFRClosedLCAsc(indexLC5)),mean(zscoredFRClosedLCAsc(indexLC6))];
        FRCenterLCAsc(1,1:5)=[mean(zscoredFRClosedLCAsc(indexLC7)),mean(zscoredFRClosedLCAsc(indexLC8)),mean(zscoredFRClosedLCAsc(indexLC9)),mean(zscoredFRClosedLCAsc(indexLC10)),mean(zscoredFRClosedLCAsc(indexLC11))];
        FROpenLCAsc(1,1:9)=[mean(zscoredFRClosedLCAsc(indexLC12)),mean(zscoredFRClosedLCAsc(indexLC13)),mean(zscoredFRClosedLCAsc(indexLC14)),mean(zscoredFRClosedLCAsc(indexLC15)),mean(zscoredFRClosedLCAsc(indexLC16)),mean(zscoredFRClosedLCAsc(indexLC17)),mean(zscoredFRClosedLCAsc(indexLC18)),mean(zscoredFRClosedLCAsc(indexLC19)),mean(zscoredFRClosedLCAsc(indexLC20))];

        %%LvMCAsc
        indexMC1=find(BinMCAsc==1);indexMC2=find(BinMCAsc==2);indexMC3=find(BinMCAsc==3);indexMC4=find(BinMCAsc==4);indexMC5=find(BinMCAsc==5);indexMC6=find(BinMCAsc==6);indexMC7=find(BinMCAsc==7);indexMC8=find(BinMCAsc==8);indexMC9=find(BinMCAsc==9);indexMC10=find(BinMCAsc==10);
        indexMC11=find(BinMCAsc==11);indexMC12=find(BinMCAsc==12);indexMC13=find(BinMCAsc==13);indexMC14=find(BinMCAsc==14);indexMC15=find(BinMCAsc==15);indexMC16=find(BinMCAsc==16);indexMC17=find(BinMCAsc==17);indexMC18=find(BinMCAsc==18);indexMC19=find(BinMCAsc==19);indexMC20=find(BinMCAsc==20);
        FRClosedMCAsc(1,1:6)=[mean(zscoredFRClosedMCAsc(indexMC1)),mean(zscoredFRClosedMCAsc(indexMC2)),mean(zscoredFRClosedMCAsc(indexMC3)),mean(zscoredFRClosedMCAsc(indexMC4)),mean(zscoredFRClosedMCAsc(indexMC5)),mean(zscoredFRClosedMCAsc(indexMC6))];
        FRCenterMCAsc(1,1:5)=[mean(zscoredFRClosedMCAsc(indexMC7)),mean(zscoredFRClosedMCAsc(indexMC8)),mean(zscoredFRClosedMCAsc(indexMC9)),mean(zscoredFRClosedMCAsc(indexMC10)),mean(zscoredFRClosedMCAsc(indexMC11))];
        FROpenMCAsc(1,1:9)=[mean(zscoredFRClosedMCAsc(indexMC12)),mean(zscoredFRClosedMCAsc(indexMC13)),mean(zscoredFRClosedMCAsc(indexMC14)),mean(zscoredFRClosedMCAsc(indexMC15)),mean(zscoredFRClosedMCAsc(indexMC16)),mean(zscoredFRClosedMCAsc(indexMC17)),mean(zscoredFRClosedMCAsc(indexMC18)),mean(zscoredFRClosedMCAsc(indexMC19)),mean(zscoredFRClosedMCAsc(indexMC20))];

        %%LvHCAsc
        indexHC1=find(BinHCAsc==1);indexHC2=find(BinHCAsc==2);indexHC3=find(BinHCAsc==3);indexHC4=find(BinHCAsc==4);indexHC5=find(BinHCAsc==5);indexHC6=find(BinHCAsc==6);indexHC7=find(BinHCAsc==7);indexHC8=find(BinHCAsc==8);indexHC9=find(BinHCAsc==9);indexHC10=find(BinHCAsc==10);
        indexHC11=find(BinHCAsc==11);indexHC12=find(BinHCAsc==12);indexHC13=find(BinHCAsc==13);indexHC14=find(BinHCAsc==14);indexHC15=find(BinHCAsc==15);indexHC16=find(BinHCAsc==16);indexHC17=find(BinHCAsc==17);indexHC18=find(BinHCAsc==18);indexHC19=find(BinHCAsc==19);indexHC20=find(BinHCAsc==20);
        FRClosedHCAsc(1,1:6)=[mean(zscoredFRClosedHCAsc(indexHC1)),mean(zscoredFRClosedHCAsc(indexHC2)),mean(zscoredFRClosedHCAsc(indexHC3)),mean(zscoredFRClosedHCAsc(indexHC4)),mean(zscoredFRClosedHCAsc(indexHC5)),mean(zscoredFRClosedHCAsc(indexHC6))];
        FRCenterHCAsc(1,1:5)=[mean(zscoredFRClosedHCAsc(indexHC7)),mean(zscoredFRClosedHCAsc(indexHC8)),mean(zscoredFRClosedHCAsc(indexHC9)),mean(zscoredFRClosedHCAsc(indexHC10)),mean(zscoredFRClosedHCAsc(indexHC11))];
        FROpenHCAsc(1,1:9)=[mean(zscoredFRClosedHCAsc(indexHC12)),mean(zscoredFRClosedHCAsc(indexHC13)),mean(zscoredFRClosedHCAsc(indexHC14)),mean(zscoredFRClosedHCAsc(indexHC15)),mean(zscoredFRClosedHCAsc(indexHC16)),mean(zscoredFRClosedHCAsc(indexHC17)),mean(zscoredFRClosedHCAsc(indexHC18)),mean(zscoredFRClosedHCAsc(indexHC19)),mean(zscoredFRClosedHCAsc(indexHC20))];

        %%LvNCDesc
        indexNC1=find(BinNCDesc==1);indexNC2=find(BinNCDesc==2);indexNC3=find(BinNCDesc==3);indexNC4=find(BinNCDesc==4);indexNC5=find(BinNCDesc==5);indexNC6=find(BinNCDesc==6);indexNC7=find(BinNCDesc==7);indexNC8=find(BinNCDesc==8);indexNC9=find(BinNCDesc==9);indexNC10=find(BinNCDesc==10);
        indexNC11=find(BinNCDesc==11);indexNC12=find(BinNCDesc==12);indexNC13=find(BinNCDesc==13);indexNC14=find(BinNCDesc==14);indexNC15=find(BinNCDesc==15);indexNC16=find(BinNCDesc==16);indexNC17=find(BinNCDesc==17);indexNC18=find(BinNCDesc==18);indexNC19=find(BinNCDesc==19);indexNC20=find(BinNCDesc==20);
        FRClosedNCDesc(1,1:6)=[mean(zscoredFRClosedNCDesc(indexNC1)),mean(zscoredFRClosedNCDesc(indexNC2)),mean(zscoredFRClosedNCDesc(indexNC3)),mean(zscoredFRClosedNCDesc(indexNC4)),mean(zscoredFRClosedNCDesc(indexNC5)),mean(zscoredFRClosedNCDesc(indexNC6))];
        FRCenterNCDesc(1,1:5)=[mean(zscoredFRClosedNCDesc(indexNC7)),mean(zscoredFRClosedNCDesc(indexNC8)),mean(zscoredFRClosedNCDesc(indexNC9)),mean(zscoredFRClosedNCDesc(indexNC10)),mean(zscoredFRClosedNCDesc(indexNC11))];
        FROpenNCDesc(1,1:9)=[mean(zscoredFRClosedNCDesc(indexNC12)),mean(zscoredFRClosedNCDesc(indexNC13)),mean(zscoredFRClosedNCDesc(indexNC14)),mean(zscoredFRClosedNCDesc(indexNC15)),mean(zscoredFRClosedNCDesc(indexNC16)),mean(zscoredFRClosedNCDesc(indexNC17)),mean(zscoredFRClosedNCDesc(indexNC18)),mean(zscoredFRClosedNCDesc(indexNC19)),mean(zscoredFRClosedNCDesc(indexNC20))];

        %%LvVLCDesc
        indexVLC1=find(BinVLCDesc==1);indexVLC2=find(BinVLCDesc==2);indexVLC3=find(BinVLCDesc==3);indexVLC4=find(BinVLCDesc==4);indexVLC5=find(BinVLCDesc==5);indexVLC6=find(BinVLCDesc==6);indexVLC7=find(BinVLCDesc==7);indexVLC8=find(BinVLCDesc==8);indexVLC9=find(BinVLCDesc==9);indexVLC10=find(BinVLCDesc==10);
        indexVLC11=find(BinVLCDesc==11);indexVLC12=find(BinVLCDesc==12);indexVLC13=find(BinVLCDesc==13);indexVLC14=find(BinVLCDesc==14);indexVLC15=find(BinVLCDesc==15);indexVLC16=find(BinVLCDesc==16);indexVLC17=find(BinVLCDesc==17);indexVLC18=find(BinVLCDesc==18);indexVLC19=find(BinVLCDesc==19);indexVLC20=find(BinVLCDesc==20);
        FRClosedVLCDesc(1,1:6)=[mean(zscoredFRClosedVLCDesc(indexVLC1)),mean(zscoredFRClosedVLCDesc(indexVLC2)),mean(zscoredFRClosedVLCDesc(indexVLC3)),mean(zscoredFRClosedVLCDesc(indexVLC4)),mean(zscoredFRClosedVLCDesc(indexVLC5)),mean(zscoredFRClosedVLCDesc(indexVLC6))];
        FRCenterVLCDesc(1,1:5)=[mean(zscoredFRClosedVLCDesc(indexVLC7)),mean(zscoredFRClosedVLCDesc(indexVLC8)),mean(zscoredFRClosedVLCDesc(indexVLC9)),mean(zscoredFRClosedVLCDesc(indexVLC10)),mean(zscoredFRClosedVLCDesc(indexVLC11))];
        FROpenVLCDesc(1,1:9)=[mean(zscoredFRClosedVLCDesc(indexVLC12)),mean(zscoredFRClosedVLCDesc(indexVLC13)),mean(zscoredFRClosedVLCDesc(indexVLC14)),mean(zscoredFRClosedVLCDesc(indexVLC15)),mean(zscoredFRClosedVLCDesc(indexVLC16)),mean(zscoredFRClosedVLCDesc(indexVLC17)),mean(zscoredFRClosedVLCDesc(indexVLC18)),mean(zscoredFRClosedVLCDesc(indexVLC19)),mean(zscoredFRClosedVLCDesc(indexVLC20))];

        %%LvLCDesc
        indexLC1=find(BinLCDesc==1);indexLC2=find(BinLCDesc==2);indexLC3=find(BinLCDesc==3);indexLC4=find(BinLCDesc==4);indexLC5=find(BinLCDesc==5);indexLC6=find(BinLCDesc==6);indexLC7=find(BinLCDesc==7);indexLC8=find(BinLCDesc==8);indexLC9=find(BinLCDesc==9);indexLC10=find(BinLCDesc==10);
        indexLC11=find(BinLCDesc==11);indexLC12=find(BinLCDesc==12);indexLC13=find(BinLCDesc==13);indexLC14=find(BinLCDesc==14);indexLC15=find(BinLCDesc==15);indexLC16=find(BinLCDesc==16);indexLC17=find(BinLCDesc==17);indexLC18=find(BinLCDesc==18);indexLC19=find(BinLCDesc==19);indexLC20=find(BinLCDesc==20);
        FRClosedLCDesc(1,1:6)=[mean(zscoredFRClosedLCDesc(indexLC1)),mean(zscoredFRClosedLCDesc(indexLC2)),mean(zscoredFRClosedLCDesc(indexLC3)),mean(zscoredFRClosedLCDesc(indexLC4)),mean(zscoredFRClosedLCDesc(indexLC5)),mean(zscoredFRClosedLCDesc(indexLC6))];
        FRCenterLCDesc(1,1:5)=[mean(zscoredFRClosedLCDesc(indexLC7)),mean(zscoredFRClosedLCDesc(indexLC8)),mean(zscoredFRClosedLCDesc(indexLC9)),mean(zscoredFRClosedLCDesc(indexLC10)),mean(zscoredFRClosedLCDesc(indexLC11))];
        FROpenLCDesc(1,1:9)=[mean(zscoredFRClosedLCDesc(indexLC12)),mean(zscoredFRClosedLCDesc(indexLC13)),mean(zscoredFRClosedLCDesc(indexLC14)),mean(zscoredFRClosedLCDesc(indexLC15)),mean(zscoredFRClosedLCDesc(indexLC16)),mean(zscoredFRClosedLCDesc(indexLC17)),mean(zscoredFRClosedLCDesc(indexLC18)),mean(zscoredFRClosedLCDesc(indexLC19)),mean(zscoredFRClosedLCDesc(indexLC20))];

        %%LvMCDesc
        indexMC1=find(BinMCDesc==1);indexMC2=find(BinMCDesc==2);indexMC3=find(BinMCDesc==3);indexMC4=find(BinMCDesc==4);indexMC5=find(BinMCDesc==5);indexMC6=find(BinMCDesc==6);indexMC7=find(BinMCDesc==7);indexMC8=find(BinMCDesc==8);indexMC9=find(BinMCDesc==9);indexMC10=find(BinMCDesc==10);
        indexMC11=find(BinMCDesc==11);indexMC12=find(BinMCDesc==12);indexMC13=find(BinMCDesc==13);indexMC14=find(BinMCDesc==14);indexMC15=find(BinMCDesc==15);indexMC16=find(BinMCDesc==16);indexMC17=find(BinMCDesc==17);indexMC18=find(BinMCDesc==18);indexMC19=find(BinMCDesc==19);indexMC20=find(BinMCDesc==20);
        FRClosedMCDesc(1,1:6)=[mean(zscoredFRClosedMCDesc(indexMC1)),mean(zscoredFRClosedMCDesc(indexMC2)),mean(zscoredFRClosedMCDesc(indexMC3)),mean(zscoredFRClosedMCDesc(indexMC4)),mean(zscoredFRClosedMCDesc(indexMC5)),mean(zscoredFRClosedMCDesc(indexMC6))];
        FRCenterMCDesc(1,1:5)=[mean(zscoredFRClosedMCDesc(indexMC7)),mean(zscoredFRClosedMCDesc(indexMC8)),mean(zscoredFRClosedMCDesc(indexMC9)),mean(zscoredFRClosedMCDesc(indexMC10)),mean(zscoredFRClosedMCDesc(indexMC11))];
        FROpenMCDesc(1,1:9)=[mean(zscoredFRClosedMCDesc(indexMC12)),mean(zscoredFRClosedMCDesc(indexMC13)),mean(zscoredFRClosedMCDesc(indexMC14)),mean(zscoredFRClosedMCDesc(indexMC15)),mean(zscoredFRClosedMCDesc(indexMC16)),mean(zscoredFRClosedMCDesc(indexMC17)),mean(zscoredFRClosedMCDesc(indexMC18)),mean(zscoredFRClosedMCDesc(indexMC19)),mean(zscoredFRClosedMCDesc(indexMC20))];

        %%LvHCDesc
        indexHC1=find(BinHCDesc==1);indexHC2=find(BinHCDesc==2);indexHC3=find(BinHCDesc==3);indexHC4=find(BinHCDesc==4);indexHC5=find(BinHCDesc==5);indexHC6=find(BinHCDesc==6);indexHC7=find(BinHCDesc==7);indexHC8=find(BinHCDesc==8);indexHC9=find(BinHCDesc==9);indexHC10=find(BinHCDesc==10);
        indexHC11=find(BinHCDesc==11);indexHC12=find(BinHCDesc==12);indexHC13=find(BinHCDesc==13);indexHC14=find(BinHCDesc==14);indexHC15=find(BinHCDesc==15);indexHC16=find(BinHCDesc==16);indexHC17=find(BinHCDesc==17);indexHC18=find(BinHCDesc==18);indexHC19=find(BinHCDesc==19);indexHC20=find(BinHCDesc==20);
        FRClosedHCDesc(1,1:6)=[mean(zscoredFRClosedHCDesc(indexHC1)),mean(zscoredFRClosedHCDesc(indexHC2)),mean(zscoredFRClosedHCDesc(indexHC3)),mean(zscoredFRClosedHCDesc(indexHC4)),mean(zscoredFRClosedHCDesc(indexHC5)),mean(zscoredFRClosedHCDesc(indexHC6))];
        FRCenterHCDesc(1,1:5)=[mean(zscoredFRClosedHCDesc(indexHC7)),mean(zscoredFRClosedHCDesc(indexHC8)),mean(zscoredFRClosedHCDesc(indexHC9)),mean(zscoredFRClosedHCDesc(indexHC10)),mean(zscoredFRClosedHCDesc(indexHC11))];
        FROpenHCDesc(1,1:9)=[mean(zscoredFRClosedHCDesc(indexHC12)),mean(zscoredFRClosedHCDesc(indexHC13)),mean(zscoredFRClosedHCDesc(indexHC14)),mean(zscoredFRClosedHCDesc(indexHC15)),mean(zscoredFRClosedHCDesc(indexHC16)),mean(zscoredFRClosedHCDesc(indexHC17)),mean(zscoredFRClosedHCDesc(indexHC18)),mean(zscoredFRClosedHCDesc(indexHC19)),mean(zscoredFRClosedHCDesc(indexHC20))];

        %AllTogether
        MatrixAll(numbCells,1:200)=[FRClosedNCAsc,FRCenterNCAsc,FROpenNCAsc,FRClosedVLCAsc,FRCenterVLCAsc,FROpenVLCAsc,FRClosedLCAsc,FRCenterLCAsc,FROpenLCAsc,FRClosedMCAsc,FRCenterMCAsc,FROpenMCAsc,FRClosedHCAsc,FRCenterHCAsc,FROpenHCAsc,FRClosedNCDesc,FRCenterNCDesc,FROpenNCDesc,FRClosedVLCDesc,FRCenterVLCDesc,FROpenVLCDesc,FRClosedLCDesc,FRCenterLCDesc,FROpenLCDesc,FRClosedMCDesc,FRCenterMCDesc,FROpenMCDesc,FRClosedHCDesc,FRCenterHCDesc,FROpenHCDesc];

    end

    %Asc
    %%LvNC
    zscoredFRClosedNCAsc = SpeedAndFR(:,(IndexShift)*0+indexCell); zscoredFRClosedNCDesc = SpeedAndFR(:,(IndexShift)*11+indexCell);
    BinNCAsc = SpeedAndFR(:,(IndexShift)*0+5); BinNCDesc = SpeedAndFR(:,(IndexShift)*11+5);
    zscoredFRClosedNC=[zscoredFRClosedNCDesc];
    BinNC=[BinNCDesc];
    indexNC1=find(BinNC==1);indexNC2=find(BinNC==2);indexNC3=find(BinNC==3);indexNC4=find(BinNC==4);indexNC5=find(BinNC==5);indexNC6=find(BinNC==6);indexNC7=find(BinNC==7);indexNC8=find(BinNC==8);indexNC9=find(BinNC==9);indexNC10=find(BinNC==10);
    indexNC11=find(BinNC==11);indexNC12=find(BinNC==12);indexNC13=find(BinNC==13);indexNC14=find(BinNC==14);indexNC15=find(BinNC==15);indexNC16=find(BinNC==16);indexNC17=find(BinNC==17);indexNC18=find(BinNC==18);indexNC19=find(BinNC==19);indexNC20=find(BinNC==20);
    FRClosedNC=[mean(zscoredFRClosedNC(indexNC1)),mean(zscoredFRClosedNC(indexNC2)),mean(zscoredFRClosedNC(indexNC3)),mean(zscoredFRClosedNC(indexNC4)),mean(zscoredFRClosedNC(indexNC5)),mean(zscoredFRClosedNC(indexNC6))];
    FRCenterNC=[mean(zscoredFRClosedNC(indexNC7)),mean(zscoredFRClosedNC(indexNC8)),mean(zscoredFRClosedNC(indexNC9)),mean(zscoredFRClosedNC(indexNC10)),mean(zscoredFRClosedNC(indexNC11))];
    FROpenNC=[mean(zscoredFRClosedNC(indexNC12)),mean(zscoredFRClosedNC(indexNC13)),mean(zscoredFRClosedNC(indexNC14)),mean(zscoredFRClosedNC(indexNC15)),mean(zscoredFRClosedNC(indexNC16)),mean(zscoredFRClosedNC(indexNC17)),mean(zscoredFRClosedNC(indexNC18)),mean(zscoredFRClosedNC(indexNC19)),mean(zscoredFRClosedNC(indexNC20))];

    %%LvVLC
    zscoredFRClosedVLCAsc = SpeedAndFR(:,(IndexShift)*2+indexCell); zscoredFRClosedVLCDesc = SpeedAndFR(:,(IndexShift)*9+indexCell);
    BinVLCAsc = SpeedAndFR(:,(IndexShift)*2+5); BinVLCDesc = SpeedAndFR(:,(IndexShift)*9+5);
    zscoredFRClosedVLC=[zscoredFRClosedVLCDesc];
    BinVLC=[BinVLCDesc];
    indexVLC1=find(BinVLC==1);indexVLC2=find(BinVLC==2);indexVLC3=find(BinVLC==3);indexVLC4=find(BinVLC==4);indexVLC5=find(BinVLC==5);indexVLC6=find(BinVLC==6);indexVLC7=find(BinVLC==7);indexVLC8=find(BinVLC==8);indexVLC9=find(BinVLC==9);indexVLC10=find(BinVLC==10);
    indexVLC11=find(BinVLC==11);indexVLC12=find(BinVLC==12);indexVLC13=find(BinVLC==13);indexVLC14=find(BinVLC==14);indexVLC15=find(BinVLC==15);indexVLC16=find(BinVLC==16);indexVLC17=find(BinVLC==17);indexVLC18=find(BinVLC==18);indexVLC19=find(BinVLC==19);indexVLC20=find(BinVLC==20);
    FRClosedVLC=[mean(zscoredFRClosedVLC(indexVLC1)),mean(zscoredFRClosedVLC(indexVLC2)),mean(zscoredFRClosedVLC(indexVLC3)),mean(zscoredFRClosedVLC(indexVLC4)),mean(zscoredFRClosedVLC(indexVLC5)),mean(zscoredFRClosedVLC(indexVLC6))];
    FRCenterVLC=[mean(zscoredFRClosedVLC(indexVLC7)),mean(zscoredFRClosedVLC(indexVLC8)),mean(zscoredFRClosedVLC(indexVLC9)),mean(zscoredFRClosedVLC(indexVLC10)),mean(zscoredFRClosedVLC(indexVLC11))];
    FROpenVLC=[mean(zscoredFRClosedVLC(indexVLC12)),mean(zscoredFRClosedVLC(indexVLC13)),mean(zscoredFRClosedVLC(indexVLC14)),mean(zscoredFRClosedVLC(indexVLC15)),mean(zscoredFRClosedVLC(indexVLC16)),mean(zscoredFRClosedVLC(indexVLC17)),mean(zscoredFRClosedVLC(indexVLC18)),mean(zscoredFRClosedVLC(indexVLC19)),mean(zscoredFRClosedVLC(indexVLC20))];

    %%LvLC
    zscoredFRClosedLCAsc = SpeedAndFR(:,(IndexShift)*3+indexCell); zscoredFRClosedLCDesc = SpeedAndFR(:,(IndexShift)*8+indexCell);
    BinLCAsc = SpeedAndFR(:,(IndexShift)*3+5); BinLCDesc = SpeedAndFR(:,(IndexShift)*8+5);
    zscoredFRClosedLC=[zscoredFRClosedLCDesc];
    BinLC=[BinLCDesc];
    indexLC1=find(BinLC==1);indexLC2=find(BinLC==2);indexLC3=find(BinLC==3);indexLC4=find(BinLC==4);indexLC5=find(BinLC==5);indexLC6=find(BinLC==6);indexLC7=find(BinLC==7);indexLC8=find(BinLC==8);indexLC9=find(BinLC==9);indexLC10=find(BinLC==10);
    indexLC11=find(BinLC==11);indexLC12=find(BinLC==12);indexLC13=find(BinLC==13);indexLC14=find(BinLC==14);indexLC15=find(BinLC==15);indexLC16=find(BinLC==16);indexLC17=find(BinLC==17);indexLC18=find(BinLC==18);indexLC19=find(BinLC==19);indexLC20=find(BinLC==20);
    FRClosedLC=[mean(zscoredFRClosedLC(indexLC1)),mean(zscoredFRClosedLC(indexLC2)),mean(zscoredFRClosedLC(indexLC3)),mean(zscoredFRClosedLC(indexLC4)),mean(zscoredFRClosedLC(indexLC5)),mean(zscoredFRClosedLC(indexLC6))];
    FRCenterLC=[mean(zscoredFRClosedLC(indexLC7)),mean(zscoredFRClosedLC(indexLC8)),mean(zscoredFRClosedLC(indexLC9)),mean(zscoredFRClosedLC(indexLC10)),mean(zscoredFRClosedLC(indexLC11))];
    FROpenLC=[mean(zscoredFRClosedLC(indexLC12)),mean(zscoredFRClosedLC(indexLC13)),mean(zscoredFRClosedLC(indexLC14)),mean(zscoredFRClosedLC(indexLC15)),mean(zscoredFRClosedLC(indexLC16)),mean(zscoredFRClosedLC(indexLC17)),mean(zscoredFRClosedLC(indexLC18)),mean(zscoredFRClosedLC(indexLC19)),mean(zscoredFRClosedLC(indexLC20))];

    %%LvMC
    zscoredFRClosedMCAsc = SpeedAndFR(:,(IndexShift)*4+indexCell); zscoredFRClosedMCDesc = SpeedAndFR(:,(IndexShift)*7+indexCell);
    BinMCAsc = SpeedAndFR(:,(IndexShift)*4+5); BinMCDesc = SpeedAndFR(:,(IndexShift)*7+5);
    zscoredFRClosedMC=[zscoredFRClosedMCDesc];
    BinMC=[BinMCDesc];
    indexMC1=find(BinMC==1);indexMC2=find(BinMC==2);indexMC3=find(BinMC==3);indexMC4=find(BinMC==4);indexMC5=find(BinMC==5);indexMC6=find(BinMC==6);indexMC7=find(BinMC==7);indexMC8=find(BinMC==8);indexMC9=find(BinMC==9);indexMC10=find(BinMC==10);
    indexMC11=find(BinMC==11);indexMC12=find(BinMC==12);indexMC13=find(BinMC==13);indexMC14=find(BinMC==14);indexMC15=find(BinMC==15);indexMC16=find(BinMC==16);indexMC17=find(BinMC==17);indexMC18=find(BinMC==18);indexMC19=find(BinMC==19);indexMC20=find(BinMC==20);
    FRClosedMC=[mean(zscoredFRClosedMC(indexMC1)),mean(zscoredFRClosedMC(indexMC2)),mean(zscoredFRClosedMC(indexMC3)),mean(zscoredFRClosedMC(indexMC4)),mean(zscoredFRClosedMC(indexMC5)),mean(zscoredFRClosedMC(indexMC6))];
    FRCenterMC=[mean(zscoredFRClosedMC(indexMC7)),mean(zscoredFRClosedMC(indexMC8)),mean(zscoredFRClosedMC(indexMC9)),mean(zscoredFRClosedMC(indexMC10)),mean(zscoredFRClosedMC(indexMC11))];
    FROpenMC=[mean(zscoredFRClosedMC(indexMC12)),mean(zscoredFRClosedMC(indexMC13)),mean(zscoredFRClosedMC(indexMC14)),mean(zscoredFRClosedMC(indexMC15)),mean(zscoredFRClosedMC(indexMC16)),mean(zscoredFRClosedMC(indexMC17)),mean(zscoredFRClosedMC(indexMC18)),mean(zscoredFRClosedMC(indexMC19)),mean(zscoredFRClosedMC(indexMC20))];
    
    %%LvHC
    zscoredFRClosedHCAsc = SpeedAndFR(:,(IndexShift)*5+indexCell); zscoredFRClosedHCDesc = SpeedAndFR(:,(IndexShift)*6+indexCell);
    BinHCAsc = SpeedAndFR(:,(IndexShift)*5+5); BinHCDesc = SpeedAndFR(:,(IndexShift)*6+5);
    zscoredFRClosedHC=[zscoredFRClosedHCDesc];
    BinHC=[BinHCDesc];
    indexHC1=find(BinHC==1);indexHC2=find(BinHC==2);indexHC3=find(BinHC==3);indexHC4=find(BinHC==4);indexHC5=find(BinHC==5);indexHC6=find(BinHC==6);indexHC7=find(BinHC==7);indexHC8=find(BinHC==8);indexHC9=find(BinHC==9);indexHC10=find(BinHC==10);
    indexHC11=find(BinHC==11);indexHC12=find(BinHC==12);indexHC13=find(BinHC==13);indexHC14=find(BinHC==14);indexHC15=find(BinHC==15);indexHC16=find(BinHC==16);indexHC17=find(BinHC==17);indexHC18=find(BinHC==18);indexHC19=find(BinHC==19);indexHC20=find(BinHC==20);
    FRClosedHC=[mean(zscoredFRClosedHC(indexHC1)),mean(zscoredFRClosedHC(indexHC2)),mean(zscoredFRClosedHC(indexHC3)),mean(zscoredFRClosedHC(indexHC4)),mean(zscoredFRClosedHC(indexHC5)),mean(zscoredFRClosedHC(indexHC6))];
    FRCenterHC=[mean(zscoredFRClosedHC(indexHC7)),mean(zscoredFRClosedHC(indexHC8)),mean(zscoredFRClosedHC(indexHC9)),mean(zscoredFRClosedHC(indexHC10)),mean(zscoredFRClosedHC(indexHC11))];
    FROpenHC=[mean(zscoredFRClosedHC(indexHC12)),mean(zscoredFRClosedHC(indexHC13)),mean(zscoredFRClosedHC(indexHC14)),mean(zscoredFRClosedHC(indexHC15)),mean(zscoredFRClosedHC(indexHC16)),mean(zscoredFRClosedHC(indexHC17)),mean(zscoredFRClosedHC(indexHC18)),mean(zscoredFRClosedHC(indexHC19)),mean(zscoredFRClosedHC(indexHC20))];

    
    MatrixOpen=[mean(FROpenNC,'omitnan'),mean(FROpenVLC,'omitnan'),mean(FROpenLC,'omitnan'),mean(FROpenMC,'omitnan'),mean(FROpenHC,'omitnan')];
%     MatrixOpen=[FROpenNC',FROpenVLC',FROpenLC',FROpenMC',FROpenHC'];
    SecondMatrix=[1:5];
    [rho p] = corr(MatrixOpen',SecondMatrix','Type','Spearman');
%     disp(p);

    if p<=0.05
        numbCells=numbCells+1;
        %%LvNCAsc
        indexNC1=find(BinNCAsc==1);indexNC2=find(BinNCAsc==2);indexNC3=find(BinNCAsc==3);indexNC4=find(BinNCAsc==4);indexNC5=find(BinNCAsc==5);indexNC6=find(BinNCAsc==6);indexNC7=find(BinNCAsc==7);indexNC8=find(BinNCAsc==8);indexNC9=find(BinNCAsc==9);indexNC10=find(BinNCAsc==10);
        indexNC11=find(BinNCAsc==11);indexNC12=find(BinNCAsc==12);indexNC13=find(BinNCAsc==13);indexNC14=find(BinNCAsc==14);indexNC15=find(BinNCAsc==15);indexNC16=find(BinNCAsc==16);indexNC17=find(BinNCAsc==17);indexNC18=find(BinNCAsc==18);indexNC19=find(BinNCAsc==19);indexNC20=find(BinNCAsc==20);
        FRClosedNCAsc(1,1:6)=[mean(zscoredFRClosedNCAsc(indexNC1)),mean(zscoredFRClosedNCAsc(indexNC2)),mean(zscoredFRClosedNCAsc(indexNC3)),mean(zscoredFRClosedNCAsc(indexNC4)),mean(zscoredFRClosedNCAsc(indexNC5)),mean(zscoredFRClosedNCAsc(indexNC6))];
        FRCenterNCAsc(1,1:5)=[mean(zscoredFRClosedNCAsc(indexNC7)),mean(zscoredFRClosedNCAsc(indexNC8)),mean(zscoredFRClosedNCAsc(indexNC9)),mean(zscoredFRClosedNCAsc(indexNC10)),mean(zscoredFRClosedNCAsc(indexNC11))];
        FROpenNCAsc(1,1:9)=[mean(zscoredFRClosedNCAsc(indexNC12)),mean(zscoredFRClosedNCAsc(indexNC13)),mean(zscoredFRClosedNCAsc(indexNC14)),mean(zscoredFRClosedNCAsc(indexNC15)),mean(zscoredFRClosedNCAsc(indexNC16)),mean(zscoredFRClosedNCAsc(indexNC17)),mean(zscoredFRClosedNCAsc(indexNC18)),mean(zscoredFRClosedNCAsc(indexNC19)),mean(zscoredFRClosedNCAsc(indexNC20))];

        %%LvVLCAsc
        indexVLC1=find(BinVLCAsc==1);indexVLC2=find(BinVLCAsc==2);indexVLC3=find(BinVLCAsc==3);indexVLC4=find(BinVLCAsc==4);indexVLC5=find(BinVLCAsc==5);indexVLC6=find(BinVLCAsc==6);indexVLC7=find(BinVLCAsc==7);indexVLC8=find(BinVLCAsc==8);indexVLC9=find(BinVLCAsc==9);indexVLC10=find(BinVLCAsc==10);
        indexVLC11=find(BinVLCAsc==11);indexVLC12=find(BinVLCAsc==12);indexVLC13=find(BinVLCAsc==13);indexVLC14=find(BinVLCAsc==14);indexVLC15=find(BinVLCAsc==15);indexVLC16=find(BinVLCAsc==16);indexVLC17=find(BinVLCAsc==17);indexVLC18=find(BinVLCAsc==18);indexVLC19=find(BinVLCAsc==19);indexVLC20=find(BinVLCAsc==20);
        FRClosedVLCAsc(1,1:6)=[mean(zscoredFRClosedVLCAsc(indexVLC1)),mean(zscoredFRClosedVLCAsc(indexVLC2)),mean(zscoredFRClosedVLCAsc(indexVLC3)),mean(zscoredFRClosedVLCAsc(indexVLC4)),mean(zscoredFRClosedVLCAsc(indexVLC5)),mean(zscoredFRClosedVLCAsc(indexVLC6))];
        FRCenterVLCAsc(1,1:5)=[mean(zscoredFRClosedVLCAsc(indexVLC7)),mean(zscoredFRClosedVLCAsc(indexVLC8)),mean(zscoredFRClosedVLCAsc(indexVLC9)),mean(zscoredFRClosedVLCAsc(indexVLC10)),mean(zscoredFRClosedVLCAsc(indexVLC11))];
        FROpenVLCAsc(1,1:9)=[mean(zscoredFRClosedVLCAsc(indexVLC12)),mean(zscoredFRClosedVLCAsc(indexVLC13)),mean(zscoredFRClosedVLCAsc(indexVLC14)),mean(zscoredFRClosedVLCAsc(indexVLC15)),mean(zscoredFRClosedVLCAsc(indexVLC16)),mean(zscoredFRClosedVLCAsc(indexVLC17)),mean(zscoredFRClosedVLCAsc(indexVLC18)),mean(zscoredFRClosedVLCAsc(indexVLC19)),mean(zscoredFRClosedVLCAsc(indexVLC20))];

        %%LvLCAsc
        indexLC1=find(BinLCAsc==1);indexLC2=find(BinLCAsc==2);indexLC3=find(BinLCAsc==3);indexLC4=find(BinLCAsc==4);indexLC5=find(BinLCAsc==5);indexLC6=find(BinLCAsc==6);indexLC7=find(BinLCAsc==7);indexLC8=find(BinLCAsc==8);indexLC9=find(BinLCAsc==9);indexLC10=find(BinLCAsc==10);
        indexLC11=find(BinLCAsc==11);indexLC12=find(BinLCAsc==12);indexLC13=find(BinLCAsc==13);indexLC14=find(BinLCAsc==14);indexLC15=find(BinLCAsc==15);indexLC16=find(BinLCAsc==16);indexLC17=find(BinLCAsc==17);indexLC18=find(BinLCAsc==18);indexLC19=find(BinLCAsc==19);indexLC20=find(BinLCAsc==20);
        FRClosedLCAsc(1,1:6)=[mean(zscoredFRClosedLCAsc(indexLC1)),mean(zscoredFRClosedLCAsc(indexLC2)),mean(zscoredFRClosedLCAsc(indexLC3)),mean(zscoredFRClosedLCAsc(indexLC4)),mean(zscoredFRClosedLCAsc(indexLC5)),mean(zscoredFRClosedLCAsc(indexLC6))];
        FRCenterLCAsc(1,1:5)=[mean(zscoredFRClosedLCAsc(indexLC7)),mean(zscoredFRClosedLCAsc(indexLC8)),mean(zscoredFRClosedLCAsc(indexLC9)),mean(zscoredFRClosedLCAsc(indexLC10)),mean(zscoredFRClosedLCAsc(indexLC11))];
        FROpenLCAsc(1,1:9)=[mean(zscoredFRClosedLCAsc(indexLC12)),mean(zscoredFRClosedLCAsc(indexLC13)),mean(zscoredFRClosedLCAsc(indexLC14)),mean(zscoredFRClosedLCAsc(indexLC15)),mean(zscoredFRClosedLCAsc(indexLC16)),mean(zscoredFRClosedLCAsc(indexLC17)),mean(zscoredFRClosedLCAsc(indexLC18)),mean(zscoredFRClosedLCAsc(indexLC19)),mean(zscoredFRClosedLCAsc(indexLC20))];

        %%LvMCAsc
        indexMC1=find(BinMCAsc==1);indexMC2=find(BinMCAsc==2);indexMC3=find(BinMCAsc==3);indexMC4=find(BinMCAsc==4);indexMC5=find(BinMCAsc==5);indexMC6=find(BinMCAsc==6);indexMC7=find(BinMCAsc==7);indexMC8=find(BinMCAsc==8);indexMC9=find(BinMCAsc==9);indexMC10=find(BinMCAsc==10);
        indexMC11=find(BinMCAsc==11);indexMC12=find(BinMCAsc==12);indexMC13=find(BinMCAsc==13);indexMC14=find(BinMCAsc==14);indexMC15=find(BinMCAsc==15);indexMC16=find(BinMCAsc==16);indexMC17=find(BinMCAsc==17);indexMC18=find(BinMCAsc==18);indexMC19=find(BinMCAsc==19);indexMC20=find(BinMCAsc==20);
        FRClosedMCAsc(1,1:6)=[mean(zscoredFRClosedMCAsc(indexMC1)),mean(zscoredFRClosedMCAsc(indexMC2)),mean(zscoredFRClosedMCAsc(indexMC3)),mean(zscoredFRClosedMCAsc(indexMC4)),mean(zscoredFRClosedMCAsc(indexMC5)),mean(zscoredFRClosedMCAsc(indexMC6))];
        FRCenterMCAsc(1,1:5)=[mean(zscoredFRClosedMCAsc(indexMC7)),mean(zscoredFRClosedMCAsc(indexMC8)),mean(zscoredFRClosedMCAsc(indexMC9)),mean(zscoredFRClosedMCAsc(indexMC10)),mean(zscoredFRClosedMCAsc(indexMC11))];
        FROpenMCAsc(1,1:9)=[mean(zscoredFRClosedMCAsc(indexMC12)),mean(zscoredFRClosedMCAsc(indexMC13)),mean(zscoredFRClosedMCAsc(indexMC14)),mean(zscoredFRClosedMCAsc(indexMC15)),mean(zscoredFRClosedMCAsc(indexMC16)),mean(zscoredFRClosedMCAsc(indexMC17)),mean(zscoredFRClosedMCAsc(indexMC18)),mean(zscoredFRClosedMCAsc(indexMC19)),mean(zscoredFRClosedMCAsc(indexMC20))];

        %%LvHCAsc
        indexHC1=find(BinHCAsc==1);indexHC2=find(BinHCAsc==2);indexHC3=find(BinHCAsc==3);indexHC4=find(BinHCAsc==4);indexHC5=find(BinHCAsc==5);indexHC6=find(BinHCAsc==6);indexHC7=find(BinHCAsc==7);indexHC8=find(BinHCAsc==8);indexHC9=find(BinHCAsc==9);indexHC10=find(BinHCAsc==10);
        indexHC11=find(BinHCAsc==11);indexHC12=find(BinHCAsc==12);indexHC13=find(BinHCAsc==13);indexHC14=find(BinHCAsc==14);indexHC15=find(BinHCAsc==15);indexHC16=find(BinHCAsc==16);indexHC17=find(BinHCAsc==17);indexHC18=find(BinHCAsc==18);indexHC19=find(BinHCAsc==19);indexHC20=find(BinHCAsc==20);
        FRClosedHCAsc(1,1:6)=[mean(zscoredFRClosedHCAsc(indexHC1)),mean(zscoredFRClosedHCAsc(indexHC2)),mean(zscoredFRClosedHCAsc(indexHC3)),mean(zscoredFRClosedHCAsc(indexHC4)),mean(zscoredFRClosedHCAsc(indexHC5)),mean(zscoredFRClosedHCAsc(indexHC6))];
        FRCenterHCAsc(1,1:5)=[mean(zscoredFRClosedHCAsc(indexHC7)),mean(zscoredFRClosedHCAsc(indexHC8)),mean(zscoredFRClosedHCAsc(indexHC9)),mean(zscoredFRClosedHCAsc(indexHC10)),mean(zscoredFRClosedHCAsc(indexHC11))];
        FROpenHCAsc(1,1:9)=[mean(zscoredFRClosedHCAsc(indexHC12)),mean(zscoredFRClosedHCAsc(indexHC13)),mean(zscoredFRClosedHCAsc(indexHC14)),mean(zscoredFRClosedHCAsc(indexHC15)),mean(zscoredFRClosedHCAsc(indexHC16)),mean(zscoredFRClosedHCAsc(indexHC17)),mean(zscoredFRClosedHCAsc(indexHC18)),mean(zscoredFRClosedHCAsc(indexHC19)),mean(zscoredFRClosedHCAsc(indexHC20))];

        %%LvNCDesc
        indexNC1=find(BinNCDesc==1);indexNC2=find(BinNCDesc==2);indexNC3=find(BinNCDesc==3);indexNC4=find(BinNCDesc==4);indexNC5=find(BinNCDesc==5);indexNC6=find(BinNCDesc==6);indexNC7=find(BinNCDesc==7);indexNC8=find(BinNCDesc==8);indexNC9=find(BinNCDesc==9);indexNC10=find(BinNCDesc==10);
        indexNC11=find(BinNCDesc==11);indexNC12=find(BinNCDesc==12);indexNC13=find(BinNCDesc==13);indexNC14=find(BinNCDesc==14);indexNC15=find(BinNCDesc==15);indexNC16=find(BinNCDesc==16);indexNC17=find(BinNCDesc==17);indexNC18=find(BinNCDesc==18);indexNC19=find(BinNCDesc==19);indexNC20=find(BinNCDesc==20);
        FRClosedNCDesc(1,1:6)=[mean(zscoredFRClosedNCDesc(indexNC1)),mean(zscoredFRClosedNCDesc(indexNC2)),mean(zscoredFRClosedNCDesc(indexNC3)),mean(zscoredFRClosedNCDesc(indexNC4)),mean(zscoredFRClosedNCDesc(indexNC5)),mean(zscoredFRClosedNCDesc(indexNC6))];
        FRCenterNCDesc(1,1:5)=[mean(zscoredFRClosedNCDesc(indexNC7)),mean(zscoredFRClosedNCDesc(indexNC8)),mean(zscoredFRClosedNCDesc(indexNC9)),mean(zscoredFRClosedNCDesc(indexNC10)),mean(zscoredFRClosedNCDesc(indexNC11))];
        FROpenNCDesc(1,1:9)=[mean(zscoredFRClosedNCDesc(indexNC12)),mean(zscoredFRClosedNCDesc(indexNC13)),mean(zscoredFRClosedNCDesc(indexNC14)),mean(zscoredFRClosedNCDesc(indexNC15)),mean(zscoredFRClosedNCDesc(indexNC16)),mean(zscoredFRClosedNCDesc(indexNC17)),mean(zscoredFRClosedNCDesc(indexNC18)),mean(zscoredFRClosedNCDesc(indexNC19)),mean(zscoredFRClosedNCDesc(indexNC20))];

        %%LvVLCDesc
        indexVLC1=find(BinVLCDesc==1);indexVLC2=find(BinVLCDesc==2);indexVLC3=find(BinVLCDesc==3);indexVLC4=find(BinVLCDesc==4);indexVLC5=find(BinVLCDesc==5);indexVLC6=find(BinVLCDesc==6);indexVLC7=find(BinVLCDesc==7);indexVLC8=find(BinVLCDesc==8);indexVLC9=find(BinVLCDesc==9);indexVLC10=find(BinVLCDesc==10);
        indexVLC11=find(BinVLCDesc==11);indexVLC12=find(BinVLCDesc==12);indexVLC13=find(BinVLCDesc==13);indexVLC14=find(BinVLCDesc==14);indexVLC15=find(BinVLCDesc==15);indexVLC16=find(BinVLCDesc==16);indexVLC17=find(BinVLCDesc==17);indexVLC18=find(BinVLCDesc==18);indexVLC19=find(BinVLCDesc==19);indexVLC20=find(BinVLCDesc==20);
        FRClosedVLCDesc(1,1:6)=[mean(zscoredFRClosedVLCDesc(indexVLC1)),mean(zscoredFRClosedVLCDesc(indexVLC2)),mean(zscoredFRClosedVLCDesc(indexVLC3)),mean(zscoredFRClosedVLCDesc(indexVLC4)),mean(zscoredFRClosedVLCDesc(indexVLC5)),mean(zscoredFRClosedVLCDesc(indexVLC6))];
        FRCenterVLCDesc(1,1:5)=[mean(zscoredFRClosedVLCDesc(indexVLC7)),mean(zscoredFRClosedVLCDesc(indexVLC8)),mean(zscoredFRClosedVLCDesc(indexVLC9)),mean(zscoredFRClosedVLCDesc(indexVLC10)),mean(zscoredFRClosedVLCDesc(indexVLC11))];
        FROpenVLCDesc(1,1:9)=[mean(zscoredFRClosedVLCDesc(indexVLC12)),mean(zscoredFRClosedVLCDesc(indexVLC13)),mean(zscoredFRClosedVLCDesc(indexVLC14)),mean(zscoredFRClosedVLCDesc(indexVLC15)),mean(zscoredFRClosedVLCDesc(indexVLC16)),mean(zscoredFRClosedVLCDesc(indexVLC17)),mean(zscoredFRClosedVLCDesc(indexVLC18)),mean(zscoredFRClosedVLCDesc(indexVLC19)),mean(zscoredFRClosedVLCDesc(indexVLC20))];

        %%LvLCDesc
        indexLC1=find(BinLCDesc==1);indexLC2=find(BinLCDesc==2);indexLC3=find(BinLCDesc==3);indexLC4=find(BinLCDesc==4);indexLC5=find(BinLCDesc==5);indexLC6=find(BinLCDesc==6);indexLC7=find(BinLCDesc==7);indexLC8=find(BinLCDesc==8);indexLC9=find(BinLCDesc==9);indexLC10=find(BinLCDesc==10);
        indexLC11=find(BinLCDesc==11);indexLC12=find(BinLCDesc==12);indexLC13=find(BinLCDesc==13);indexLC14=find(BinLCDesc==14);indexLC15=find(BinLCDesc==15);indexLC16=find(BinLCDesc==16);indexLC17=find(BinLCDesc==17);indexLC18=find(BinLCDesc==18);indexLC19=find(BinLCDesc==19);indexLC20=find(BinLCDesc==20);
        FRClosedLCDesc(1,1:6)=[mean(zscoredFRClosedLCDesc(indexLC1)),mean(zscoredFRClosedLCDesc(indexLC2)),mean(zscoredFRClosedLCDesc(indexLC3)),mean(zscoredFRClosedLCDesc(indexLC4)),mean(zscoredFRClosedLCDesc(indexLC5)),mean(zscoredFRClosedLCDesc(indexLC6))];
        FRCenterLCDesc(1,1:5)=[mean(zscoredFRClosedLCDesc(indexLC7)),mean(zscoredFRClosedLCDesc(indexLC8)),mean(zscoredFRClosedLCDesc(indexLC9)),mean(zscoredFRClosedLCDesc(indexLC10)),mean(zscoredFRClosedLCDesc(indexLC11))];
        FROpenLCDesc(1,1:9)=[mean(zscoredFRClosedLCDesc(indexLC12)),mean(zscoredFRClosedLCDesc(indexLC13)),mean(zscoredFRClosedLCDesc(indexLC14)),mean(zscoredFRClosedLCDesc(indexLC15)),mean(zscoredFRClosedLCDesc(indexLC16)),mean(zscoredFRClosedLCDesc(indexLC17)),mean(zscoredFRClosedLCDesc(indexLC18)),mean(zscoredFRClosedLCDesc(indexLC19)),mean(zscoredFRClosedLCDesc(indexLC20))];

        %%LvMCDesc
        indexMC1=find(BinMCDesc==1);indexMC2=find(BinMCDesc==2);indexMC3=find(BinMCDesc==3);indexMC4=find(BinMCDesc==4);indexMC5=find(BinMCDesc==5);indexMC6=find(BinMCDesc==6);indexMC7=find(BinMCDesc==7);indexMC8=find(BinMCDesc==8);indexMC9=find(BinMCDesc==9);indexMC10=find(BinMCDesc==10);
        indexMC11=find(BinMCDesc==11);indexMC12=find(BinMCDesc==12);indexMC13=find(BinMCDesc==13);indexMC14=find(BinMCDesc==14);indexMC15=find(BinMCDesc==15);indexMC16=find(BinMCDesc==16);indexMC17=find(BinMCDesc==17);indexMC18=find(BinMCDesc==18);indexMC19=find(BinMCDesc==19);indexMC20=find(BinMCDesc==20);
        FRClosedMCDesc(1,1:6)=[mean(zscoredFRClosedMCDesc(indexMC1)),mean(zscoredFRClosedMCDesc(indexMC2)),mean(zscoredFRClosedMCDesc(indexMC3)),mean(zscoredFRClosedMCDesc(indexMC4)),mean(zscoredFRClosedMCDesc(indexMC5)),mean(zscoredFRClosedMCDesc(indexMC6))];
        FRCenterMCDesc(1,1:5)=[mean(zscoredFRClosedMCDesc(indexMC7)),mean(zscoredFRClosedMCDesc(indexMC8)),mean(zscoredFRClosedMCDesc(indexMC9)),mean(zscoredFRClosedMCDesc(indexMC10)),mean(zscoredFRClosedMCDesc(indexMC11))];
        FROpenMCDesc(1,1:9)=[mean(zscoredFRClosedMCDesc(indexMC12)),mean(zscoredFRClosedMCDesc(indexMC13)),mean(zscoredFRClosedMCDesc(indexMC14)),mean(zscoredFRClosedMCDesc(indexMC15)),mean(zscoredFRClosedMCDesc(indexMC16)),mean(zscoredFRClosedMCDesc(indexMC17)),mean(zscoredFRClosedMCDesc(indexMC18)),mean(zscoredFRClosedMCDesc(indexMC19)),mean(zscoredFRClosedMCDesc(indexMC20))];

        %%LvHCDesc
        indexHC1=find(BinHCDesc==1);indexHC2=find(BinHCDesc==2);indexHC3=find(BinHCDesc==3);indexHC4=find(BinHCDesc==4);indexHC5=find(BinHCDesc==5);indexHC6=find(BinHCDesc==6);indexHC7=find(BinHCDesc==7);indexHC8=find(BinHCDesc==8);indexHC9=find(BinHCDesc==9);indexHC10=find(BinHCDesc==10);
        indexHC11=find(BinHCDesc==11);indexHC12=find(BinHCDesc==12);indexHC13=find(BinHCDesc==13);indexHC14=find(BinHCDesc==14);indexHC15=find(BinHCDesc==15);indexHC16=find(BinHCDesc==16);indexHC17=find(BinHCDesc==17);indexHC18=find(BinHCDesc==18);indexHC19=find(BinHCDesc==19);indexHC20=find(BinHCDesc==20);
        FRClosedHCDesc(1,1:6)=[mean(zscoredFRClosedHCDesc(indexHC1)),mean(zscoredFRClosedHCDesc(indexHC2)),mean(zscoredFRClosedHCDesc(indexHC3)),mean(zscoredFRClosedHCDesc(indexHC4)),mean(zscoredFRClosedHCDesc(indexHC5)),mean(zscoredFRClosedHCDesc(indexHC6))];
        FRCenterHCDesc(1,1:5)=[mean(zscoredFRClosedHCDesc(indexHC7)),mean(zscoredFRClosedHCDesc(indexHC8)),mean(zscoredFRClosedHCDesc(indexHC9)),mean(zscoredFRClosedHCDesc(indexHC10)),mean(zscoredFRClosedHCDesc(indexHC11))];
        FROpenHCDesc(1,1:9)=[mean(zscoredFRClosedHCDesc(indexHC12)),mean(zscoredFRClosedHCDesc(indexHC13)),mean(zscoredFRClosedHCDesc(indexHC14)),mean(zscoredFRClosedHCDesc(indexHC15)),mean(zscoredFRClosedHCDesc(indexHC16)),mean(zscoredFRClosedHCDesc(indexHC17)),mean(zscoredFRClosedHCDesc(indexHC18)),mean(zscoredFRClosedHCDesc(indexHC19)),mean(zscoredFRClosedHCDesc(indexHC20))];

        %AllTogether
        MatrixAll(numbCells,1:200)=[FRClosedNCAsc,FRCenterNCAsc,FROpenNCAsc,FRClosedVLCAsc,FRCenterVLCAsc,FROpenVLCAsc,FRClosedLCAsc,FRCenterLCAsc,FROpenLCAsc,FRClosedMCAsc,FRCenterMCAsc,FROpenMCAsc,FRClosedHCAsc,FRCenterHCAsc,FROpenHCAsc,FRClosedNCDesc,FRCenterNCDesc,FROpenNCDesc,FRClosedVLCDesc,FRCenterVLCDesc,FROpenVLCDesc,FRClosedLCDesc,FRCenterLCDesc,FROpenLCDesc,FRClosedMCDesc,FRCenterMCDesc,FROpenMCDesc,FRClosedHCDesc,FRCenterHCDesc,FROpenHCDesc];

    end

end

end