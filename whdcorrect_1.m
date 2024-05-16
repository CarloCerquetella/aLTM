function whdc=whdcorrect_1(basename,intext,outext,trk_SR,Opto)
% inext and outext are string that specify the extension of the file. inext
% for the one who is entering nad outext for the one that it is being
% created
if trk_SR == 50
    Value=100;
elseif trk_SR == 30
    Value=61;
else
    disp('something is wrong');
    return
end

%% Dealing with -1
% Borders
whd=load([basename,intext]);
whdc=whd(:,1:2);
U=find(whdc(:,1)~=-1); %%%% find when the animal moved
% Firstlimit=U(1);
% Secondlimit=U(end);
% whdc=whdc(Firstlimit:Secondlimit)';

% In the middle
LL=diff(U); 
KK=find(LL~=1); %% find when positrack lost the animal
cont=0;

for i=1:length(KK) %%%% cc old for i=1:length(KK)
    if LL(KK(i))> Value % 50Hz= 20 ms, 100 = 2 s; or 30Hz = 33ms, 60 = 2s
        disp('There is a period, bigger than 2s second, in which positrack lost the animal')
        cont=cont+1;
    else
        Interval=whdc(U(KK(i)),1):(whdc(U(KK(i)+1),1)-whdc(U(KK(i)),1))/(U(KK(i)+1)-U(KK(i))):whdc(U(KK(i)+1),1);
        if isempty(Interval)
            whdc(U(KK(i)):U(KK(i)+1),1)=whdc(U(KK(i)),1);
        else
            whdc(U(KK(i)):U(KK(i)+1),1)=Interval';
        end
        Interval=whdc(U(KK(i)),2):(whdc(U(KK(i)+1),2)-whdc(U(KK(i)),2))/(U(KK(i)+1)-U(KK(i))):whdc(U(KK(i)+1),2);
        if isempty(Interval)
            whdc(U(KK(i)):U(KK(i)+1),2)=whdc(U(KK(i)),2);
        else
            whdc(U(KK(i)):U(KK(i)+1),2)=Interval';
        end
        if trk_SR == 50
            Angle1a=sin(whd(U(KK(i)),3)*pi/180);
            Angle1b=cos(whd(U(KK(i)),3)*pi/180);
            Angle2a=sin(whd(U(KK(i)+1),3)*pi/180);
            Angle2b=cos(whd(U(KK(i)+1),3)*pi/180);
            Interval1=Angle1a:(Angle2a-Angle1a)/(U(KK(i)+1)-U(KK(i))):Angle2a;
            Interval2=Angle1b:(Angle2b-Angle1b)/(U(KK(i)+1)-U(KK(i))):Angle2b;
            clear Sinmat Cosmat
            if isempty(Interval1)
                Sinmat(1:(U(KK(i)+1)-U(KK(i)))+1)=Angle1a;
            else
                Sinmat=Interval1;
            end
            if isempty(Interval2)
                Cosmat(1:(U(KK(i)+1)-U(KK(i)))+1)=Angle1b;
            else
                Cosmat=Interval2;
            end
            if length(Sinmat) == length(Cosmat)
                whd(U(KK(i)):U(KK(i)+1),3)=(atan2(Sinmat',Cosmat')).*180./pi;
            end
            for j=U(KK(i)):U(KK(i)+1)
                if whd(j,3) < 0
                    whd(j,3) = whd(j,3) + 360;
                end
            end
        end
    end
end


if isfile(strcat(basename,outext))
    delete(strcat(basename,outext));
end

if Opto==1
%     whdc(:,3:16)=whd(:,3:16); %% double camera Y maze
    whdc(:,3:15)=whd(:,3:15);
    fid=fopen([basename,outext],'wt');
%     fprintf(fid,' %8.5f %8.5f %3.0f %6.3f %3.0f %3.0f %6.3f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f\n',whdc'); %% double camera Y maze
    fprintf(fid,' %8.5f %8.5f %3.0f %6.3f %3.0f %3.0f %6.3f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f %3.0f\n',whdc');
    fclose(fid);
else
    whdc(:,3)=whd(:,3);
    fid=fopen([basename,outext],'wt');
    fprintf(fid,' %8.5f %8.5f %3.0f\n',whdc');  %%CC before fprintf(fid,' %3.2f %3.2f %3.2f\n',whd');
    fclose(fid);
end
disp(strcat('Total of sessions in which the animal was lost:',int2str(cont)));
end

