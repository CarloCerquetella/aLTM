function spk = filteredspikes(filename, tetrode2use, clu2use, nChannels, sessions)

% creates a matrix of the spikes that belong to the channels of
%'tetrode2use', meaned over all the spikes from the cluster 'clu2use'

%   filename = 'SC11-0927-0115_resampled';
%   tetrode2use=7;
%   clu2use = 2;
%   nChannels = 3;

if nargin == 4

SpkSampl = 32;
spk = readmulti([filename,'.spk.', num2str(tetrode2use)], nChannels);

spk=spk';

nSpikes = size(spk, 2)/SpkSampl;

spk = reshape(spk, [nChannels, SpkSampl, nSpikes]);


    
clu =load([filename, '.clu.',num2str(tetrode2use)]);
    
clu=clu(2:end);
    
%     
% res=load([filename,'.res.',num2str(tetrode2use)]);
   

id = clu==clu2use; %spikes that belong to cluster (eg A);
    
    

spk = spk(:,:, id);      

else 
    SpkSampl = 32;
spk = readmulti([filename,'.spk.', num2str(tetrode2use)], nChannels);

spk=spk';

nSpikes = size(spk, 2)/SpkSampl;

spk = reshape(spk, [nChannels, SpkSampl, nSpikes]);


    
clu = load([filename, '.clu.',num2str(tetrode2use)]);
    
clu=clu(2:end);

    
res=load([filename,'.res.',num2str(tetrode2use)]);
    
resofs = load([filename,'.resofs']);       
    
res_rel = zeros(length(res),1);

for s = 1: length(sessions)
   
    if sessions(s)== 1
        
    res_rel = (res < resofs(s));    
    else
    res_rel = res_rel + (res > resofs(sessions(s)-1) & res < resofs(sessions(s)));
    end
    
end

id = (clu==clu2use & res_rel ==1); %spikes that belong to cluster (eg A);

spk = spk(:,:, id);      

end

end

    