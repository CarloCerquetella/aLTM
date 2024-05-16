function ToPloteEventOnNeuroscopeProbe(basename)

DINfile='board-DIN-01.dat';

%% Parameters
SR = 20000; %ephys sampling rate

%% Accessing all the sessions
config_file=([basename, '.par']);
fid = fopen(config_file);
line_number = 1;
while (line_number < 6)
    [~] = fgetl(fid);
    line_number = line_number + 1;
end

if (line_number == 6)
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
    
    resofs = load([basename '.resofs']);
    Sync = sig;
    session=j;
    
    if session == 1
        Start = 0;
    else
        Start = resofs(session-1);
    end
    Sync=Sync+Start; %%Cumulative time
    Sync=Sync/SR*1000; %%Convert to ms
    %% Load Inputs
    SessToProcess=strcat('Processing session:',{' '},base_name);
    disp(SessToProcess);
   if size(Sync,2)>0
       if j>9
           Prefix='.s';
       else
           Prefix='.se';
       end
       if isfile(strcat(base_name,Prefix,int2str(j),'.evt'))
           delete(strcat(base_name,Prefix,int2str(j),'.evt'));
       end
    fid = fopen(strcat(base_name,Prefix,int2str(j),'.evt'),'w');
    for ii = 1:size(Sync,2)
        fprintf(fid,'%9f\t %6s\n',Sync(1,ii),'event');
    end
    fclose(fid);
   end
end

end
    

