function CreateTrk(basename,Opto)

% CreateTrk('K:\Robin\Electrophysiology\ProcessedData\RN12\RN12-0817-0181','RN12-0817-0181',28,'RN12-0817_28.xlsx',8)
% Creates variable trk containing x and y coordinates as column vectors
% trk values are fixed rate samples at frequency specified by trk_SR. Uses TTL pulses as timestamps for track points then resampling by interpolation
% trk is same length as electrophysiology recording, coordinates are aligned to first TTL and outside samples are filled with -1
% speed filtered trk variable saved in separate matfile
% excelfile: the .xlsx file containg XY points. Assumes format of specified tracking system
% pixpcm: pixels per cm, ie. maze length in pixels/maze length in cm. used to calculate velocity
% make sure matfile containing variable sig is in folderpath 

% %% evaluation
% basename='CC57-0929-01113';
%% Digital input name 
DINfile='board-DIN-08.dat';

%% Parameters
SR = 20000; %ephys sampling rate
Vel_mthr = 3; %cm/s immobility threshold
Truscan = 0;
Anymaze = 0;
Positrack = 1;

if DINfile=='board-DIN-00.dat'
    trk_SR = 50; %desired sampling rate of trk variable
elseif DINfile=='board-DIN-08.dat'
    trk_SR = 30; %desired sampling rate of trk variable
end

%% Accessing all the sessions
config_file=([basename, '.par']);
fid = fopen(config_file);
line_number = 1;
while (line_number < 12)
    [~] = fgetl(fid);
    line_number = line_number + 1;
end

if (line_number == 12)
    session_number = str2num(fgetl(fid));
    file_name_array = string(session_number);
    for i = 1:session_number
        file_name_array(i) = fgetl(fid);
    end
end
fclose(fid);

for j = 1:length(file_name_array)
 
    base_name = file_name_array(j);
    cd ..
    cd (base_name);
    
    %% RN TTLextract script
    raw_fid=[];
    raw_fid = fopen([DINfile]);
    dims=[1,inf];
    raw_data = fread(raw_fid,dims,'int16=>int16')';
    fclose(raw_fid);
    Diffdata= diff(raw_data); %take the difference between consecutive values so that TTL onset will be 1
    sig=find(Diffdata==1)+1;
    sig=sig';
    cd ..
    cd (basename);
    
    %% Load Inputs
    SessToProcess=strcat('Processing session:',{' '},base_name);
    disp(SessToProcess);
    %% if you know you mistakenly stopped a session
%     if j==6
%         post=1;
%         disp(strcat('You know in session:',int2str(j),',you stopped the ephys before trk'));
%     else
        post=0;
%     end
    
    % addpath(genpath(folderpath))
    % basename = [ExpBasename(1:9) '_' num2str(session,'%02d')];
    % Syncfile = [basename '_' 'Sig4' '.mat']; %matfile containing synchronization TTL samples saved as sig row vector
    %load(Syncfile);
    Sync = sig;
    session=j;
    resofs = load([basename '.resofs']);
    if session == 1
        SessionSamp = resofs(session);
    else
        SessionSamp = resofs(session)-resofs(session-1);
    end
    SessionDur= SessionSamp/SR;
    
    %% Convert .positrack to .xlsx
    if Opto==0
        if Positrack == 1
            if trk_SR==50
                filename = strcat(base_name, '.positrack');
                delimiterIn = ' ';
                headerlinesIn = 1;
                text_data = importdata(filename, delimiterIn, headerlinesIn);
                headers = {'no', 'capTime', 'startProcTime', 'procDuration', 'x', 'y', 'hd', 'nSpots', 'nPixSpot1', 'xSpot1', 'ySpot1', 'nPixSpot2', 'xSpot2', 'ySpot2'};
                T_data = array2table(text_data.data, 'VariableNames', headers);
                xlsx_filename = strcat(base_name, '.xlsx');
                if isfile(xlsx_filename)
                    delete(xlsx_filename);
                end
                writetable(T_data, xlsx_filename);
            elseif trk_SR==30
                filename = strcat(base_name, '.csv');
                T_dataTable = readtable(filename,'ReadVariableNames',false);
                headers = {'x','y','hd'};
                T_dataArrayX=str2double(T_dataTable{2:size(T_dataTable,1),2});
                T_dataArrayY=str2double(T_dataTable{2:size(T_dataTable,1),3});
                T_dataArrayHD=nan(size(T_dataArrayX,1),1);
                T_dataArray=[T_dataArrayX T_dataArrayY T_dataArrayHD];
                T_dataArray(isnan(T_dataArray)) = -1;
                T_data = array2table(T_dataArray, 'VariableNames', headers);
                xlsx_filename = strcat(base_name, '.xlsx');
                if isfile(xlsx_filename)
                    delete(xlsx_filename);
                end
                writetable(T_data, xlsx_filename);
            end
        end
    end
    
    %% Load Excel file
    filename2 = strcat(base_name, '.xlsx'); % to check if you use Anymaze or Truscan
    
    if Positrack == 1
        [oldXY xytext] = xlsread(filename2);
        %XY = XY(:,5:6);
        if trk_SR==50
            XY = oldXY(:,5:6);
            HDc = oldXY(:,7);
            HDc(find(HDc== -1)) = NaN;
            XY(find(XY== -1)) = NaN;
        elseif trk_SR==30
            XY = oldXY(:,1:2);
            HDc = oldXY(:,3);
            if Opto==1
