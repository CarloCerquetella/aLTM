function [HigherFRVLC,HigherFRLC,HigherFRMC,HigherFRNC,HigherFRHC,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=AllCellsByRateRemapping(nameSess,nCells,HigherFRVLC,HigherFRLC,HigherFRNC,HigherFRMC,HigherFRHC,NewCellLv2,NewCellLv3,NewCellLv4,OverlapCellLv2,OverlapCellLv3,OverlapCellLv4,RateRemapNC,RateRemapVLC,RateRemapLC,RateRemapMC,RateRemapHC,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC)

cd ('H:\carlo\FigPaperLTM\Speed\Speed');
TableSpeedAndFR = readtable(strcat([nameSess,'Time-Position-Speed-Bin-ZScoredFRPerCell_AllSess.xlsx']),'ReadVariableNames',0);
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+5;
for indexCell = 6:(6+nCells-1)
    %%OnCells
    %%LvNC
    zscoredFRClosedLNC = SpeedAndFR(:,(IndexShift)*0+indexCell);
    BinNC = SpeedAndFR(:,(IndexShift)*0+5);
    indexClosedNC=find(BinNC>0 & BinNC<7);
    indexCenterNC=find(BinNC>6 & BinNC<12);
    indexOpenNC=find(BinNC>11 & BinNC<21);
    FROpenNC=zscoredFRClosedLNC(indexOpenNC);
    FRClosedNC=zscoredFRClosedLNC(indexClosedNC);
    FRCenterNC=zscoredFRClosedLNC(indexCenterNC);

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
    FRClosedHC=zscoredFRClosedHC(indexClosedHC);
    FRCenterHC=zscoredFRClosedHC(indexCenterHC);
    FROpenHC=zscoredFRClosedHC(indexOpenHC);

    stats3VLC=mwwtest(FROpenNC',FROpenVLC');
    stats2VLC=mwwtest(FROpenVLC',FRCenterVLC'); 
    statsVLC=mwwtest(FROpenVLC',FRClosedVLC');
    stats3LC=mwwtest(FROpenVLC',FROpenLC');
    stats3MC=mwwtest(FROpenLC',FROpenMC');
    stats3HC=mwwtest(FROpenMC',FROpenHC');
    statsLC=mwwtest(FROpenLC',FRClosedLC');
    stats2LC=mwwtest(FROpenLC',FRCenterLC');   
    statsMC=mwwtest(FROpenMC',FRClosedMC');
    stats2MC=mwwtest(FROpenMC',FRCenterMC');  
    statsNC=mwwtest(FROpenNC',FRClosedNC');
    stats2NC=mwwtest(FROpenNC',FRCenterNC');
    statsHC=mwwtest(FROpenHC',FRClosedHC');
    stats2HC=mwwtest(FROpenHC',FRCenterHC');

    indexUsedCell=0;
%     %% With Anxiety Cells
%     if statsVLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FRClosedVLC) && ((stats2VLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FRCenterVLC)) || stats2VLC.p(1,2)>0.05)
%         HigherFRVLC=HigherFRVLC+1;
%         if stats3VLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FROpenNC)
%             RateRemapVLC=RateRemapVLC+1;
%             if statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)
%                 HigherFRLC=HigherFRLC+1;
%                 if stats3LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FROpenVLC)
%                     RateRemapLC=RateRemapLC+1;
%                     if statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05)
%                         HigherFRMC=HigherFRMC+1;
%                         if stats3MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FROpenLC)
%                             RateRemapMC=RateRemapMC+1;
%                             if statsHC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRClosedHC) && ((stats2HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRCenterHC)) || stats2HC.p(1,2)>0.05)
%                                 HigherFRHC=HigherFRHC+1;
%                                 if stats3HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FROpenMC)
%                                     RateRemapHC=RateRemapHC+1;
%                                     disp('Found a RR cell in session:',strcat(nameSess),' number of cell',int2str(indexCell-5));
%                                 end
%                             end
%                         end
%                     end
%                 end
%             end
%         end
%     end
%% No Anxiety Cells

% if stats3VLC.p(1,2)<=0.05 && mean(FROpenVLC)>mean(FROpenNC)
%     RateRemapVLC=RateRemapVLC+1;
    if stats3LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FROpenNC)
        RateRemapLC=RateRemapLC+1;
        if stats3MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FROpenLC)
            RateRemapMC=RateRemapMC+1;
            if stats3HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FROpenMC)
                RateRemapHC=RateRemapHC+1;
                disp(strcat('Found a RR cell in session:',strcat(nameSess),' number of cell',int2str(indexCell-5)));
            end
        end
    end
% end
    

