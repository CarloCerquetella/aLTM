function [AmountOfCells,MatrixR]=GLMSpeedCorrectedValuesR2(nameSess,nCells,AmountOfCells,MatrixR)

cd ('H:\carlo\FigPaperLTM\Final figures\CurrBioRev\Bin-Speed-FiringRate');
TableSpeedAndFR = readtable(strcat([nameSess,'Bin-Speed-ZScoredFRPerCell_AllSess.xlsx']));
SpeedAndFR=table2array(TableSpeedAndFR);

IndexShift=nCells+2;

for indexCell = 3:(3+nCells-1)
    zscoredFRClosed = SpeedAndFR(:,indexCell);
    allSpeedclosed = SpeedAndFR(:,2);
    IndexToDel = isnan(allSpeedclosed)==1;
    allSpeedclosed(IndexToDel) = [];
    zscoredFRClosed(IndexToDel) = [];

    % 2nd: check correlations between time binned data OF ONLY CLOSED BINS!!
    % MAKE SURE TO PRESELECT
    [rhoClos pClos] = corr(allSpeedclosed,zscoredFRClosed);

    MatrixR(AmountOfCells+1,1)=rhoClos;
    AmountOfCells=AmountOfCells+1;

%     if pClos < 0.05
%         disp(strcat(nameSess));
%         disp(indexCell-2);
%         disp(pClos);
% 
%         [b,dev,stats] = glmfit(allSpeedclosed,zscoredFRClosed,'normal','constant','on');
%         residuals = stats.resid;
% 
%         intercept = b(1);
%         coeff1 = b(2);
% 
%         GLMoutput = [intercept coeff1 pClos rhoClos];
%         AmountOfCells=AmountOfCells+1;
% 
%         %%% else %
% 
%         for ii = 1:5
% 
% 
%             FRFirst(1:(size(SpeedAndFR,1)),1) = SpeedAndFR(:,(IndexShift)*(ii-1)+indexCell);
%             SpeedArrayFirst(1:(size(SpeedAndFR,1)),1) = SpeedAndFR(:,(IndexShift)*(ii-1)+2);
% 
%             IndexToDelFirst = isnan(SpeedArrayFirst)==1;
%             SpeedArrayFirst(IndexToDelFirst) = [];
%             FRFirst(IndexToDelFirst) = [];
% 
%             FR=FRFirst;
%             SpeedArray=SpeedArrayFirst;
% 
%             z_allcenterTraj = FR; %this your matrix containing the binned firing data, I use zscored data if you use raw
%             % just be aware that you will get negative firing rates
% 
%             allcenterTrajSpeed = SpeedArray; %this your matrix containing all the binned speed
%             %%%% IMPORTANT: the SPEED BINNED DATA HAS TO EXACTLY MATCH THE FIRING
%             %%%% RATE BINNED MATRIX!!!!!!!!!!!!!
% 
%             corrPVAL = GLMoutput(3);
%             coefficienGLM = GLMoutput(1:2);
%             rhoValsClose = GLMoutput(4);
% 
% 
%             allFRs = [];
%             %use coefficients to calculate expected Firing rats
%             FRspeedCorrect = coefficienGLM(1) + allcenterTrajSpeed*coefficienGLM(2);
% 
%             %calculate residuals, meaning the difference to model
%             residSpeedCorrect = z_allcenterTraj-FRspeedCorrect;
% 
%             allFRs = residSpeedCorrect; %these are the residuals and used as the firing that is not explained by the speed
%             allFRsWithNan=nan(size(SpeedAndFR,1),1);
%             indexToShiftNew=1;
%             for indexNewTable=1:size(SpeedAndFR,1)
%                 if IndexToDelFirst(indexNewTable,1)==0
%                     allFRsWithNan(indexNewTable,1)=allFRs(indexToShiftNew,1);
%                     indexToShiftNew=indexToShiftNew+1;
%                 end
%             end
% 
% 
%             %calculate averages if needed
%             avrgresidSpeedCorrect = nanmean(residSpeedCorrect,1);
% 
%             SpeedAndFR(1:size(allFRsWithNan,1),(IndexShift)*(ii-1)+indexCell)=allFRsWithNan;
% 
% %             XValuesI = SpeedAndFR(:,(IndexShift)*(ii-1)+2);
% %             allSpeedclosedI = SpeedAndFR(:,(IndexShift)*(ii-1)+4);
% %             IndexToDelI = isnan(allSpeedclosedI)==1 | allSpeedclosedI==-1 |  XValuesI==-1 ;
% %             ToDel=find(IndexToDelI==1);
% %             SpeedAndFR(ToDel,(IndexShift)*(ii-1)+1:(IndexShift)*(ii-1)+IndexShift) = -1;
%         end
%     end

end

% cd('H:\carlo\FigPaperLTM\Final figures\CurrBioRev\Thomas\Paper\GLM\GLMCorrectedValues')
% towrite=SpeedAndFR(:,:);
% arraytable=table(towrite);
% nametable=strcat(nameSess,'Bin-Speed-GLMCorrectedZScoredFRPerCell_AllSess.xlsx');
% if isfile(nametable)==1
%     delete(nametable);
% end
% writetable(arraytable,nametable);

end