%                 OtherVar = oldXY(:,4:16);%%double camera
                OtherVar = oldXY(:,4:15);
            end
        end
    end
    
    if Truscan == 1
        disp('check how the script reads your xlsx file because cc created this variable for positrack');
        [XY xytext] = xlsread(filename2);
        XY = XY(:,2:3);
    end
    
    if Anymaze == 1
        disp('check how the script reads your xlsx file because cc created this variable for positrack');
        [AMdata AMtext] = xlsread(filename2);
        if size(AMtext,1)-size(AMdata,1) > 1
            z = NaN((size(AMtext,1)-size(AMdata,1)-1), size(AMdata,2));
            AMdata = [z;AMdata];
        end
        AMtitle= AMtext(1,:);
        AMtime = AMtext(2:end,1);
        AMtime = datevec(AMtime); AMtime = AMtime(:,5)*60 + AMtime(:,6);
        AM_SR = round(1000./(diff(AMtime)*1000));AM_SR = [AM_SR;AM_SR(end)];
        camSR = [10 15 24 30 50 60 90];
        AMtime(find(AM_SR== inf)) = []; AMdata(find(AM_SR== inf),:) = []; AM_SR(find(AM_SR== inf)) = [];
        if sum(contains(AMtitle,'CentrePositionX')) == 1
            Index = find(contains(AMtitle,'CentrePositionX'))-1;
            AMx = AMdata(:,Index);
            Index = find(contains(AMtitle,'CentrePositionY'))-1;
            AMy = AMdata(:,Index);
            misstrk = find(isnan(AMx));
            quality = length(find(isnan(AMy)))/length(AMy)*100;
            if quality >= 10
                disp('Tracking file contains more than 10% missing data points');
            end
            XY = [AMx AMy];
        end
        if sum(contains(AMtitle,'Speed')) == 1
            Index = find(contains(AMtitle,'Speed'))-1;
            AMvel = AMdata(:,Index)*100; %converts m to cm
            AMvel(misstrk) = NaN;
        end
        if sum(contains(AMtitle,'Immobile')) == 1
            Index = find(contains(AMtitle,'Immobile'))-1;
            imb = AMdata(:,Index);
            imb(misstrk) = NaN;
        end
    end
    
    
    %% Match Tracking and Ephys
    if Positrack == 1
        disp(strcat('Assuming behavioral tracking data was acquired at:',int2str(trk_SR),'Hz'));
        behav_SR = trk_SR;
        BehavDur = round((Sync(end)-Sync(1))/SR,3);
        Behavtime = (Sync/SR)'; Behavtime = Behavtime - Behavtime(1);
        if size(XY,1)< length(Behavtime)         %% if the last TTL from trk arrives after you stopped the tracking (no trk data but extra ttl)
            extra = length(Behavtime)-size(XY,1);
            if extra > 2
                disp('Attention smt is wrong, you have acquired too many TTLs than trk frames');
                sprintf('%d samples excluded from end of ephys behavior data',extra)
            end
            Behavtime = Behavtime(1:size(XY,1));
        elseif size(XY,1)> length(Behavtime) %% if you start the tracking before the ephys or stop trk after ephys you will have more acquired frames than TTLs
            extra = size(XY,1)-length(Behavtime);
            if post==1 %%%%if you know you stopped the trk after the ephys
                XY=XY(1:length(Behavtime),:);
                HDc=HDc(1:length(Behavtime),:);
                if Opto==1
                    OtherVar=OtherVar(1:length(Behavtime),:);
                end
                disp('ATTENTION you stopped the trk after the ephys');
            else       %%%%if you know you started the trk before the ephys or smt else
