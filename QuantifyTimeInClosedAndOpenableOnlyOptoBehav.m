function QuantifyTimeInClosedAndOpenableOnlyOptoBehav(sessionLTMI,nameSess)

TableTime=zeros(12,4);
config_file=([nameSess, '.par']);
fid = fopen(config_file);
line_number = 1;
while (line_number < 12) %% 6 if it s the probe par file
    [~] = fgetl(fid);
    line_number = line_number + 1;
end

if (line_number == 12) %% 6 if it s the probe par file
    session_number = str2num(fgetl(fid));
    file_name_array = string(session_number);
    for i = 1:session_number
        file_name_array(i) = fgetl(fid);
    end
end
fclose(fid);

for isess=1:size(sessionLTMI,2)
    NameFile=strcat(file_name_array(1,sessionLTMI(1,isess)),'.xlsx');
    TableFile=readtable(NameFile,'ReadVariableNames',false);
    DifferenceOfTime=[0;diff(TableFile{:,1})];
    TimeInOpen=sum(DifferenceOfTime(TableFile{:,12}==1));
    TimeInClosed=sum(DifferenceOfTime(TableFile{:,9}==1));
    TimeInCenter=sum(DifferenceOfTime(TableFile{:,10}==1));
    TimeInLight=sum(DifferenceOfTime(TableFile{:,11}==1));
    if TimeInCenter+TimeInClosed+TimeInLight+TimeInOpen < 450 || TimeInCenter+TimeInClosed+TimeInOpen > 520
        disp('Attention, time in zones not correct');
    end
    TableTime(isess,1)=TimeInClosed;
    TableTime(isess,2)=TimeInCenter;
    TableTime(isess,4)=TimeInOpen;
    TableTime(isess,3)=TimeInLight;
end
FolderName='Analyses';
if isfolder(FolderName)
else mkdir(sprintf('%s', FolderName))
end
cd(FolderName);

FolderNameI='LTM';
if isfolder(FolderNameI)
else mkdir(sprintf('%s', FolderNameI))
end
cd(FolderNameI);

arraytable=table(TableTime);
nametable=strcat('TimeInClosedCenterLightOpenInSec.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);


end