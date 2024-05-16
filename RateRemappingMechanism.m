function [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=RateRemappingMechanism(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC)

cd ('H:\carlo\FigPaperLTM\Speed\Speed');
TableSpeedAndFR = readtable(strcat([nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx']),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+5;
for indexCell = 6:(6+nCells-1)
    %%OnCells
    %%LvNC
    zscoredFRClosedNC = SpeedAndFR(:,(IndexShift)*0+indexCell);
    BinNC = SpeedAndFR(:,(IndexShift)*0+5);
    indexNC1=find(BinNC==1);indexNC2=find(BinNC==2);indexNC3=find(BinNC==3);indexNC4=find(BinNC==4);indexNC5=find(BinNC==5);indexNC6=find(BinNC==6);indexNC7=find(BinNC==7);indexNC8=find(BinNC==8);indexNC9=find(BinNC==9);indexNC10=find(BinNC==10);
    indexNC11=find(BinNC==11);indexNC12=find(BinNC==12);indexNC13=find(BinNC==13);indexNC14=find(BinNC==14);indexNC15=find(BinNC==15);indexNC16=find(BinNC==16);indexNC17=find(BinNC==17);indexNC18=find(BinNC==18);indexNC19=find(BinNC==19);indexNC20=find(BinNC==20);
    FRClosedNC=[mean(zscoredFRClosedNC(indexNC1)),mean(zscoredFRClosedNC(indexNC2)),mean(zscoredFRClosedNC(indexNC3)),mean(zscoredFRClosedNC(indexNC4)),mean(zscoredFRClosedNC(indexNC5)),mean(zscoredFRClosedNC(indexNC6))];
    FRCenterNC=[mean(zscoredFRClosedNC(indexNC7)),mean(zscoredFRClosedNC(indexNC8)),mean(zscoredFRClosedNC(indexNC9)),mean(zscoredFRClosedNC(indexNC10)),mean(zscoredFRClosedNC(indexNC11))];
    FROpenNC=[mean(zscoredFRClosedNC(indexNC12)),mean(zscoredFRClosedNC(indexNC13)),mean(zscoredFRClosedNC(indexNC14)),mean(zscoredFRClosedNC(indexNC15)),mean(zscoredFRClosedNC(indexNC16)),mean(zscoredFRClosedNC(indexNC17)),mean(zscoredFRClosedNC(indexNC18)),mean(zscoredFRClosedNC(indexNC19)),mean(zscoredFRClosedNC(indexNC20))];

    %%LvVLC
    zscoredFRClosedVLC = SpeedAndFR(:,(IndexShift)*2+indexCell);
    BinVLC = SpeedAndFR(:,(IndexShift)*2+5);
    indexVLC1=find(BinVLC==1);indexVLC2=find(BinVLC==2);indexVLC3=find(BinVLC==3);indexVLC4=find(BinVLC==4);indexVLC5=find(BinVLC==5);indexVLC6=find(BinVLC==6);indexVLC7=find(BinVLC==7);indexVLC8=find(BinVLC==8);indexVLC9=find(BinVLC==9);indexVLC10=find(BinVLC==10);
    indexVLC11=find(BinVLC==11);indexVLC12=find(BinVLC==12);indexVLC13=find(BinVLC==13);indexVLC14=find(BinVLC==14);indexVLC15=find(BinVLC==15);indexVLC16=find(BinVLC==16);indexVLC17=find(BinVLC==17);indexVLC18=find(BinVLC==18);indexVLC19=find(BinVLC==19);indexVLC20=find(BinVLC==20);
    FRClosedVLC=[mean(zscoredFRClosedVLC(indexVLC1)),mean(zscoredFRClosedVLC(indexVLC2)),mean(zscoredFRClosedVLC(indexVLC3)),mean(zscoredFRClosedVLC(indexVLC4)),mean(zscoredFRClosedVLC(indexVLC5)),mean(zscoredFRClosedVLC(indexVLC6))];
    FRCenterVLC=[mean(zscoredFRClosedVLC(indexVLC7)),mean(zscoredFRClosedVLC(indexVLC8)),mean(zscoredFRClosedVLC(indexVLC9)),mean(zscoredFRClosedVLC(indexVLC10)),mean(zscoredFRClosedVLC(indexVLC11))];
    FROpenVLC=[mean(zscoredFRClosedVLC(indexVLC12)),mean(zscoredFRClosedVLC(indexVLC13)),mean(zscoredFRClosedVLC(indexVLC14)),mean(zscoredFRClosedVLC(indexVLC15)),mean(zscoredFRClosedVLC(indexVLC16)),mean(zscoredFRClosedVLC(indexVLC17)),mean(zscoredFRClosedVLC(indexVLC18)),mean(zscoredFRClosedVLC(indexVLC19)),mean(zscoredFRClosedVLC(indexVLC20))];

    %%LvLC
    zscoredFRClosedLC = SpeedAndFR(:,(IndexShift)*3+indexCell);
    BinLC = SpeedAndFR(:,(IndexShift)*3+5);
    indexLC1=find(BinLC==1);indexLC2=find(BinLC==2);indexLC3=find(BinLC==3);indexLC4=find(BinLC==4);indexLC5=find(BinLC==5);indexLC6=find(BinLC==6);indexLC7=find(BinLC==7);indexLC8=find(BinLC==8);indexLC9=find(BinLC==9);indexLC10=find(BinLC==10);
    indexLC11=find(BinLC==11);indexLC12=find(BinLC==12);indexLC13=find(BinLC==13);indexLC14=find(BinLC==14);indexLC15=find(BinLC==15);indexLC16=find(BinLC==16);indexLC17=find(BinLC==17);indexLC18=find(BinLC==18);indexLC19=find(BinLC==19);indexLC20=find(BinLC==20);
    FRClosedLC=[mean(zscoredFRClosedLC(indexLC1)),mean(zscoredFRClosedLC(indexLC2)),mean(zscoredFRClosedLC(indexLC3)),mean(zscoredFRClosedLC(indexLC4)),mean(zscoredFRClosedLC(indexLC5)),mean(zscoredFRClosedLC(indexLC6))];
    FRCenterLC=[mean(zscoredFRClosedLC(indexLC7)),mean(zscoredFRClosedLC(indexLC8)),mean(zscoredFRClosedLC(indexLC9)),mean(zscoredFRClosedLC(indexLC10)),mean(zscoredFRClosedLC(indexLC11))];
    FROpenLC=[mean(zscoredFRClosedLC(indexLC12)),mean(zscoredFRClosedLC(indexLC13)),mean(zscoredFRClosedLC(indexLC14)),mean(zscoredFRClosedLC(indexLC15)),mean(zscoredFRClosedLC(indexLC16)),mean(zscoredFRClosedLC(indexLC17)),mean(zscoredFRClosedLC(indexLC18)),mean(zscoredFRClosedLC(indexLC19)),mean(zscoredFRClosedLC(indexLC20))];

    %%LvMC
    zscoredFRClosedMC = SpeedAndFR(:,(IndexShift)*4+indexCell);
    BinMC = SpeedAndFR(:,(IndexShift)*4+5);
    indexMC1=find(BinMC==1);indexMC2=find(BinMC==2);indexMC3=find(BinMC==3);indexMC4=find(BinMC==4);indexMC5=find(BinMC==5);indexMC6=find(BinMC==6);indexMC7=find(BinMC==7);indexMC8=find(BinMC==8);indexMC9=find(BinMC==9);indexMC10=find(BinMC==10);
    indexMC11=find(BinMC==11);indexMC12=find(BinMC==12);indexMC13=find(BinMC==13);indexMC14=find(BinMC==14);indexMC15=find(BinMC==15);indexMC16=find(BinMC==16);indexMC17=find(BinMC==17);indexMC18=find(BinMC==18);indexMC19=find(BinMC==19);indexMC20=find(BinMC==20);
    FRClosedMC=[mean(zscoredFRClosedMC(indexMC1)),mean(zscoredFRClosedMC(indexMC2)),mean(zscoredFRClosedMC(indexMC3)),mean(zscoredFRClosedMC(indexMC4)),mean(zscoredFRClosedMC(indexMC5)),mean(zscoredFRClosedMC(indexMC6))];
    FRCenterMC=[mean(zscoredFRClosedMC(indexMC7)),mean(zscoredFRClosedMC(indexMC8)),mean(zscoredFRClosedMC(indexMC9)),mean(zscoredFRClosedMC(indexMC10)),mean(zscoredFRClosedMC(indexMC11))];
    FROpenMC=[mean(zscoredFRClosedMC(indexMC12)),mean(zscoredFRClosedMC(indexMC13)),mean(zscoredFRClosedMC(indexMC14)),mean(zscoredFRClosedMC(indexMC15)),mean(zscoredFRClosedMC(indexMC16)),mean(zscoredFRClosedMC(indexMC17)),mean(zscoredFRClosedMC(indexMC18)),mean(zscoredFRClosedMC(indexMC19)),mean(zscoredFRClosedMC(indexMC20))];
    
    %%LvHC
    zscoredFRClosedHC = SpeedAndFR(:,(IndexShift)*5+indexCell);
    BinHC = SpeedAndFR(:,(IndexShift)*5+5);
    indexHC1=find(BinHC==1);indexHC2=find(BinHC==2);indexHC3=find(BinHC==3);indexHC4=find(BinHC==4);indexHC5=find(BinHC==5);indexHC6=find(BinHC==6);indexHC7=find(BinHC==7);indexHC8=find(BinHC==8);indexHC9=find(BinHC==9);indexHC10=find(BinHC==10);
    indexHC11=find(BinHC==11);indexHC12=find(BinHC==12);indexHC13=find(BinHC==13);indexHC14=find(BinHC==14);indexHC15=find(BinHC==15);indexHC16=find(BinHC==16);indexHC17=find(BinHC==17);indexHC18=find(BinHC==18);indexHC19=find(BinHC==19);indexHC20=find(BinHC==20);
    FRClosedHC=[mean(zscoredFRClosedHC(indexHC1)),mean(zscoredFRClosedHC(indexHC2)),mean(zscoredFRClosedHC(indexHC3)),mean(zscoredFRClosedHC(indexHC4)),mean(zscoredFRClosedHC(indexHC5)),mean(zscoredFRClosedHC(indexHC6))];
    FRCenterHC=[mean(zscoredFRClosedHC(indexHC7)),mean(zscoredFRClosedHC(indexHC8)),mean(zscoredFRClosedHC(indexHC9)),mean(zscoredFRClosedHC(indexHC10)),mean(zscoredFRClosedHC(indexHC11))];
    FROpenHC=[mean(zscoredFRClosedHC(indexHC12)),mean(zscoredFRClosedHC(indexHC13)),mean(zscoredFRClosedHC(indexHC14)),mean(zscoredFRClosedHC(indexHC15)),mean(zscoredFRClosedHC(indexHC16)),mean(zscoredFRClosedHC(indexHC17)),mean(zscoredFRClosedHC(indexHC18)),mean(zscoredFRClosedHC(indexHC19)),mean(zscoredFRClosedHC(indexHC20))];


%     stats3VLC=mwwtest(FROpenNC,FROpenVLC);
%     stats2VLC=mwwtest(FROpenVLC,FRCenterVLC); 
%     statsVLC=mwwtest(FROpenVLC,FRClosedVLC);
%     stats3LC=mwwtest(FROpenVLC,FROpenLC);
%     stats3MC=mwwtest(FROpenLC,FROpenMC);
%     stats3HC=mwwtest(FROpenMC,FROpenHC);
%     statsLC=mwwtest(FROpenLC,FRClosedLC);
%     stats2LC=mwwtest(FROpenLC,FRCenterLC);   
%     statsMC=mwwtest(FROpenMC,FRClosedMC);
%     stats2MC=mwwtest(FROpenMC,FRCenterMC);  
%     statsNC=mwwtest(FROpenNC,FRClosedNC);
%     stats2NC=mwwtest(FROpenNC,FRCenterNC);
%     statsHC=mwwtest(FROpenHC,FRClosedHC);
%     stats2HC=mwwtest(FROpenHC,FRCenterHC);

%     %% With Anxiety Cells
%     if statsVLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FRClosedVLC) && ((stats2VLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FRCenterVLC)) || stats2VLC.p(1,2)>0.05)
%         HigherFRVLC=HigherFRVLC+1;
%         if mean(FROpenVLC)>mean(FROpenNC)
%             RateRemapVLC=RateRemapVLC+1;
%             if statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)
%                 HigherFRLC=HigherFRLC+1;
%                 if mean(FROpenLC)>mean(FROpenVLC)
%                     RateRemapLC=RateRemapLC+1;
%                     if statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05)
%                         HigherFRMC=HigherFRMC+1;
%                         if mean(FROpenMC)>mean(FROpenLC)
%                             RateRemapMC=RateRemapMC+1;
%                             if statsHC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRClosedHC) && ((stats2HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRCenterHC)) || stats2HC.p(1,2)>0.05)
%                                 HigherFRHC=HigherFRHC+1;
%                                 if mean(FROpenHC)>mean(FROpenMC)
%                                     RateRemapHC=RateRemapHC+1;
%                                     disp(strcat('Found a RR cell in session:',strcat(nameSess),' number of cell',int2str(indexCell-5)));
%                                 end
%                             end
%                         end
%                     end
%                 end
%             end
%         end
%     end
    %No anxiety cells
    if mean(FROpenVLC,'omitnan')>mean(FROpenNC,'omitnan')
        RateRemapVLC=RateRemapVLC+1;
        if mean(FROpenLC,'omitnan')>mean(FROpenNC,'omitnan')
            RateRemapLC=RateRemapLC+1;
            if mean(FROpenMC,'omitnan')>mean(FROpenLC,'omitnan')
                RateRemapMC=RateRemapMC+1;
                if mean(FROpenHC,'omitnan')>mean(FROpenMC,'omitnan')
                    RateRemapHC=RateRemapHC+1;
                    disp(strcat('Found a RR cell in session:',strcat(nameSess),' number of cell',int2str(indexCell-5)));
                end
            end
        end
    end


end

end