%                 XY = XY((extra+1):end,:); %%uncomment if you think you started the trk first
%                 HDc= HDc((extra+1):end,:);
                XY = XY(1:(end-extra),:);  %%if you think you stopped the ephys really fast
                HDc= HDc(1:(end-extra),:);
                if Opto==1
                    OtherVar = OtherVar(1:(end-extra),:);
                end
                disp(strcat('ATTENTION you started the trk before the ephys or you had been too fast in stopping the trk, frames:',int2str(extra)));
            end
            %sprintf('%d Attention: You did not follow the protocol, the length of the tracking is greater than the lenght of ephys rec',extra)
        end
    end
    
    if Truscan == 1
        behav_SR = 10;
        BehavDur = round((Sync(end)-Sync(1))/SR,3);
        Behavtime = linspace(0,BehavDur,length(Sync))'; %no time stamps available
        disp('Assuming behavioral tracking data was acquired at 10Hz');
    end
    
    if Anymaze == 1
        behav_SR = round(mean(AM_SR));
        BehavDur = AMtime(end); %more accurate since TTL can arrive after last tracking sample taken
        if length(Sync) > 2
            Behavtime = (Sync/SR)'; Behavtime = Behavtime - Behavtime(1); %note delay ~20-30 ms between first reported position and TTL detection
        else % in case frame TTL missing
            Behavtime = AMtime;
        end
        if ismember(behav_SR,camSR) == 0
            disp('significant fluctuations in behavioural sampling rate')
        end
        if size(XY,1)< length(Behavtime)
            extra = length(Behavtime)-size(XY,1);
            Behavtime = Behavtime(1:size(XY,1));
            sprintf('%d samples excluded from end of ephys behavior data',extra)
        elseif size(XY,1)> length(Behavtime)
            extra = size(XY,1)-length(Behavtime);
            XY = XY((extra+1):end);
            sprintf('%d samples excluded from beginning of tracking data',extra)
        end
    end
    
%     %% Smoothe X and Y points with Gaussian-weighted moving average %%Only if you want to use smoothed data
%     %use smoothed track points for trk since reduced noise
%     windowT = 2; % seconds
%     windowS = windowT*behav_SR;
%     x = smoothdata(XY(:,1),'gaussian',windowS); %ignore NaN to bridge missing data
%     y = smoothdata(XY(:,2),'gaussian',windowS);

    %% better without filter?
    x=XY(:,1);
    y=XY(:,2);
    
