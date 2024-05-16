function ConfigSessionsLinearScalingOnlyBehaviourScrambled
rng shuffle
 if isfile('Configuration_LinearTrack1.txt')
    delete('Configuration_LinearTrack1.txt');
 end
fid = fopen('Configuration_LinearTrack1.txt','a');
fprintf(fid, 'LINEAR TRACK MAZE\n');
fclose(fid);

session = 'Session_';

v2 = [1,2,3,4,5,6,7,8,9,10,11,12,13];

for i = 1:13
    switch i
        case 1
            sessions = ([session,'One']);
        case 2
            sessions = ([session,'Two']);
        case 3
            sessions = ([session,'_Three']);
        case 4
            sessions = ([session,'Four']);
        case 5
            sessions = ([session,'_Five']);
        case 6
            sessions = ([session,'Six']);
        case 7
            sessions = ([session,'Seven']);
        case 8
            sessions = ([session,'Eight']);
        case 9
            sessions = ([session,'Nine']);
        case 10
            sessions = ([session,'Ten']);
        case 11
            sessions = ([session,'Eleven']);
        case 12
            sessions = ([session,'Twelve']);
        case 13
            sessions = ([session,'Thirteen']);      
        otherwise
            disp('Error in i value.');
    end
    

    %% v2
    switch v2(1,i)
        case 1
            B = 'Familiarization (300s,5min)';
        case 2
            B = 'Open 70cm B3 (500s,8min20s)';
        case 3
            B = 'Baseline';
        case 4
            B = 'Open 20cm B4';
        case 5
            B = 'Baseline';
        case 6
            B = 'Open 120cm 7cm B2';
        case 7
            B = 'Baseline';
        case 8
            B = 'Closed 20cm B4';
        case 9
            B = 'Baseline';
        case 10
            B = 'Open 170cm 7cm B1';
        case 11
            B = 'Baseline';
        case 12
            B = 'Open 120cm 10cm B2';
        case 13
            B = 'Baseline';      
        otherwise
            disp('Error in v2 value.');
    end

    %% v4 
    v4 = randi(2,1,20);

    D = cell(20,1);
    
    for cc = 1:20
        v5(1,1)=v4(1,cc);
        if mod(v5,2) == 0
            D{cc,1} = 'R1';
        else
            D{cc,1} = 'R2';
        end
    end

    %% v6
    v6 = randi([10 40],1,20);
    while sum(v6(1:7))~=(25*7) %   while sum(v6(1:10))~=250 old
        v6 = randi([10 40],1,20);
    end
    
    F= cell(20,1);
    
    for cc = 1:20
        F{cc,1} = v6(1,cc);
    end
    
    %% writing the txt file
    fid = fopen('Configuration_LinearTrack1.txt','a');
    fprintf(fid, '\n');
    fprintf(fid, '%s\t%s\n', sessions, B);
    if mod(i,2) == 0
            for e = 1:20
                fprintf(fid, '%s\t%i\n', D{e,1}, F{e,1});
            end
    end
    fprintf(fid, '\n');
    fclose(fid);

end
end