%     %%2 mech for CC -> LC
%     if statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05) %% statsLv3.p(1,2)<=0.05 && mean(FROpenLv3)>mean(FRClosedLv3) && stats2Lv3.p(1,2)<=0.05 && mean(FROpenLv3)>mean(FRCenterLv3) %%
%         HigherFRLC=HigherFRLC+1;
%         if statsNC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRClosedNC) && ((stats2NC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRCenterNC)) || stats2NC.p(1,2)>0.05)     %% statsLv4.p(1,2)<=0.05 && mean(FROpenLv4)>mean(FRClosedLv4) && stats2Lv4.p(1,2)<=0.05 && mean(FROpenLv4)>mean(FRCenterLv4) %%
%             if stats3LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FROpenNC)
%                 RateRemapLv4=RateRemapLv4+1;
%                 [MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=ToGroupAllRemappingCellsinLCAsc(nameSess,nCells,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC,indexCell);
%                 indexUsedCell=1;
%             else
%                 OverlapCellLv4=OverlapCellLv4+1;
%             end
%         else
%             NewCellLv4=NewCellLv4+1;
%         end
%     else
%         if statsNC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRClosedNC) && ((stats2NC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRCenterNC)) || stats2NC.p(1,2)>0.05) %% statsLv4.p(1,2)<=0.05 && mean(FROpenLv4)>mean(FRClosedLv4) && stats2Lv4.p(1,2)<=0.05 && mean(FROpenLv4)>mean(FRCenterLv4) %%
%         else
%             if stats3LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FROpenNC)
%                 HigherFRLv4=HigherFRLv4+1;
%             end
%         end
%     end
% 
%     %%2 mech for LC -> MC
%     if indexUsedCell==0
%         if statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05) %% statsLv2.p(1,2)<=0.05 && mean(FROpenLv2)>mean(FRClosedLv2) && stats2Lv2.p(1,2)<=0.05 && mean(FROpenLv2)>mean(FRCenterLv2)  %%
%             if statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)     %% statsLv3.p(1,2)<=0.05 && mean(FROpenLv3)>mean(FRClosedLv3) && stats2Lv3.p(1,2)<=0.05 && mean(FROpenLv3)>mean(FRCenterLv3) %%
%                 if stats3MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FROpenLC)
%                     if (statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)) && (statsNC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRClosedNC) && ((stats2NC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRCenterNC)) || stats2NC.p(1,2)>0.05)) && (stats3LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FROpenNC))
%                     else
%                         RateRemapLv4=RateRemapLv4+1;
%                         [MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=ToGroupAllRemappingCellsinLCAsc(nameSess,nCells,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC,indexCell);
%                         indexUsedCell=1;
%                     end
%                 else
%                     OverlapCellLv3=OverlapCellLv3+1;
%                 end
%             else
%                 NewCellLv3=NewCellLv3+1;
%             end
%         else
%             if statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)  %% statsLv3.p(1,2)<=0.05 && mean(FROpenLv3)>mean(FRClosedLv3) && stats2Lv3.p(1,2)<=0.05 && mean(FROpenLv3)>mean(FRCenterLv3) %%
%             else
%                 if stats3MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FROpenLC)
%                     HigherFRLv3=HigherFRLv3+1;
%                 end
%             end
%         end
%     end
% 
%     %%2 mech for MC -> HC
%     if indexUsedCell==0
%         if statsHC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRClosedHC) && ((stats2HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FRCenterHC)) || stats2HC.p(1,2)>0.05)         %% stats.p(1,2)<=0.05 && mean(FROpen)>mean(FRClosed) && stats2.p(1,2)<=0.05 && mean(FROpen)>mean(FRCenter)  %%
%             if statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05)       %% statsLv2.p(1,2)<=0.05 && mean(FROpenLv2)>mean(FRClosedLv2) && stats2Lv2.p(1,2)<=0.05 && mean(FROpenLv2)>mean(FRCenterLv2) %%
%                 if stats3HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FROpenMC)
%                     if ((statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)) && (statsNC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRClosedNC) && ((stats2NC.p(1,2)<=0.05 && mean(FROpenNC)>mean(FRCenterNC)) || stats2NC.p(1,2)>0.05)) && (stats3LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FROpenNC))) || ((statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05)) && (statsLC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRClosedLC) && ((stats2LC.p(1,2)<=0.05 && mean(FROpenLC)>mean(FRCenterLC)) || stats2LC.p(1,2)>0.05)) && (stats3MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FROpenLC)) )
%                     else
%                         RateRemapLv4=RateRemapLv4+1;
%                         [MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC]=ToGroupAllRemappingCellsinLCAsc(nameSess,nCells,MatrixCC,MatrixLC,MatrixMC,MatrixHC,IndexCC,IndexLC,IndexMC,IndexHC,indexCell);
%                         indexUsedCell=1;
%                     end
%                 else
%                     OverlapCellLv2=OverlapCellLv2+1;
%                 end
%             else
%                 NewCellLv2=NewCellLv2+1;
%             end
%         else
%             if statsMC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRClosedMC) && ((stats2MC.p(1,2)<=0.05 && mean(FROpenMC)>mean(FRCenterMC)) || stats2MC.p(1,2)>0.05)   %% statsLv2.p(1,2)<=0.05 && mean(FROpenLv2)>mean(FRClosedLv2) && stats2Lv2.p(1,2)<=0.05 && mean(FROpenLv2)>mean(FRCenterLv2) %%
%             else
%                 if stats3HC.p(1,2)<=0.05 && mean(FROpenHC)>mean(FROpenMC)
%                     HigherFRLv2=HigherFRLv2+1;
%                 end
%             end
%         end
%     end

end

end