%     arrayccMaxY=max(XY(:,2));
%     arrayccMinY=min(XY(:,2));
%     if positrack==1
%         if trk_SR==50
%             pixpcm=round((arrayccMaxY-arrayccMinY)/40);
%         elseif trk_SR==30
%             if session<83
%                 pixpcm=4.2518;
%             elseif session < 108
%                 pixpcm=2.8;
%             elseif session < 113
%                 pixpcm=10; %%%% check, don't remember
%             else
%                 disp('smt wrong');
%             end
%         end
%     end
%     
%     %% check if the maze was straight or angled    %% CC still working on this
%     %arrayccMaxX=max(XY(:,1));
%     %arrayccMinX=min(XY(:,1));
%     
%     %SegmX=arrayccMaxX-arrayccMinX;
%     %SegmY=arrayccMaxY-arrayccMinY;
%     
%     %if SegmX>(SegmY/2.8) %%2.8 to obtain XValues bigger than 10(platform) + 4 (Animal head 
%         %disp('Attention: check if your maze was angled');
%    %end

    if Positrack == 1
        XY = [];
      XY = [x y HDc];  
    end
    
    %% Calculate Velocity
%     if exist('AMvel','var') == 1
%         v = AMvel;
%     else
%         
%         %%% distance travelled
%         dx = [NaN;diff(x)];
%         dy = [NaN;diff(y)];
%         dd = sqrt(dx.^2 + dy.^2);
%         
%         %%% convert pixels to cm
%         if Truscan == 1
%             distance = dd*1.52; %Truscan: 1.52cm between beams indicated in Truscan manual
%         else
%             distance = dd/pixpcm;
%         end
%         
%         %%% instantaneous velocity in each time bin
%         latency = [0;diff(Behavtime)]; %in seconds
%         v= distance./latency;  %cm/s
%     end
%     v = smoothdata(v,'gaussian',windowS); %smoothe velocity
%     
%     %% Resample/Upsample xy, Velocity to trk_SR
%     %warning('off','MATLAB:interp1:NaNstrip'); %suppress warning
%     trkS = round((Sync(end)-Sync(1))/SR*trk_SR);
%     trktime = linspace(0,BehavDur,trkS)';
%     iVel = interp1(Behavtime,v,trktime);
%     iVel(find(iVel<0)) = 0; %set negative numbers to 0 ??????????? CC HOW CAN IT BE?
%     trk = interp1(Behavtime,XY,trktime);
%     if exist('imb','var') == 1
%         imb =round(interp1(Behavtime,imb,trktime));
%     end
%     
     %% Fill in tracking to match ephys recording duration
    %%% CC added it To get real Trk_SR
    trkS = round((Sync(end)-Sync(1))/SR*trk_SR);
    XY(XY==-1)=nan;
    trktime = linspace(0,BehavDur,trkS)';
    trk = interp1(Behavtime,XY,trktime);
    XY(isnan(XY))=-1;
    trk(isnan(trk))=-1;

    if exist('Sync','var') == 1
        startTTL = Sync(1); endTTL = Sync(end); %in 20kHz
        first = round(startTTL/SR*trk_SR); %in trk_SR
        %first = NaN(first,2); %iN THEORY THIS SHOULD BE 1 LESS(?)
        first = NaN(first,3);   % CC Head direction
        last = round((SessionSamp - endTTL)/SR*trk_SR);
        %last = NaN(last,2);
        last = NaN(last,3);
        %compare length of tracking data and TTLs
        TTLlength = round((endTTL-startTTL)/SR*trk_SR);
        if TTLlength < length(trk) %%%% old TTLlength < length(iVel)
            disp('number of tracking samples is greater than number of ephys samples, end of tracking will be cropped');
            trk = trk(1:TTLlength,:);
            %%%%iVel = iVel(1:TTLlength);
            if exist('imbtrk','var') ==1
                imb = imb(1:TTLlength,:);
            end
            if length(trk)-TTLlength>2
                disp('There is an error');
            end
        elseif TTLlength > length(trk) %%%% old TTLlength > length(iVel)
            disp('number of tracking samples is less than number of ephys samples, check it');
            r= NaN((TTLlength - length(trk)),3); %%%%r= NaN((TTLlength - length(trk)),2);
            trk = [trk;r];
            %%%%iVel = [iVel;r(:,1)];
        end
        trk = [first;trk;last];       
        if Opto==1
%             OthVarFirst=nan(size(first,1),13); %%start double camera
%             OthVarLast=nan(size(last,1),13); %%end double camera
            OthVarFirst=nan(size(first,1),12);
            OthVarLast=nan(size(last,1),12);
            OtherVar = [OthVarFirst;OtherVar;OthVarLast];
            diffTrkOthVar=size(OtherVar,1)-size(trk,1);
            if abs(diffTrkOthVar)>4
                disp('Hey, smt wrong with trk and other vars');
            end
            DiffIndex=diffTrkOthVar;
            ShiftIndex=1;
%             ArrayMinusOnes=[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1]; %% start and end double camera Y maze
            ArrayMinusOnes=[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
            while DiffIndex~=0
                if diffTrkOthVar>0
                    OtherVar=OtherVar(ShiftIndex+1:end,:);
                    DiffIndex=DiffIndex-1;
                else
                    OtherVar=[ArrayMinusOnes;OtherVar];
                    DiffIndex=DiffIndex+1;
                end
                if DiffIndex~=0
                    if diffTrkOthVar>0
                        OtherVar=OtherVar(1:end-1,:);
                        DiffIndex=DiffIndex-1;
                    else
                        OtherVar=[OtherVar;ArrayMinusOnes];
                        DiffIndex=DiffIndex+1;
                    end
                end
            end
        end
        %%%%%iVel = [first(:,1);iVel;last(:,1)];       
    else
        disp('please provide matfile named with Sig4 containing TTL sync sample times');
        return
    end
%     
%     %% Remove immobility periods
%     %%% Anymaze immobility score
%     %if exist('imb','var') == 1
%     %IMB = find(imb == 1);
%     %else
%     
%     %%% Hysteresis Thresholding: high and low thresholds to define event chain
%     %1) find points above high threshold 2)set subsequent points to 1 until cross low threshold
%     low = Vel_mthr*0.90; %lower threshold set to 90% of upper threshold
%     score = zeros(length(iVel),1); score(find(iVel>Vel_mthr)) = 1;
%     score = [0;diff(score)]; r = find(score == 1);
%     
%     for k = 1:length(r)
%         t = r(k);
%         while iVel(t) > low
%             score(t) = 1;
%             t = t +1;
%         end
%     end
%     IMB = find(score == 0);
%     
%     trkRun = trk;
%     trkRun(IMB,:) = NaN;
%     
%     
    %% Save Variables
    
    if Opto==1
        trk=[trk OtherVar];
    end
    trk(find(isnan(trk))) = -1; 
