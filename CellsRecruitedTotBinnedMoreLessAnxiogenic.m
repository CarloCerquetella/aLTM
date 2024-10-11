function [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,MatrixVLCClosed,MatrixLCClosed,MatrixMCClosed,MatrixHCClosed,MatrixCC,MatrixVLC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexVLC,IndexLC,IndexMC,IndexHC,MatrixVLCTot,MatrixLCTot,MatrixMCTot,MatrixHCTot,MatrixVLCTotLC,MatrixVLCTotMC,MatrixVLCTotHC,MatrixLCTotVLC,MatrixLCTotMC,MatrixLCTotHC,MatrixMCTotVLC,MatrixMCTotLC,MatrixMCTotHC,MatrixHCTotVLC,MatrixHCTotLC,MatrixHCTotMC,MatrixVLCTotNC,MatrixLCTotNC,MatrixMCTotNC,MatrixHCTotNC]=CellsRecruitedTotBinnedAscDesc(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,MatrixVLCClosed,MatrixLCClosed,MatrixMCClosed,MatrixHCClosed,MatrixCC,MatrixVLC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexVLC,IndexLC,IndexMC,IndexHC,MatrixVLCTot,MatrixLCTot,MatrixMCTot,MatrixHCTot,MatrixVLCTotLC,MatrixVLCTotMC,MatrixVLCTotHC,MatrixLCTotVLC,MatrixLCTotMC,MatrixLCTotHC,MatrixMCTotVLC,MatrixMCTotLC,MatrixMCTotHC,MatrixHCTotVLC,MatrixHCTotLC,MatrixHCTotMC,MatrixVLCTotNC,MatrixLCTotNC,MatrixMCTotNC,MatrixHCTotNC)

