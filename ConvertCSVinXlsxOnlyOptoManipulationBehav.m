function ConvertCSVinXlsxOnlyOptoManipulationBehav(basename)

%% Accessing all the sessions
config_file=([basename, '.par']);
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

for j = 1:length(file_name_array)

    filename = strcat(file_name_array(1,j), '.csv');
    T_dataTable = readtable(filename,'ReadVariableNames',false);
    headers = {'Time','X','Y','Speed(m/s)','Immobile','Freezing','Length(m)','RelLength','Closed','Center','LightZone','Openable','RewardTwo','RewardOne','Laser'};
    T_dataArrayTime=seconds(T_dataTable{1:size(T_dataTable,1),1});
    T_dataArrayX=(T_dataTable{1:size(T_dataTable,1),2});
    T_dataArrayY=(T_dataTable{1:size(T_dataTable,1),3});
    T_dataArraySpeed=(T_dataTable{1:size(T_dataTable,1),4});
    T_dataArrayImmobile=(T_dataTable{1:size(T_dataTable,1),5});
    T_dataArrayFreezing=(T_dataTable{1:size(T_dataTable,1),6});
    T_dataArrayLength=(T_dataTable{1:size(T_dataTable,1),7});
    T_dataArrayRelLength=(T_dataTable{1:size(T_dataTable,1),8});
    T_dataArrayClosed=(T_dataTable{1:size(T_dataTable,1),9});
    T_dataArrayCenter=(T_dataTable{1:size(T_dataTable,1),10});
    T_dataArrayLight=(T_dataTable{1:size(T_dataTable,1),11});
    T_dataArrayOpenable=(T_dataTable{1:size(T_dataTable,1),12});
    T_dataArrayRewardTwo=(T_dataTable{1:size(T_dataTable,1),13});
    T_dataArrayRewardOne=(T_dataTable{1:size(T_dataTable,1),14});
    T_dataArrayLaser=(T_dataTable{1:size(T_dataTable,1),15});    

    T_dataArray=[T_dataArrayTime T_dataArrayX T_dataArrayY T_dataArraySpeed T_dataArrayImmobile T_dataArrayFreezing T_dataArrayLength T_dataArrayRelLength T_dataArrayClosed T_dataArrayCenter T_dataArrayLight T_dataArrayOpenable T_dataArrayRewardTwo T_dataArrayRewardOne T_dataArrayLaser];

    T_data = array2table(T_dataArray, 'VariableNames', headers);
    xlsx_filename = strcat(file_name_array(1,j), '.xlsx');
    if isfile(xlsx_filename)
        delete(xlsx_filename);
    end
    writetable(T_data, xlsx_filename);


end