%     trkRun(find(isnan(trkRun))) = -1;
    matvar = strcat(base_name, '.mat');
    if isfile(matvar)
            delete(matvar);
    end
    
    save(base_name,'trk');
    
%     trk = trkRun;
%     matvarSpeed = strcat(base_name,'_trkRun','.mat');
%     
%     if isfile(matvarSpeed)
%             delete(matvarSpeed);
%     end
%     
%     save(strcat(base_name,'_trkRun'),'trk');
    
    warning('off', 'MATLAB:rmpath:DirNotFound');
end

%% merge the .mat files creating the .whd file
if Positrack == 1
    whdmerge_temp_CC(basename,20000,trk_SR,Opto);
    %% correct the trajectory (fill gaps of less than 2s)
    if trk_SR == 50
        whdcorrect_1(basename,'.whd','.whdc',trk_SR);
    elseif trk_SR == 30
        whdcorrect_1(basename,'.whd','.whdcToBeMirr',trk_SR,Opto);
        TrkToMirr=load([basename '.whdcToBeMirr']);
        TrkToMirr(TrkToMirr==-1)=nan;
        MatrixToFindMax=TrkToMirr(:,1:2);
        MaxToThousand=max(max(MatrixToFindMax(~isnan(MatrixToFindMax))));
        if MaxToThousand < 1000
            TrkMirrxy=1000-TrkToMirr(:,1:2);
            if isfile(strcat(basename,'.whdc'))
                delete(strcat(basename,'.whdc'));
            end
%             TrkMirr= [TrkMirrxy TrkToMirr(:,3:16)]; %% double camera Y maze
            TrkMirr= [TrkMirrxy TrkToMirr(:,3:15)];
            TrkMirr(isnan(TrkMirr))=-1;           
            fid=fopen([basename,'.whdc'],'wt');
            if Opto==1
%                 fprintf(fid,' %8.5f %8.5f %3.0f %6.3f %3.0f %3.0f %6.3f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f\n',TrkMirr'); %% double camera Y maze
                fprintf(fid,' %8.5f %8.5f %3.0f %6.3f %3.0f %3.0f %6.3f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f\n',TrkMirr');
            else
                fprintf(fid,' %8.5f %8.5f %3.0f\n',TrkMirr');
            end
            fclose(fid);
        else
            disp('error in max');
        end
    else
        disp('smt wrong');
    end
end

%rmpath(genpath(folderpath));
end