function BarLTM(session)


cd('Analyses')
cd('Single-trial')
cd('Results')
% session=[84,86,88,90,92,94,96,98,100,102,104,106];

for i=1:12
ArraytoWrite=nan(2000,50);    
cc=1;    
xlsxfiles = dir(strcat('NormToPeakSess',int2str(session(1,i)),'*.xlsx'));
A=struct2cell(xlsxfiles);

ArraytoWrite3=nan(2000,50);    
cc3=1;    
xlsxfiles3 = dir(strcat('ZscoredSess',int2str(session(1,i)),'*.xlsx'));
A3=struct2cell(xlsxfiles3);

for ii= 1:size(A,2)
    name=char(A(1,ii));
    XlsxName=xlsread([name]);
    ArraytoWrite(cc:(cc+size(XlsxName,1)-1),1:(size(XlsxName,2)))=XlsxName(1:end,1:end);
    cc=cc+size(XlsxName,1);
end

for ii= 1:size(A3,2)
    name3=char(A3(1,ii));
    XlsxName3=xlsread([name3]);
    ArraytoWrite3(cc3:(cc3+size(XlsxName3,1)-1),1:(size(XlsxName3,2)))=XlsxName3(1:end,1:end);
    cc3=cc3+size(XlsxName3,1);
end

filename1 = strcat('BarLTM',int2str(i),'.xlsx');
TableToWrite=table(ArraytoWrite);
writetable(TableToWrite,filename1,'WriteVariableNames',0);

filename3 = strcat('ZscoredBarLTM',int2str(i),'.xlsx');
TableToWrite3=table(ArraytoWrite3);
writetable(TableToWrite3,filename3,'WriteVariableNames',0);

end
clear all

cd ..
cd ..
cd ..

end