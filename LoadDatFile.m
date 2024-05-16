clear, clc

Basename='RN10-0811_';
for i=1:82
    Session=i;
    BasenameToSave='SpikesForCCSess';

NumSess=int2str(Session);

if Session<10
    BasenameDat=strcat(Basename,'0',NumSess,'.dat');
    BasenameToSaveDat=strcat(BasenameToSave,'0',NumSess,'.dat');
else
    BasenameDat=strcat(Basename,NumSess,'.dat');
    BasenameToSaveDat=strcat(BasenameToSave,NumSess,'.dat');
end

%% dat
fileinfo = dir('wFilKSmatr.dat'); 

num_channels = 26;
num_samples = fileinfo.bytes/2; % int16 = 2 bytes 
fid = fopen('wFilKSmatr.dat', 'r'); 
v = fread(fid,[num_channels, num_samples], 'int16'); 
fclose(fid); 

v = v * 0.195;  % convert to microvolts

v = reshape(v, 32, []);

 %% Filter for spikes
 
sampling_rate = 20000;
cutoff_frequencies = [500, 5000];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency = sampling_rate / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
if n > 3
    n = 3;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v10 = v .* 0;
for i_chan = 1:num_channels
    filtered_v10(i_chan, :) = filtfilt(b, a, v(i_chan, :));
end
%display(filtered_v)

