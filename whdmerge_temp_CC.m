function whdmerge(basename,SR,trk_SR,Opto)
if nargin==0
    disp('           ')
    disp('wdhmerge needs one arguments: basename');
    disp('for example, whdmerge(RT20-0415-0105)');
    disp('It needs both whd and resofs files')
    disp('Please make sure the sampling rate of resofs file.')
    disp('           ')
    disp('The default sampling rate is 20 kHz.')    
    disp('If you want to change it, please put your sampling rate on the second argument.')  
    disp('           ')
    return
end
%disp('The default sampling rate is 20 kHz.')
disp('You can use this script for an experiment of maximum 500 sessions.')
%%% Parameters %%%
if nargin==1;SR=20000;end
%disp('           ')
disp(['Sampling rate is ',num2str(SR)]);
%disp('           ')
%disp('           ')

resofs=load([basename,'.resofs']);count=0;
sub_basename=char(basename(1:9)); 
whd=[];
for i=1:9 
    whdname=([sub_basename,'_0',num2str(i),'.mat']);
    Check=exist(whdname);
    if Check==2
        count=count+1;
        resofs_time=resofs(count);
        WHD=load(whdname);
        WHD = struct2cell (WHD); WHD = cell2mat(WHD);
        whd=vertcat(whd,WHD);
        whd_time=length(whd);
        diff_resofs_whd=resofs_time/SR-whd_time/trk_SR;
        if diff_resofs_whd>=1/trk_SR
            count2=0;
            while diff_resofs_whd>1/trk_SR
                if Opto==1
%                     whd=vertcat(whd,[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1]); %% double camera Y maze
                    whd=vertcat(whd,[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1]);
                else
                    whd=vertcat(whd,[-1 -1 -1]);
                end
                whd_time=length(whd);
                diff_resofs_whd=resofs_time/SR-whd_time/trk_SR;
                count2=count2+1;
            end
            disp(['+', num2str(count2),' was shifted on file',num2str(i)]);
        elseif diff_resofs_whd<=-1/trk_SR
            count2=0;
            while diff_resofs_whd<-1/trk_SR
                whd=whd([1:end-1],:);
                whd_time=length(whd);
                diff_resofs_whd=resofs_time/SR-whd_time/trk_SR;
                count2=count2+1;
            end
            disp(['-', num2str(count2),' was shifted on file ',num2str(i)]);
        else
            disp(['There is no shift between whd and dat files ',num2str(i)]);
        end
    else
        disp(['There is no file of ', whdname]);
    end
end

for i=10:500
    whdname=([sub_basename,'_',num2str(i),'.mat']);
    Check=exist(whdname);
    if Check==2
        count=count+1;
        resofs_time=resofs(count);
        WHD=load(whdname);
        WHD = struct2cell (WHD); WHD = cell2mat(WHD);
        whd=vertcat(whd,WHD);
        whd_time=length(whd);
        diff_resofs_whd=resofs_time/SR-whd_time/trk_SR;
        if diff_resofs_whd>=1/trk_SR
            count2=0;
            while diff_resofs_whd>1/trk_SR
                if Opto==1
%                     whd=vertcat(whd,[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1]); %% double camera Y maze
                    whd=vertcat(whd,[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1]);
                else
                    whd=vertcat(whd,[-1 -1 -1]);
                end
                whd_time=length(whd);
                diff_resofs_whd=resofs_time/SR-whd_time/trk_SR;
                count2=count2+1;
            end
            disp(['+', num2str(count2),' was shifted on file',num2str(i)]);
        elseif diff_resofs_whd<=-1/trk_SR
            count2=0;
            while diff_resofs_whd<-1/trk_SR
                whd=whd([1:end-1],:);
                whd_time=length(whd);
                diff_resofs_whd=resofs_time/SR-whd_time/trk_SR;
                count2=count2+1;
            end
            disp(['-', num2str(count2),' was shifted on file ',num2str(i)]);
        else
            disp(['There is no shift between whd and dat files ',num2str(i)]);
        end
    else
        %disp(['There is no file of ', whdname]);
    end
end

if isfile(strcat(basename,'.whd'))
    delete(strcat(basename,'.whd'));
end

if abs(resofs(end)/SR-length(whd)/trk_SR)<1/trk_SR
    fid=fopen([basename,'.whd'],'wt');
    if Opto==1
%         fprintf(fid,' %8.5f %8.5f %3.0f %6.3f %3.0f %3.0f %6.3f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f\n',whd'); %% double camera Y maze
        fprintf(fid,' %8.5f %8.5f %3.0f %6.3f %3.0f %3.0f %6.3f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f\n',whd');
    else
        fprintf(fid,' %8.5f %8.5f %3.0f\n',whd'); %%CC before fprintf(fid,' %3.2f %3.2f %3.2f\n',whd');
    end
    fclose(fid);
else
    disp('something wrong')
end
end
    
