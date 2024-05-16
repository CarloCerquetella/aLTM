function RenamingFiles(NewName)

%    % to evaluate
%   NewName='CC08-1031';

mypath=cd;
names = dir(mypath);
names([names.isdir]) = [];
fileNames = {names.name};

for iFile = 1: length(fileNames)  %# Loop over the file names
    OldName = fileNames{iFile};
    if OldName(end-12) == '_'
        OldPartName = OldName(end-12:end);
    elseif OldName(end-13) == '_'
        OldPartName = OldName(end-13:end);
    else
        disp('Something is wrong with the positrack name. Process stopped')
        return
    end
    newName=strcat(NewName,OldPartName);
    NewCompleteName = sprintf(newName);  %# Make the new name
    f = fullfile(mypath, NewCompleteName);
    g = fullfile(mypath, fileNames{iFile});
    movefile(g,f);        %# Rename the file
end

disp (strcat(int2str(iFile),{' '}, 'files renamed'));

end