%% Write trace to disk
fid = fopen(BasenameToSaveDat, 'w'); 
fwrite(fid,int16(filtered_v10(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

 fid = fopen(BasenameToSaveDat, 'r'); 
 v12 = fread(fid, num_samples, 'int16');
 fclose(fid); 
 v12 = reshape(v12, 32, []);
end

%% FEX

fileinfo4 = dir('CC09-1220-0105.fex'); 

num_channels4 = 32;
num_samples4 = fileinfo4.bytes/2; % int16 = 2 bytes 
fid4 = fopen('CC09-1220-0105.fex', 'r'); 
v4 = fread(fid4, num_samples4, 'int16'); 
fclose(fid4); 

v4 = v4 * 0.195;  % convert to microvolts

v4 = reshape(v4, 32, []);

%% psw

fileinfo5 = dir('CC09-1220-0105.psw'); 

num_channels5 = 32;
num_samples5 = fileinfo5.bytes/2; % int16 = 2 bytes 
fid5 = fopen('CC09-1220-0105.psw', 'r'); 
v5 = fread(fid5, num_samples5, 'int16'); 
fclose(fid5); 

v5 = v5 * 0.195;  % convert to microvolts

v5 = reshape(v5, 1, []);

%% eeg

fileinfo2 = dir('CC09-1220-0105.eeg'); 

num_channels2 = 32;
%num_samples2 = round(fileinfo2.bytes / (num_channels2 * 2));  % int16 = 2 bytes
num_samples2 = fileinfo2.bytes/2; % int16 = 2 bytes 
fid2 = fopen('CC09-1220-0105.eeg', 'r'); 
v0 = fread(fid2, num_samples2, 'int16'); 
fclose(fid2); 

v0 = v0 * 0.195;  % convert to microvolts

v0 = reshape(v0, 32, []);

%% filtering eeg for SWRs
sampling_rate2 = 1250;
cutoff_frequencies = [120, 250];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency2 = sampling_rate2 / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency2, attenuation_frequencies / Nyquist_frequency2, 3, 60);
if n > 3
    n = 3;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v7 = v0 .* 0;
for i_chan = 1:num_channels2
    filtered_v7(i_chan, :) = filtfilt(b, a, v0(i_chan, :));
end

%% Write trace to disk
fid = fopen('SWRs.eeg', 'w'); 
fwrite(fid,int16(filtered_v7(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

 fid = fopen('SWRs.eeg', 'r'); 
 v7 = fread(fid, num_samples2, 'int16');
 fclose(fid); 
 v7 = reshape(v7, 32, []);

%% filtering eeg for SWRs peak at 110 Hz
sampling_rate2 = 1250;
cutoff_frequencies = [109, 111];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency2 = sampling_rate2 / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency2, attenuation_frequencies / Nyquist_frequency2, 3, 60);
if n > 3
    n = 3;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v8 = v0 .* 0;
for i_chan = 1:num_channels2
    filtered_v8(i_chan, :) = filtfilt(b, a, v0(i_chan, :));
end

%% eegh

fileinfo4 = dir('CC09-1220-0105.eegh'); 

num_channels4 = 32;
%num_samples2 = round(fileinfo2.bytes / (num_channels2 * 2));  % int16 = 2 bytes
num_samples4 = fileinfo4.bytes/2; % int16 = 2 bytes 
fid4 = fopen('CC09-1220-0105.eegh', 'r'); 
v8 = fread(fid4, num_samples4, 'int16'); 
fclose(fid4); 

v8 = v8 * 0.195;  % convert to microvolts

v8 = reshape(v8, 32, []);

%% Sixth Filter Theta eegh
 
sampling_rate = 5000;
cutoff_frequencies = [4, 12];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency = sampling_rate / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
if n > 2
    n = 2;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v8 = v8 .* 0;
for i_chan = 1:num_channels4
    filtered_v8(i_chan, :) = filtfilt(b, a, v8(i_chan, :));
end
%display(filtered_v)
filtered_v8 = filtered_v8 * 10;
%% Write trace to disk
fid = fopen('theta.eegh', 'w'); 
fwrite(fid,int16(filtered_v8(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

fid = fopen('theta.eegh', 'r'); 
v13 = fread(fid, num_samples4, 'int16');
fclose(fid); 
v13 = reshape(v13, 32, []);

%% Sixth Filter Delta eegh
 
sampling_rate = 5000;
cutoff_frequencies = [1, 3];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency = sampling_rate / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
if n > 2
    n = 2;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v9 = v8 .* 0;
for i_chan = 1:num_channels4
    filtered_v9(i_chan, :) = filtfilt(b, a, v8(i_chan, :));
end
%display(filtered_v)

%% Write trace to disk
fid = fopen('delta.dat', 'w'); 
fwrite(fid,int16(filtered_v9(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

fid = fopen('delta.dat', 'r'); 
v14 = fread(fid, num_samples4, 'int16');
fclose(fid); 
v14 = reshape(v14, 32, []);


% filter
% sampling_rate = 20000;
% cutoff_frequencies = [40, 60];
% attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];
% 
% % Design filter
% Nyquist_frequency = sampling_rate / 2;
% [n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
% if n > 3
%     n = 3;
% end
%     
% % Apply filter
% [b, a] = butter(n, Wn);
% filtered_v = v .* 0;
% for i_chan = 1:num_channels
%     filtered_v(i_chan, :) = filtfilt(b, a, v(i_chan, :));
% end
% %display(filtered_v)
% 
% %% Write trace to disk
% fid = fopen('LGamma.fil', 'w'); 
% fwrite(fid,double(filtered_v(:)), 'double');
% fclose(fid);
% 
% %save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')
% 
% %% 
% 
%  fid = fopen('LGamma.fil', 'r'); 
%  v2 = fread(fid, num_samples, 'double');
%  fclose(fid); 
%  v2 = reshape(v2, 32, []);
% 
% %% Second filter
% 
% sampling_rate = 20000;
% cutoff_frequencies = [60, 100];
% attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];
% 
% % Design filter
% Nyquist_frequency = sampling_rate / 2;
% [n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
% if n > 3
%     n = 3;
% end
%     
% % Apply filter
% [b, a] = butter(n, Wn);
% filtered_v2 = v .* 0;
% for i_chan = 1:num_channels
%     filtered_v2(i_chan, :) = filtfilt(b, a, v(i_chan, :));
% end
% %display(filtered_v)
% 
% %% Write trace to disk
% fid = fopen('HGamma.fil', 'w'); 
% fwrite(fid,double(filtered_v2(:)), 'double');
% fclose(fid);
% 
% %save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')
% 
% %% 
% 
%  fid = fopen('HGamma.fil', 'r'); 
%  v4 = fread(fid, num_samples, 'double');
%  fclose(fid); 
%  v4 = reshape(v4, 32, []);
 
 %% Third Filter Sharp Wave
 
sampling_rate2 = 1250;
cutoff_frequencies = [2, 50];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency2 = sampling_rate2 / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency2, attenuation_frequencies / Nyquist_frequency2, 3, 60);
if n > 2
    n = 2;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v3 = v0 .* 0;
for i_chan = 1:num_channels2
    filtered_v3(i_chan, :) = filtfilt(b, a, v0(i_chan, :));
end
%display(filtered_v)

% Write trace to disk
fid = fopen('SPW.eeg', 'w'); 
fwrite(fid,int16(filtered_v3(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

 fid = fopen('SPW.eeg', 'r'); 
 v6 = fread(fid, num_samples2, 'int16');
 fclose(fid); 
 v6 = reshape(v6, 32, []);
 
  %% Fourth Filter LFP
 
sampling_rate = 20000;
cutoff_frequencies = [0.5, 450];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency = sampling_rate / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
if n > 3
    n = 3;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v4 = v .* 0;
for i_chan = 1:num_channels
    filtered_v4(i_chan, :) = filtfilt(b, a, v(i_chan, :));
end
%display(filtered_v)

%% Write trace to disk
fid = fopen('CC09-1221-0101.lfp', 'w'); 
fwrite(fid,int16(filtered_v4(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

% 

 fid = fopen('CC09-1221-0101.lfp', 'r'); 
 v8 = fread(fid, num_samples, 'int16');
 fclose(fid); 
 v8 = reshape(v8, 32, []);
 
  %% Fifth Filter SWR
 
sampling_rate = 20000;
cutoff_frequencies = [120, 250];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency = sampling_rate / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
if n > 3
    n = 3;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v5 = v .* 0;
for i_chan = 1:num_channels
    filtered_v5(i_chan, :) = filtfilt(b, a, v(i_chan, :));
end
%display(filtered_v)

%% Write trace to disk
fid = fopen('SWR.dat', 'w'); 
fwrite(fid,int16(filtered_v5(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

 fid = fopen('SWR.dat', 'r'); 
 v10 = fread(fid, num_samples, 'int16');
 fclose(fid); 
 v10 = reshape(v10, 32, []);
 
 %% Filter for spikes
 
sampling_rate = 20000;
cutoff_frequencies = [500, 5000];
attenuation_frequencies = [cutoff_frequencies(1) - 0.2, cutoff_frequencies(2) + 0.2];

% Design filter
Nyquist_frequency = sampling_rate / 2;
[n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
if n > 3
    n = 3;
end
    
% Apply filter
[b, a] = butter(n, Wn);
filtered_v10 = v .* 0;
for i_chan = 1:num_channels
    filtered_v10(i_chan, :) = filtfilt(b, a, v(i_chan, :));
end
%display(filtered_v)

%% Write trace to disk
fid = fopen('SpikesForCCSess1.dat', 'w'); 
fwrite(fid,int16(filtered_v10(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

%% 

 fid = fopen('SpikesForCCSess1.dat', 'r'); 
 v12 = fread(fid, num_samples, 'int16');
 fclose(fid); 
 v12 = reshape(v12, 32, []);
 
 
% %% Sixth Filter Theta
%  
% sampling_rate = 20000;
% cutoff_frequencies = [4, 12];
% attenuation_frequencies = [cutoff_frequencies(1) - 0.5, cutoff_frequencies(2) + 0.5];
% 
% % Design filter
% Nyquist_frequency = sampling_rate / 2;
% [n, Wn] = buttord(cutoff_frequencies ./ Nyquist_frequency, attenuation_frequencies / Nyquist_frequency, 3, 60);
% if n > 2
%     n = 2;
% end
%     
% % Apply filter
% [b, a] = butter(n, Wn);
% filtered_v6 = v .* 0;
% for i_chan = 1:num_channels
%     filtered_v6(i_chan, :) = filtfilt(b, a, v(i_chan, :));
% end
% %display(filtered_v)
% 
% %% Write trace to disk
% fid = fopen('theta.dat', 'w'); 
% fwrite(fid,int16(filtered_v6(:)), 'int16');
% fclose(fid);
% 
% %save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')
% 
% %% 
% 
% fid = fopen('theta.dat', 'r'); 
% v12 = fread(fid, num_samples, 'int16');
% fclose(fid); 
% v12 = reshape(v12, 32, []);

% %% Thomas Filter
% thetaf1 = fir1(3000,[2.*(4./20000) 2.*(12./20000)],'bandpass', gausswin(3000+1));
% % % %gammaf1 = fir1(1024,[2.*(30./20000) 2.*(60./20000)],'bandpass', gausswin(1024+1));
% % filtTheta = filter(thetaf1,1,v(:));
% filtTheta(1:(3000/2)) = [];
% % 
%  %% Write trace to disk
%  fid = fopen('theta.dat', 'w'); 
%  fwrite(fid,int16(filtTheta(:)), 'int16');
%  fclose(fid);
%  
% %  %save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')
% %  
% %  %% 
% %  
%   fid = fopen('theta.dat', 'r'); 
%   v12 = fread(fid, num_samples, 'int16');
%   fclose(fid); 
%   v12 = reshape(v12, 32, []);
% 
% %filtgammaLFP = filter(gammaf1,1,v(1,:));
% %filtgammaLFP(1:(1024/2)) = [];
% 
% % %figure
% % %hold on
% % %plot(v(1, 1:20000))
% % %plot(filtLFP(1:20000),'Color','red')
% % %plot(filtgammaLFP(1:20000)-1,'Color','black')
% 
% % %% Old New Theta Filter
% % 
% % Thetafilt = eegfilt(v,20000,4,12);
% % 
% % %% Write trace to disk
% % fid = fopen('theta.dat', 'w'); 
% % fwrite(fid,int16(Thetafilt(:)), 'int16');
% % fclose(fid);
% % 
% % %save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')
% % 
% % %% 
% % 
% % fid = fopen('theta.dat', 'r'); 
% % v12 = fread(fid, num_samples, 'int16');
% % fclose(fid); 
% % v12 = reshape(v12, 32, []);
% 
% % 
% %  %% plot
% %  %plot(filtered_v(1, 1:10000)); hold on; plot(v(1, 1:10000)); hold on; plot(filtered_v2(1, 1:10000)); hold on; plot(filtered_v3(1, 1:10000))