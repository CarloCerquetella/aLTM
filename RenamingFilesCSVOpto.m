function RenamingFilesCSVOpto(NewName)

%    % to evaluate
%   NewName='CC57-0929';
name=cd;
% NewName=strcat(name(end-13:end-5));
cc=1;

EndPath=cd;
folder2enter=strcat('Tracking');
cd ..
cd ..
cd(folder2enter);

mypath=cd;
names = dir(mypath);
names([names.isdir]) = [];
fileNames2 = {names.name};
fileNames= natsort(fileNames2);

for iFile = 1: length(fileNames)  %# Loop over the file names
    OldName = fileNames{iFile};
    if sum(OldName(end-(3+strlength(abs(cc)+"")):end)==strcat(int2str(cc),'.csv'))==4+strlength(abs(cc)+"")
        if cc<10
            OldPartName = strcat('_0',int2str(cc),'.csv');
        elseif cc>=10
            OldPartName = strcat('_',int2str(cc),'.csv');
        else
            disp('Something is wrong with the csv name. Process stopped')
            return
        end
        cc=cc+1;
        newName=strcat(NewName,OldPartName);
        NewCompleteName = sprintf(newName);  %# Make the new name
        f = fullfile(EndPath, NewCompleteName);
        g = fullfile(mypath, fileNames{iFile});
        copyfile(g,f);        %# copying file in the processeddata folder
    end
end

disp(strcat(int2str(iFile),{' '}, 'files renamed'));

cd ..
cd(EndPath);
clear

end