cd ('H:\carlo\FigPaperLTM\Speed\Speed');
TableSpeedAndFR = readtable(strcat([nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx']),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+5;
for indexCell = 6:(6+nCells-1)
    %%OnCells
    %%LvNC
    zscoredFRClosedNCAsc = SpeedAndFR(:,(IndexShift)*0+indexCell); zscoredFRClosedNCDesc = SpeedAndFR(:,(IndexShift)*11+indexCell);
    BinNCAsc = SpeedAndFR(:,(IndexShift)*0+5); BinNCDesc = SpeedAndFR(:,(IndexShift)*11+5);
    zscoredFRClosedNC=[zscoredFRClosedNCAsc;zscoredFRClosedNCDesc];
    BinNC=[BinNCAsc;BinNCDesc];
    indexNC1=find(BinNC==1);indexNC2=find(BinNC==2);indexNC3=find(BinNC==3);indexNC4=find(BinNC==4);indexNC5=find(BinNC==5);indexNC6=find(BinNC==6);indexNC7=find(BinNC==7);indexNC8=find(BinNC==8);indexNC9=find(BinNC==9);indexNC10=find(BinNC==10);
    indexNC11=find(BinNC==11);indexNC12=find(BinNC==12);indexNC13=find(BinNC==13);indexNC14=find(BinNC==14);indexNC15=find(BinNC==15);indexNC16=find(BinNC==16);indexNC17=find(BinNC==17);indexNC18=find(BinNC==18);indexNC19=find(BinNC==19);indexNC20=find(BinNC==20);
    FRClosedNC=[mean(zscoredFRClosedNC(indexNC1)),mean(zscoredFRClosedNC(indexNC2)),mean(zscoredFRClosedNC(indexNC3)),mean(zscoredFRClosedNC(indexNC4)),mean(zscoredFRClosedNC(indexNC5)),mean(zscoredFRClosedNC(indexNC6))];
    FRCenterNC=[mean(zscoredFRClosedNC(indexNC7)),mean(zscoredFRClosedNC(indexNC8)),mean(zscoredFRClosedNC(indexNC9)),mean(zscoredFRClosedNC(indexNC10)),mean(zscoredFRClosedNC(indexNC11))];
    FROpenNC=[mean(zscoredFRClosedNC(indexNC12)),mean(zscoredFRClosedNC(indexNC13)),mean(zscoredFRClosedNC(indexNC14)),mean(zscoredFRClosedNC(indexNC15)),mean(zscoredFRClosedNC(indexNC16)),mean(zscoredFRClosedNC(indexNC17)),mean(zscoredFRClosedNC(indexNC18)),mean(zscoredFRClosedNC(indexNC19)),mean(zscoredFRClosedNC(indexNC20))];

    %%LvVLC
    zscoredFRClosedVLCAsc = SpeedAndFR(:,(IndexShift)*2+indexCell); zscoredFRClosedVLCDesc = SpeedAndFR(:,(IndexShift)*9+indexCell);
    BinVLCAsc = SpeedAndFR(:,(IndexShift)*2+5); BinVLCDesc = SpeedAndFR(:,(IndexShift)*9+5);
    zscoredFRClosedVLC=[zscoredFRClosedVLCAsc;zscoredFRClosedVLCDesc];
    BinVLC=[BinVLCAsc;BinVLCDesc];
    indexVLC1=find(BinVLC==1);indexVLC2=find(BinVLC==2);indexVLC3=find(BinVLC==3);indexVLC4=find(BinVLC==4);indexVLC5=find(BinVLC==5);indexVLC6=find(BinVLC==6);indexVLC7=find(BinVLC==7);indexVLC8=find(BinVLC==8);indexVLC9=find(BinVLC==9);indexVLC10=find(BinVLC==10);
    indexVLC11=find(BinVLC==11);indexVLC12=find(BinVLC==12);indexVLC13=find(BinVLC==13);indexVLC14=find(BinVLC==14);indexVLC15=find(BinVLC==15);indexVLC16=find(BinVLC==16);indexVLC17=find(BinVLC==17);indexVLC18=find(BinVLC==18);indexVLC19=find(BinVLC==19);indexVLC20=find(BinVLC==20);
    FRClosedVLC=[mean(zscoredFRClosedVLC(indexVLC1)),mean(zscoredFRClosedVLC(indexVLC2)),mean(zscoredFRClosedVLC(indexVLC3)),mean(zscoredFRClosedVLC(indexVLC4)),mean(zscoredFRClosedVLC(indexVLC5)),mean(zscoredFRClosedVLC(indexVLC6))];
    FRCenterVLC=[mean(zscoredFRClosedVLC(indexVLC7)),mean(zscoredFRClosedVLC(indexVLC8)),mean(zscoredFRClosedVLC(indexVLC9)),mean(zscoredFRClosedVLC(indexVLC10)),mean(zscoredFRClosedVLC(indexVLC11))];
    FROpenVLC=[mean(zscoredFRClosedVLC(indexVLC12)),mean(zscoredFRClosedVLC(indexVLC13)),mean(zscoredFRClosedVLC(indexVLC14)),mean(zscoredFRClosedVLC(indexVLC15)),mean(zscoredFRClosedVLC(indexVLC16)),mean(zscoredFRClosedVLC(indexVLC17)),mean(zscoredFRClosedVLC(indexVLC18)),mean(zscoredFRClosedVLC(indexVLC19)),mean(zscoredFRClosedVLC(indexVLC20))];

    %%LvLC
    zscoredFRClosedLCAsc = SpeedAndFR(:,(IndexShift)*3+indexCell); zscoredFRClosedLCDesc = SpeedAndFR(:,(IndexShift)*8+indexCell);
    BinLCAsc = SpeedAndFR(:,(IndexShift)*3+5); BinLCDesc = SpeedAndFR(:,(IndexShift)*8+5);
    zscoredFRClosedLC=[zscoredFRClosedLCAsc;zscoredFRClosedLCDesc];
    BinLC=[BinLCAsc;BinLCDesc];
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
    zscoredFRClosedHC=[zscoredFRClosedHCAsc;zscoredFRClosedHCDesc];
    BinHC=[BinHCAsc;BinHCDesc];
    indexHC1=find(BinHC==1);indexHC2=find(BinHC==2);indexHC3=find(BinHC==3);indexHC4=find(BinHC==4);indexHC5=find(BinHC==5);indexHC6=find(BinHC==6);indexHC7=find(BinHC==7);indexHC8=find(BinHC==8);indexHC9=find(BinHC==9);indexHC10=find(BinHC==10);
    indexHC11=find(BinHC==11);indexHC12=find(BinHC==12);indexHC13=find(BinHC==13);indexHC14=find(BinHC==14);indexHC15=find(BinHC==15);indexHC16=find(BinHC==16);indexHC17=find(BinHC==17);indexHC18=find(BinHC==18);indexHC19=find(BinHC==19);indexHC20=find(BinHC==20);
    FRClosedHC=[mean(zscoredFRClosedHC(indexHC1)),mean(zscoredFRClosedHC(indexHC2)),mean(zscoredFRClosedHC(indexHC3)),mean(zscoredFRClosedHC(indexHC4)),mean(zscoredFRClosedHC(indexHC5)),mean(zscoredFRClosedHC(indexHC6))];
    FRCenterHC=[mean(zscoredFRClosedHC(indexHC7)),mean(zscoredFRClosedHC(indexHC8)),mean(zscoredFRClosedHC(indexHC9)),mean(zscoredFRClosedHC(indexHC10)),mean(zscoredFRClosedHC(indexHC11))];
    FROpenHC=[mean(zscoredFRClosedHC(indexHC12)),mean(zscoredFRClosedHC(indexHC13)),mean(zscoredFRClosedHC(indexHC14)),mean(zscoredFRClosedHC(indexHC15)),mean(zscoredFRClosedHC(indexHC16)),mean(zscoredFRClosedHC(indexHC17)),mean(zscoredFRClosedHC(indexHC18)),mean(zscoredFRClosedHC(indexHC19)),mean(zscoredFRClosedHC(indexHC20))];

    stats3VLC=mwwtest(FROpenNC,FROpenVLC);
    stats2VLC=mwwtest(FROpenVLC,FRCenterVLC); 
    statsVLC=mwwtest(FROpenVLC,FRClosedVLC);
    stats3LC=mwwtest(FROpenVLC,FROpenLC);
    stats3MC=mwwtest(FROpenLC,FROpenMC);
    stats3HC=mwwtest(FROpenMC,FROpenHC);
    statsLC=mwwtest(FROpenLC,FRClosedLC);
    stats2LC=mwwtest(FROpenLC,FRCenterLC);   
    statsMC=mwwtest(FROpenMC,FRClosedMC);
    stats2MC=mwwtest(FROpenMC,FRCenterMC);  
    statsNC=mwwtest(FROpenNC,FRClosedNC);
    stats2NC=mwwtest(FROpenNC,FRCenterNC);
    statsHC=mwwtest(FROpenHC,FRClosedHC);
    stats2HC=mwwtest(FROpenHC,FRCenterHC);

    indexUsedCell=0;
    %% With Anxiety Cells
%     if statsNC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRClosedNC) && ((stats2NC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRCenterNC)) || stats2NC.p(1,2)>0.05)
%         HigherFRNC=HigherFRNC+1;

    zscoredFRClosedNC = SpeedAndFR(:,(IndexShift)*0+indexCell);
    BinNC = SpeedAndFR(:,(IndexShift)*0+5);
    indexNC1=find(BinNC==1);indexNC2=find(BinNC==2);indexNC3=find(BinNC==3);indexNC4=find(BinNC==4);indexNC5=find(BinNC==5);indexNC6=find(BinNC==6);indexNC7=find(BinNC==7);indexNC8=find(BinNC==8);indexNC9=find(BinNC==9);indexNC10=find(BinNC==10);
    indexNC11=find(BinNC==11);indexNC12=find(BinNC==12);indexNC13=find(BinNC==13);indexNC14=find(BinNC==14);indexNC15=find(BinNC==15);indexNC16=find(BinNC==16);indexNC17=find(BinNC==17);indexNC18=find(BinNC==18);indexNC19=find(BinNC==19);indexNC20=find(BinNC==20);
    FRClosedNCAsc=[mean(zscoredFRClosedNC(indexNC1)),mean(zscoredFRClosedNC(indexNC2)),mean(zscoredFRClosedNC(indexNC3)),mean(zscoredFRClosedNC(indexNC4)),mean(zscoredFRClosedNC(indexNC5)),mean(zscoredFRClosedNC(indexNC6))];
    FRCenterNCAsc=[mean(zscoredFRClosedNC(indexNC7)),mean(zscoredFRClosedNC(indexNC8)),mean(zscoredFRClosedNC(indexNC9)),mean(zscoredFRClosedNC(indexNC10)),mean(zscoredFRClosedNC(indexNC11))];
    FROpenNCAsc=[mean(zscoredFRClosedNC(indexNC12)),mean(zscoredFRClosedNC(indexNC13)),mean(zscoredFRClosedNC(indexNC14)),mean(zscoredFRClosedNC(indexNC15)),mean(zscoredFRClosedNC(indexNC16)),mean(zscoredFRClosedNC(indexNC17)),mean(zscoredFRClosedNC(indexNC18)),mean(zscoredFRClosedNC(indexNC19)),mean(zscoredFRClosedNC(indexNC20))];

    %%LvVLC
    zscoredFRClosedVLC = SpeedAndFR(:,(IndexShift)*2+indexCell);
    BinVLC = SpeedAndFR(:,(IndexShift)*2+5);
    indexVLC1=find(BinVLC==1);indexVLC2=find(BinVLC==2);indexVLC3=find(BinVLC==3);indexVLC4=find(BinVLC==4);indexVLC5=find(BinVLC==5);indexVLC6=find(BinVLC==6);indexVLC7=find(BinVLC==7);indexVLC8=find(BinVLC==8);indexVLC9=find(BinVLC==9);indexVLC10=find(BinVLC==10);
    indexVLC11=find(BinVLC==11);indexVLC12=find(BinVLC==12);indexVLC13=find(BinVLC==13);indexVLC14=find(BinVLC==14);indexVLC15=find(BinVLC==15);indexVLC16=find(BinVLC==16);indexVLC17=find(BinVLC==17);indexVLC18=find(BinVLC==18);indexVLC19=find(BinVLC==19);indexVLC20=find(BinVLC==20);
    FRClosedVLCAsc=[mean(zscoredFRClosedVLC(indexVLC1)),mean(zscoredFRClosedVLC(indexVLC2)),mean(zscoredFRClosedVLC(indexVLC3)),mean(zscoredFRClosedVLC(indexVLC4)),mean(zscoredFRClosedVLC(indexVLC5)),mean(zscoredFRClosedVLC(indexVLC6))];
    FRCenterVLCAsc=[mean(zscoredFRClosedVLC(indexVLC7)),mean(zscoredFRClosedVLC(indexVLC8)),mean(zscoredFRClosedVLC(indexVLC9)),mean(zscoredFRClosedVLC(indexVLC10)),mean(zscoredFRClosedVLC(indexVLC11))];
    FROpenVLCAsc=[mean(zscoredFRClosedVLC(indexVLC12)),mean(zscoredFRClosedVLC(indexVLC13)),mean(zscoredFRClosedVLC(indexVLC14)),mean(zscoredFRClosedVLC(indexVLC15)),mean(zscoredFRClosedVLC(indexVLC16)),mean(zscoredFRClosedVLC(indexVLC17)),mean(zscoredFRClosedVLC(indexVLC18)),mean(zscoredFRClosedVLC(indexVLC19)),mean(zscoredFRClosedVLC(indexVLC20))];

    %%LvLC
    zscoredFRClosedLC = SpeedAndFR(:,(IndexShift)*3+indexCell);
    BinLC = SpeedAndFR(:,(IndexShift)*3+5);
    indexLC1=find(BinLC==1);indexLC2=find(BinLC==2);indexLC3=find(BinLC==3);indexLC4=find(BinLC==4);indexLC5=find(BinLC==5);indexLC6=find(BinLC==6);indexLC7=find(BinLC==7);indexLC8=find(BinLC==8);indexLC9=find(BinLC==9);indexLC10=find(BinLC==10);
    indexLC11=find(BinLC==11);indexLC12=find(BinLC==12);indexLC13=find(BinLC==13);indexLC14=find(BinLC==14);indexLC15=find(BinLC==15);indexLC16=find(BinLC==16);indexLC17=find(BinLC==17);indexLC18=find(BinLC==18);indexLC19=find(BinLC==19);indexLC20=find(BinLC==20);
    FRClosedLCAsc=[mean(zscoredFRClosedLC(indexLC1)),mean(zscoredFRClosedLC(indexLC2)),mean(zscoredFRClosedLC(indexLC3)),mean(zscoredFRClosedLC(indexLC4)),mean(zscoredFRClosedLC(indexLC5)),mean(zscoredFRClosedLC(indexLC6))];
    FRCenterLCAsc=[mean(zscoredFRClosedLC(indexLC7)),mean(zscoredFRClosedLC(indexLC8)),mean(zscoredFRClosedLC(indexLC9)),mean(zscoredFRClosedLC(indexLC10)),mean(zscoredFRClosedLC(indexLC11))];
    FROpenLCAsc=[mean(zscoredFRClosedLC(indexLC12)),mean(zscoredFRClosedLC(indexLC13)),mean(zscoredFRClosedLC(indexLC14)),mean(zscoredFRClosedLC(indexLC15)),mean(zscoredFRClosedLC(indexLC16)),mean(zscoredFRClosedLC(indexLC17)),mean(zscoredFRClosedLC(indexLC18)),mean(zscoredFRClosedLC(indexLC19)),mean(zscoredFRClosedLC(indexLC20))];

    %%LvMC
    zscoredFRClosedMC = SpeedAndFR(:,(IndexShift)*4+indexCell);
    BinMC = SpeedAndFR(:,(IndexShift)*4+5);
    indexMC1=find(BinMC==1);indexMC2=find(BinMC==2);indexMC3=find(BinMC==3);indexMC4=find(BinMC==4);indexMC5=find(BinMC==5);indexMC6=find(BinMC==6);indexMC7=find(BinMC==7);indexMC8=find(BinMC==8);indexMC9=find(BinMC==9);indexMC10=find(BinMC==10);
    indexMC11=find(BinMC==11);indexMC12=find(BinMC==12);indexMC13=find(BinMC==13);indexMC14=find(BinMC==14);indexMC15=find(BinMC==15);indexMC16=find(BinMC==16);indexMC17=find(BinMC==17);indexMC18=find(BinMC==18);indexMC19=find(BinMC==19);indexMC20=find(BinMC==20);
    FRClosedMCAsc=[mean(zscoredFRClosedMC(indexMC1)),mean(zscoredFRClosedMC(indexMC2)),mean(zscoredFRClosedMC(indexMC3)),mean(zscoredFRClosedMC(indexMC4)),mean(zscoredFRClosedMC(indexMC5)),mean(zscoredFRClosedMC(indexMC6))];
    FRCenterMCAsc=[mean(zscoredFRClosedMC(indexMC7)),mean(zscoredFRClosedMC(indexMC8)),mean(zscoredFRClosedMC(indexMC9)),mean(zscoredFRClosedMC(indexMC10)),mean(zscoredFRClosedMC(indexMC11))];
    FROpenMCAsc=[mean(zscoredFRClosedMC(indexMC12)),mean(zscoredFRClosedMC(indexMC13)),mean(zscoredFRClosedMC(indexMC14)),mean(zscoredFRClosedMC(indexMC15)),mean(zscoredFRClosedMC(indexMC16)),mean(zscoredFRClosedMC(indexMC17)),mean(zscoredFRClosedMC(indexMC18)),mean(zscoredFRClosedMC(indexMC19)),mean(zscoredFRClosedMC(indexMC20))];
    
    %%LvHC
    zscoredFRClosedHC = SpeedAndFR(:,(IndexShift)*5+indexCell);
    BinHC = SpeedAndFR(:,(IndexShift)*5+5);
    indexHC1=find(BinHC==1);indexHC2=find(BinHC==2);indexHC3=find(BinHC==3);indexHC4=find(BinHC==4);indexHC5=find(BinHC==5);indexHC6=find(BinHC==6);indexHC7=find(BinHC==7);indexHC8=find(BinHC==8);indexHC9=find(BinHC==9);indexHC10=find(BinHC==10);
    indexHC11=find(BinHC==11);indexHC12=find(BinHC==12);indexHC13=find(BinHC==13);indexHC14=find(BinHC==14);indexHC15=find(BinHC==15);indexHC16=find(BinHC==16);indexHC17=find(BinHC==17);indexHC18=find(BinHC==18);indexHC19=find(BinHC==19);indexHC20=find(BinHC==20);
    FRClosedHCAsc=[mean(zscoredFRClosedHC(indexHC1)),mean(zscoredFRClosedHC(indexHC2)),mean(zscoredFRClosedHC(indexHC3)),mean(zscoredFRClosedHC(indexHC4)),mean(zscoredFRClosedHC(indexHC5)),mean(zscoredFRClosedHC(indexHC6))];
    FRCenterHCAsc=[mean(zscoredFRClosedHC(indexHC7)),mean(zscoredFRClosedHC(indexHC8)),mean(zscoredFRClosedHC(indexHC9)),mean(zscoredFRClosedHC(indexHC10)),mean(zscoredFRClosedHC(indexHC11))];
    FROpenHCAsc=[mean(zscoredFRClosedHC(indexHC12)),mean(zscoredFRClosedHC(indexHC13)),mean(zscoredFRClosedHC(indexHC14)),mean(zscoredFRClosedHC(indexHC15)),mean(zscoredFRClosedHC(indexHC16)),mean(zscoredFRClosedHC(indexHC17)),mean(zscoredFRClosedHC(indexHC18)),mean(zscoredFRClosedHC(indexHC19)),mean(zscoredFRClosedHC(indexHC20))];

    %%LvNCdesc
    zscoredFRClosedNCdesc = SpeedAndFR(:,(IndexShift)*11+indexCell);
    BinNCdesc = SpeedAndFR(:,(IndexShift)*11+5);
    indexNCdesc1=find(BinNCdesc==1);indexNCdesc2=find(BinNCdesc==2);indexNCdesc3=find(BinNCdesc==3);indexNCdesc4=find(BinNCdesc==4);indexNCdesc5=find(BinNCdesc==5);indexNCdesc6=find(BinNCdesc==6);indexNCdesc7=find(BinNCdesc==7);indexNCdesc8=find(BinNCdesc==8);indexNCdesc9=find(BinNCdesc==9);indexNCdesc10=find(BinNCdesc==10);
    indexNCdesc11=find(BinNCdesc==11);indexNCdesc12=find(BinNCdesc==12);indexNCdesc13=find(BinNCdesc==13);indexNCdesc14=find(BinNCdesc==14);indexNCdesc15=find(BinNCdesc==15);indexNCdesc16=find(BinNCdesc==16);indexNCdesc17=find(BinNCdesc==17);indexNCdesc18=find(BinNCdesc==18);indexNCdesc19=find(BinNCdesc==19);indexNCdesc20=find(BinNCdesc==20);
    FRClosedNCdesc=[mean(zscoredFRClosedNCdesc(indexNC1)),mean(zscoredFRClosedNCdesc(indexNCdesc2)),mean(zscoredFRClosedNCdesc(indexNCdesc3)),mean(zscoredFRClosedNCdesc(indexNCdesc4)),mean(zscoredFRClosedNCdesc(indexNCdesc5)),mean(zscoredFRClosedNCdesc(indexNCdesc6))];
    FRCenterNCdesc=[mean(zscoredFRClosedNCdesc(indexNCdesc7)),mean(zscoredFRClosedNCdesc(indexNCdesc8)),mean(zscoredFRClosedNCdesc(indexNCdesc9)),mean(zscoredFRClosedNCdesc(indexNCdesc10)),mean(zscoredFRClosedNCdesc(indexNCdesc11))];
    FROpenNCdesc=[mean(zscoredFRClosedNCdesc(indexNCdesc12)),mean(zscoredFRClosedNCdesc(indexNCdesc13)),mean(zscoredFRClosedNCdesc(indexNCdesc14)),mean(zscoredFRClosedNCdesc(indexNCdesc15)),mean(zscoredFRClosedNCdesc(indexNCdesc16)),mean(zscoredFRClosedNCdesc(indexNCdesc17)),mean(zscoredFRClosedNCdesc(indexNCdesc18)),mean(zscoredFRClosedNCdesc(indexNCdesc19)),mean(zscoredFRClosedNCdesc(indexNCdesc20))];

    %%LvVLCdesc
    zscoredFRClosedVLCdesc = SpeedAndFR(:,(IndexShift)*9+indexCell);
    BinVLCdesc = SpeedAndFR(:,(IndexShift)*9+5);
    indexVLCdesc1=find(BinVLCdesc==1);indexVLCdesc2=find(BinVLCdesc==2);indexVLCdesc3=find(BinVLCdesc==3);indexVLCdesc4=find(BinVLCdesc==4);indexVLCdesc5=find(BinVLCdesc==5);indexVLCdesc6=find(BinVLCdesc==6);indexVLCdesc7=find(BinVLCdesc==7);indexVLCdesc8=find(BinVLCdesc==8);indexVLCdesc9=find(BinVLCdesc==9);indexVLCdesc10=find(BinVLCdesc==10);
    indexVLCdesc11=find(BinVLCdesc==11);indexVLCdesc12=find(BinVLCdesc==12);indexVLCdesc13=find(BinVLCdesc==13);indexVLCdesc14=find(BinVLCdesc==14);indexVLCdesc15=find(BinVLCdesc==15);indexVLCdesc16=find(BinVLCdesc==16);indexVLCdesc17=find(BinVLCdesc==17);indexVLCdesc18=find(BinVLCdesc==18);indexVLCdesc19=find(BinVLCdesc==19);indexVLCdesc20=find(BinVLCdesc==20);
    FRClosedVLCdesc=[mean(zscoredFRClosedVLCdesc(indexVLCdesc1)),mean(zscoredFRClosedVLCdesc(indexVLCdesc2)),mean(zscoredFRClosedVLCdesc(indexVLCdesc3)),mean(zscoredFRClosedVLCdesc(indexVLCdesc4)),mean(zscoredFRClosedVLCdesc(indexVLCdesc5)),mean(zscoredFRClosedVLCdesc(indexVLCdesc6))];
    FRCenterVLCdesc=[mean(zscoredFRClosedVLCdesc(indexVLCdesc7)),mean(zscoredFRClosedVLCdesc(indexVLCdesc8)),mean(zscoredFRClosedVLCdesc(indexVLCdesc9)),mean(zscoredFRClosedVLCdesc(indexVLCdesc10)),mean(zscoredFRClosedVLCdesc(indexVLCdesc11))];
    FROpenVLCdesc=[mean(zscoredFRClosedVLCdesc(indexVLCdesc12)),mean(zscoredFRClosedVLCdesc(indexVLCdesc13)),mean(zscoredFRClosedVLCdesc(indexVLCdesc14)),mean(zscoredFRClosedVLCdesc(indexVLCdesc15)),mean(zscoredFRClosedVLCdesc(indexVLCdesc16)),mean(zscoredFRClosedVLCdesc(indexVLCdesc17)),mean(zscoredFRClosedVLCdesc(indexVLCdesc18)),mean(zscoredFRClosedVLCdesc(indexVLCdesc19)),mean(zscoredFRClosedVLCdesc(indexVLCdesc20))];

    %%LvLCdesc
    zscoredFRClosedLCdesc = SpeedAndFR(:,(IndexShift)*8+indexCell);
    BinLCdesc = SpeedAndFR(:,(IndexShift)*8+5);
    indexLCdesc1=find(BinLCdesc==1);indexLCdesc2=find(BinLCdesc==2);indexLCdesc3=find(BinLCdesc==3);indexLCdesc4=find(BinLCdesc==4);indexLCdesc5=find(BinLCdesc==5);indexLCdesc6=find(BinLCdesc==6);indexLCdesc7=find(BinLCdesc==7);indexLCdesc8=find(BinLCdesc==8);indexLCdesc9=find(BinLCdesc==9);indexLCdesc10=find(BinLCdesc==10);
    indexLCdesc11=find(BinLCdesc==11);indexLCdesc12=find(BinLCdesc==12);indexLCdesc13=find(BinLCdesc==13);indexLCdesc14=find(BinLCdesc==14);indexLCdesc15=find(BinLCdesc==15);indexLCdesc16=find(BinLCdesc==16);indexLCdesc17=find(BinLCdesc==17);indexLCdesc18=find(BinLCdesc==18);indexLCdesc19=find(BinLCdesc==19);indexLCdesc20=find(BinLCdesc==20);
    FRClosedLCdesc=[mean(zscoredFRClosedLCdesc(indexLCdesc1)),mean(zscoredFRClosedLCdesc(indexLCdesc2)),mean(zscoredFRClosedLCdesc(indexLCdesc3)),mean(zscoredFRClosedLCdesc(indexLCdesc4)),mean(zscoredFRClosedLCdesc(indexLCdesc5)),mean(zscoredFRClosedLCdesc(indexLCdesc6))];
    FRCenterLCdesc=[mean(zscoredFRClosedLCdesc(indexLCdesc7)),mean(zscoredFRClosedLCdesc(indexLCdesc8)),mean(zscoredFRClosedLCdesc(indexLCdesc9)),mean(zscoredFRClosedLCdesc(indexLCdesc10)),mean(zscoredFRClosedLCdesc(indexLCdesc11))];
    FROpenLCdesc=[mean(zscoredFRClosedLCdesc(indexLCdesc12)),mean(zscoredFRClosedLCdesc(indexLCdesc13)),mean(zscoredFRClosedLCdesc(indexLCdesc14)),mean(zscoredFRClosedLCdesc(indexLCdesc15)),mean(zscoredFRClosedLCdesc(indexLCdesc16)),mean(zscoredFRClosedLCdesc(indexLCdesc17)),mean(zscoredFRClosedLCdesc(indexLCdesc18)),mean(zscoredFRClosedLCdesc(indexLCdesc19)),mean(zscoredFRClosedLCdesc(indexLCdesc20))];

    %%LvMCdesc
    zscoredFRClosedMCdesc = SpeedAndFR(:,(IndexShift)*7+indexCell);
    BinMCdesc = SpeedAndFR(:,(IndexShift)*7+5);
    indexMCdesc1=find(BinMCdesc==1);indexMCdesc2=find(BinMCdesc==2);indexMCdesc3=find(BinMCdesc==3);indexMCdesc4=find(BinMCdesc==4);indexMCdesc5=find(BinMCdesc==5);indexMCdesc6=find(BinMCdesc==6);indexMCdesc7=find(BinMCdesc==7);indexMCdesc8=find(BinMCdesc==8);indexMCdesc9=find(BinMCdesc==9);indexMCdesc10=find(BinMCdesc==10);
    indexMCdesc11=find(BinMCdesc==11);indexMCdesc12=find(BinMCdesc==12);indexMCdesc13=find(BinMCdesc==13);indexMCdesc14=find(BinMCdesc==14);indexMCdesc15=find(BinMCdesc==15);indexMCdesc16=find(BinMCdesc==16);indexMCdesc17=find(BinMCdesc==17);indexMCdesc18=find(BinMCdesc==18);indexMCdesc19=find(BinMCdesc==19);indexMCdesc20=find(BinMCdesc==20);
    FRClosedMCdesc=[mean(zscoredFRClosedMCdesc(indexMCdesc1)),mean(zscoredFRClosedMCdesc(indexMCdesc2)),mean(zscoredFRClosedMCdesc(indexMCdesc3)),mean(zscoredFRClosedMCdesc(indexMCdesc4)),mean(zscoredFRClosedMCdesc(indexMCdesc5)),mean(zscoredFRClosedMCdesc(indexMCdesc6))];
    FRCenterMCdesc=[mean(zscoredFRClosedMCdesc(indexMCdesc7)),mean(zscoredFRClosedMCdesc(indexMCdesc8)),mean(zscoredFRClosedMCdesc(indexMCdesc9)),mean(zscoredFRClosedMCdesc(indexMCdesc10)),mean(zscoredFRClosedMCdesc(indexMCdesc11))];
    FROpenMCdesc=[mean(zscoredFRClosedMCdesc(indexMCdesc12)),mean(zscoredFRClosedMCdesc(indexMCdesc13)),mean(zscoredFRClosedMCdesc(indexMCdesc14)),mean(zscoredFRClosedMCdesc(indexMCdesc15)),mean(zscoredFRClosedMCdesc(indexMCdesc16)),mean(zscoredFRClosedMCdesc(indexMCdesc17)),mean(zscoredFRClosedMCdesc(indexMCdesc18)),mean(zscoredFRClosedMCdesc(indexMCdesc19)),mean(zscoredFRClosedMCdesc(indexMCdesc20))];
    
    %%LvHCdesc
    zscoredFRClosedHCdesc = SpeedAndFR(:,(IndexShift)*6+indexCell);
    BinHCdesc = SpeedAndFR(:,(IndexShift)*6+5);
    indexHCdesc1=find(BinHCdesc==1);indexHCdesc2=find(BinHCdesc==2);indexHCdesc3=find(BinHCdesc==3);indexHCdesc4=find(BinHCdesc==4);indexHCdesc5=find(BinHCdesc==5);indexHCdesc6=find(BinHCdesc==6);indexHCdesc7=find(BinHCdesc==7);indexHCdesc8=find(BinHCdesc==8);indexHCdesc9=find(BinHCdesc==9);indexHCdesc10=find(BinHCdesc==10);
    indexHCdesc11=find(BinHCdesc==11);indexHCdesc12=find(BinHCdesc==12);indexHCdesc13=find(BinHCdesc==13);indexHCdesc14=find(BinHCdesc==14);indexHCdesc15=find(BinHCdesc==15);indexHCdesc16=find(BinHCdesc==16);indexHCdesc17=find(BinHCdesc==17);indexHCdesc18=find(BinHCdesc==18);indexHCdesc19=find(BinHCdesc==19);indexHCdesc20=find(BinHCdesc==20);
    FRClosedHCdesc=[mean(zscoredFRClosedHCdesc(indexHCdesc1)),mean(zscoredFRClosedHCdesc(indexHCdesc2)),mean(zscoredFRClosedHCdesc(indexHCdesc3)),mean(zscoredFRClosedHCdesc(indexHCdesc4)),mean(zscoredFRClosedHCdesc(indexHCdesc5)),mean(zscoredFRClosedHCdesc(indexHCdesc6))];
    FRCenterHCdesc=[mean(zscoredFRClosedHCdesc(indexHCdesc7)),mean(zscoredFRClosedHCdesc(indexHCdesc8)),mean(zscoredFRClosedHCdesc(indexHCdesc9)),mean(zscoredFRClosedHCdesc(indexHCdesc10)),mean(zscoredFRClosedHCdesc(indexHCdesc11))];
    FROpenHCdesc=[mean(zscoredFRClosedHCdesc(indexHCdesc12)),mean(zscoredFRClosedHCdesc(indexHCdesc13)),mean(zscoredFRClosedHCdesc(indexHCdesc14)),mean(zscoredFRClosedHCdesc(indexHCdesc15)),mean(zscoredFRClosedHCdesc(indexHCdesc16)),mean(zscoredFRClosedHCdesc(indexHCdesc17)),mean(zscoredFRClosedHCdesc(indexHCdesc18)),mean(zscoredFRClosedHCdesc(indexHCdesc19)),mean(zscoredFRClosedHCdesc(indexHCdesc20))];


    if statsVLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FRClosedVLC) && ((stats2VLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FRCenterVLC)) || stats2VLC.p(1,2)>0.05)
        HigherFRVLC=HigherFRVLC+1;
        MatrixVLC(IndexVLC,1:5)=[mean(FROpenNC),mean(FROpenVLC),mean(FROpenLC),mean(FROpenMC),mean(FROpenHC)];
        MatrixVLCClosed(IndexVLC,1:5)=[mean(FRClosedNC),mean(FRClosedVLC),mean(FRClosedLC),mean(FRClosedMC),mean(FRClosedHC)];
        MatrixVLCTotNC(IndexVLC,1:40)=[FRClosedNCAsc,FRCenterNCAsc,FROpenNCAsc,FRClosedNCdesc,FRCenterNCdesc,FROpenNCdesc];
        MatrixVLCTot(IndexVLC,1:40)=[FRClosedVLCAsc,FRCenterVLCAsc,FROpenVLCAsc,FRClosedVLCdesc,FRCenterVLCdesc,FROpenVLCdesc];
        MatrixVLCTotLC(IndexVLC,1:40)=[FRClosedLCAsc,FRCenterLCAsc,FROpenLCAsc,FRClosedLCdesc,FRCenterLCdesc,FROpenLCdesc];
        MatrixVLCTotMC(IndexVLC,1:40)=[FRClosedMCAsc,FRCenterMCAsc,FROpenMCAsc,FRClosedMCdesc,FRCenterMCdesc,FROpenMCdesc];
        MatrixVLCTotHC(IndexVLC,1:40)=[FRClosedHCAsc,FRCenterHCAsc,FROpenHCAsc,FRClosedHCdesc,FRCenterHCdesc,FROpenHCdesc];
        IndexVLC=IndexVLC+1;
    elseif statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)
        HigherFRLC=HigherFRLC+1;
        MatrixLC(IndexLC,1:5)=[mean(FROpenNC),mean(FROpenVLC),mean(FROpenLC),mean(FROpenMC),mean(FROpenHC)];
        MatrixLCClosed(IndexLC,1:5)=[mean(FRClosedNC),mean(FRClosedVLC),mean(FRClosedLC),mean(FRClosedMC),mean(FRClosedHC)];
        MatrixLCTot(IndexLC,1:40)=[FRClosedLCAsc,FRCenterLCAsc,FROpenLCAsc,FRClosedLCdesc,FRCenterLCdesc,FROpenLCdesc];
        MatrixLCTotNC(IndexLC,1:40)=[FRClosedNCAsc,FRCenterNCAsc,FROpenNCAsc,FRClosedNCdesc,FRCenterNCdesc,FROpenNCdesc];
        MatrixLCTotVLC(IndexLC,1:40)=[FRClosedVLCAsc,FRCenterVLCAsc,FROpenVLCAsc,FRClosedVLCdesc,FRCenterVLCdesc,FROpenVLCdesc];
        MatrixLCTotMC(IndexLC,1:40)=[FRClosedMCAsc,FRCenterMCAsc,FROpenMCAsc,FRClosedMCdesc,FRCenterMCdesc,FROpenMCdesc];
        MatrixLCTotHC(IndexLC,1:40)=[FRClosedHCAsc,FRCenterHCAsc,FROpenHCAsc,FRClosedHCdesc,FRCenterHCdesc,FROpenHCdesc];
        IndexLC=IndexLC+1;
    elseif statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05)
        HigherFRMC=HigherFRMC+1;
        MatrixMC(IndexMC,1:5)=[mean(FROpenNC),mean(FROpenVLC),mean(FROpenLC),mean(FROpenMC),mean(FROpenHC)];
        MatrixMCClosed(IndexMC,1:5)=[mean(FRClosedNC),mean(FRClosedVLC),mean(FRClosedLC),mean(FRClosedMC),mean(FRClosedHC)];
        MatrixMCTot(IndexMC,1:40)=[FRClosedMCAsc,FRCenterMCAsc,FROpenMCAsc,FRClosedMCdesc,FRCenterMCdesc,FROpenMCdesc];
        MatrixMCTotNC(IndexMC,1:40)=[FRClosedNCAsc,FRCenterNCAsc,FROpenNCAsc,FRClosedNCdesc,FRCenterNCdesc,FROpenNCdesc];
        MatrixMCTotLC(IndexMC,1:40)=[FRClosedLCAsc,FRCenterLCAsc,FROpenLCAsc,FRClosedLCdesc,FRCenterLCdesc,FROpenLCdesc];
        MatrixMCTotVLC(IndexMC,1:40)=[FRClosedVLCAsc,FRCenterVLCAsc,FROpenVLCAsc,FRClosedVLCdesc,FRCenterVLCdesc,FROpenVLCdesc];
        MatrixMCTotHC(IndexMC,1:40)=[FRClosedHCAsc,FRCenterHCAsc,FROpenHCAsc,FRClosedHCdesc,FRCenterHCdesc,FROpenHCdesc];
        IndexMC=IndexMC+1;
    elseif statsHC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRClosedHC) && ((stats2HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRCenterHC)) || stats2HC.p(1,2)>0.05)
        HigherFRHC=HigherFRHC+1;
        MatrixHC(IndexHC,1:5)=[mean(FROpenNC),mean(FROpenVLC),mean(FROpenLC),mean(FROpenMC),mean(FROpenHC)];
        MatrixHCClosed(IndexHC,1:5)=[mean(FRClosedNC),mean(FRClosedVLC),mean(FRClosedLC),mean(FRClosedMC),mean(FRClosedHC)];
        MatrixHCTot(IndexHC,1:40)=[FRClosedHCAsc,FRCenterHCAsc,FROpenHCAsc,FRClosedHCdesc,FRCenterHCdesc,FROpenHCdesc];
        MatrixHCTotNC(IndexHC,1:40)=[FRClosedNCAsc,FRCenterNCAsc,FROpenNCAsc,FRClosedNCdesc,FRCenterNCdesc,FROpenNCdesc];
        MatrixHCTotLC(IndexHC,1:40)=[FRClosedLCAsc,FRCenterLCAsc,FROpenLCAsc,FRClosedLCdesc,FRCenterLCdesc,FROpenLCdesc];
        MatrixHCTotMC(IndexHC,1:40)=[FRClosedMCAsc,FRCenterMCAsc,FROpenMCAsc,FRClosedMCdesc,FRCenterMCdesc,FROpenMCdesc];
        MatrixHCTotVLC(IndexHC,1:40)=[FRClosedVLCAsc,FRCenterVLCAsc,FROpenVLCAsc,FRClosedVLCdesc,FRCenterVLCdesc,FROpenVLCdesc];
        IndexHC=IndexHC+1;
    end

end

end