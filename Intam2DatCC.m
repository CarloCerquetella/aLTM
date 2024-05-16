function New_raw_data=Intam2DatCC(Basename)
New_raw_data=[];
for i = [22 21 20 19 18 17 14 13 12 11 10 9 8 7 6 5 4 3 2 1 16 15 0 31 30 29 28 27 26 25 24 23]  
    if i < 10
        raw_fid = fopen([Basename,'-00',num2str(i),'.dat']);
    else
        raw_fid = fopen([Basename,'-0',num2str(i),'.dat']);
    end
    dims=[1,inf];
    raw_data = fread(raw_fid,dims,'int16=>int16')'; 
    fclose(raw_fid);
    New_raw_data=[New_raw_data raw_data];
end
resampled_fid = fopen('CC09-1001_133.dat','w');
fwrite(resampled_fid,New_raw_data','int16');
fclose(resampled_fid);
