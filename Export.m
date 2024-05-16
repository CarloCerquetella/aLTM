% %% Load dat file
% fileinfo = dir('CC07-0606-0105.dat'); 
% 
% num_channels = 32;
% %num_samples = round(fileinfo.bytes / (num_channels * 2));  % int16 = 2 bytes
% num_samples = fileinfo.bytes/2; % int16 = 2 bytes 
% fid = fopen('CC07-0606-0105.dat', 'r'); 
% v = fread(fid, num_samples, 'int16'); 
% fclose(fid); 
% 
% v = v * 0.195;  % convert to microvolts
% 
% v = reshape(v, 32, []);
% 
% sampling_rate = 20000;
% cutoff_frequencies = [0.5, 450];
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
% filtered_v4 = v .* 0;
% for i_chan = 1:num_channels
%     filtered_v4(i_chan, :) = filtfilt(b, a, v(i_chan, :));
% end
% %display(filtered_v)

%% New variable
var_temp(1, :) = v(3, :); %Unfiltered
var_temp(2, :) = v(18, :); %Unfiltered
var_temp(3, :) = v(19, :); %Unfiltered
var_temp(4, :) = v(20, :); %Unfiltered

var_temp(5, :) = v0(5, :); %Unfiltered
var_temp(6, :) = v0(6, :); %Unfiltered
var_temp(7, :) = v0(7, :); %Unfiltered
var_temp(8, :) = v0(8, :); %Unfiltered

var_temp(9, :) = v6(29, :); %Unfiltered
var_temp(10, :) = v6(30, :); %Unfiltered
var_temp(11, :) = v6(31, :); %Unfiltered
var_temp(12, :) = v6(32, :); %Unfiltered

var_temp(13, :) = v6(5, :); %Unfiltered
var_temp(14, :) = v6(6, :); %Unfiltered
var_temp(15, :) = v6(7, :); %Unfiltered
var_temp(16, :) = v6(8, :); %Unfiltered

var_temp(17, :) = v4(29, :); %Unfiltered
var_temp(18, :) = v4(30, :); %Unfiltered
var_temp(19, :) = v4(31, :); %Unfiltered
var_temp(20, :) = v4(32, :); %Unfiltered

var_temp(21, :) = v4(5, :); %Unfiltered
var_temp(22, :) = v4(6, :); %Unfiltered
var_temp(23, :) = v4(7, :); %Unfiltered
var_temp(24, :) = v4(8, :); %Unfiltered

var_temp(25, :) = v5(1, :); %Unfiltered

% 
% %ref channel
%var_temp(5, :) = v0(31, :); %Unfiltered ref channel
%var_temp(10, :) = v4(31, :); %LFP
% var_temp(27, :) = filtered_v5(1, :); %SWR
% var_temp(5, :) = v(31, :); %Unfiltered ref channel
%var_temp(5, :) = filtered_v7(31, :); %LFP
% var_temp(10, :) = v1(31, :); %SWR
% Sub det-ref
% var_temp(16, :) = (((v(5, :)) + (v(6, :)) + (v(7, :)) + (v(8, :)))/4) - (v(31, :)); %Unfiltered sub
% var_temp(11, :) = (((v0(5, :)) + (v0(6, :)) + (v0(7, :)) + (v0(8, :)))/4) - (v0(31, :)); %LFP sub
%var_temp(6, :) = (((filtered_v7(5, :)) + (filtered_v7(6, :)) + (filtered_v7(7, :)) + (filtered_v7(8, :)))/4) - (filtered_v7(31, :)); %SWR sub
%var_temp(33, :) = (((v1(5, :)) + (v1(6, :)) + (v1(7, :)) + (v1(8, :))+(v1(13, :)) + (v1(14, :)) + (v1(15, :)) + (v1(16, :)))/8) - (v1(32, :));
% var_temp(18, :) = (((filtered_v3(5, :)) + (filtered_v3(6, :)) + (filtered_v3(7, :)) + (filtered_v3(8, :)))/4) - (filtered_v3(31, :)); 
% var_temp(19, :) = filtered_v8(31, :);
% var_temp(20, :) = filtered_v8(5, :);
%% Theta / Delta

%var_temp(9, :) = 1000*(v13(13, :))/(v14(13, :));
%var_temp(10, :) = 1000*(v14(13, :))/(v13(13, :));

%% Write trace to disk
fid = fopen('CC10-0811_01_1ch.dat', 'w'); 
fwrite(fid,int16(var_temp(:)), 'int16');
fclose(fid);

%save('CC07-1211-0104.mat', 'filtered_v', '-v7.3')

 fid = fopen('CluToShow.dat', 'r'); 
 v15 = fread(fid, num_samples, 'int16');
 fclose(fid); 
 v15 = reshape(var_temp, 4, []);
