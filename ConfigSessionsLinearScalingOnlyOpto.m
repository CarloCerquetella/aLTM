function ConfigSessionsLinearScalingOnlyOpto

 if isfile('Configuration_LinearTrackOpto.txt')
    delete('Configuration_LinearTrackOpto.txt');
 end
fid = fopen('Configuration_LinearTrackOpto.txt','a');
fprintf(fid, 'LINEAR TRACK MAZE OPTO\n');
fclose(fid);

session = 'Session_';
rng shuffle
v2 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25];

for i = 1:25
    switch i
        case 1
            sessions = ([session,'One']);
        case 2
            sessions = ([session,'Two']);
        case 3
            sessions = ([session,'Three']);
        case 4
            sessions = ([session,'Four']);
        case 5
            sessions = ([session,'Five']);
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
        case 14
            sessions = ([session,'Fourteen']);
        case 15
            sessions = ([session,'Fifteen']);
        case 16
            sessions = ([session,'Sixteen']);
        case 17
            sessions = ([session,'Seventeen']);
        case 18
            sessions = ([session,'Eighteen']);
        case 19
            sessions = ([session,'Nineteen']);
        case 20
            sessions = ([session,'Twenty']);
        case 21
            sessions = ([session,'Twentyone']);
        case 22
            sessions = ([session,'Twentytwo']);
        case 23
            sessions = ([session,'Twentythree']);
        case 24
            sessions = ([session,'Twentyfour']);
        case 25
            sessions = ([session,'Twentyfive']);            
        otherwise
            disp('Error in i value.');
    end
    

    %% v2
    switch v2(1,i)
        case 1
            B = 'Familiarization (300s,5min)';
        case 2
            B = 'Closed Level 1 B4 (500s,8min20s)';
        case 3
            B = 'Baseline';
        case 4
            B = 'Closed but novelty Level 1 B4';
        case 5
            B = 'Baseline';
        case 6
            B = 'Open Level 1 B4';
        case 7
            B = 'Baseline';
        case 8
            B = 'Open Level 2 B3';
        case 9
            B = 'Baseline';
        case 10
            B = 'Open Level 3 B2';
        case 11
            B = 'Baseline';
        case 12
            B = 'Open Level 3NoA B2';
        case 13
            B = 'Baseline';
        case 14
            B = 'Open Level 3NoA B2 with panels';
        case 15
            B = 'Baseline';
        case 16
            B = 'Open Level 3 B2 with panels';
        case 17
            B = 'Baseline';
        case 18
            B = 'Open Level 2 B3 with panels';
        case 19
            B = 'Baseline';
        case 20
            B = 'Open Level 1 B4 with panels';
        case 21
            B = 'Baseline';
        case 22
            B = 'Closed but novelty Level 1 B4 with panels';
        case 23
            B = 'Baseline';
        case 24
            B = 'Closed Level 1 B4 with panels';
        case 25
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
    fid = fopen('Configuration_LinearTrackOpto.txt','a');
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