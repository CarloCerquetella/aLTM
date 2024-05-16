function NumberOfTrialsOnlyBehaviour(nameSess,sessionLTMI)

MatrixTrials=zeros(12,1);

config_file=([nameSess, '.par']);
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

for isess=1:size(sessionLTMI,2)
    Ntrials=0;
    NameFile=strcat(file_name_array(1,sessionLTMI(1,isess)),'.xlsx');
    TableFile=readtable(NameFile,'ReadVariableNames',false);
    Open=TableFile{:,10}==1;
    Center=TableFile{:,9}==1;
    Closed=TableFile{:,8}==1;
    AllNumb=1:(size(TableFile,1)-1);
    IDBin=find((Center(AllNumb,1)==1 | (Closed(AllNumb,1)==1)) & Open(AllNumb+1,1)==1);

    for istaysinopen=1:size(IDBin,1)
        if IDBin(istaysinopen,1)+60<=size(Open,1)
            if sum(Open(IDBin(istaysinopen,1)+1:IDBin(istaysinopen,1)+60,1))==60
                Ntrials=Ntrials+1;
            end
        end
    end
    MatrixTrials(isess,1)=Ntrials;
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

arraytable=table(MatrixTrials);
nametable=strcat('NumberOfTrials.xlsx');
if isfile(nametable)==1
    delete(nametable);
end
writetable(arraytable,nametable);



end