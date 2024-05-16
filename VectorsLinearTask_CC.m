function [VecGoing,VecComing,Projection,KK,LL,Point]=VectorsLinearTask_CC(basename, whl_Session,whl,Session,SR_whl)
if exist([basename, '_LinearTrack_',num2str(Session),'.mat'])== 2
    load([basename, '_LinearTrack_',num2str(Session),'.mat'])
else    
    MaxOfTrajY=max(whl_Session(:,2)); %%%% automatization of the detection of the center
    MinOfTrajArrayY=whl_Session(:,2);
    MinOfTrajArrayY(MinOfTrajArrayY <= 0) = inf;
    MinOfTraY=min(MinOfTrajArrayY);
    MiddlepointY=(MaxOfTrajY-MinOfTraY)/2+MinOfTraY;
    
    MaxOfTrajX=max(whl_Session(:,1)); %%%% automatization of the detection of the center
    MinOfTrajArrayX=whl_Session(:,1);
    MinOfTrajArrayX(MinOfTrajArrayX <= 0) = inf;
    MinOfTraX=min(MinOfTrajArrayX);
    MiddlepointX=(MaxOfTrajX-MinOfTraX)/2+MinOfTraX;
    
    if exist([basename, '_LinearTrack_ProjectionLine_',num2str(Session),'.mat']) == 2 %%%% automatization of the line that best decribe the ltm
        load ([basename,'_LinearTrack_ProjectionLine_',num2str(Session),'.mat'])
    else
        plot(whl_Session(:,1),whl_Session(:,2),'.')
        hold on
        Check2='n';
        while Check2=='n'
            x_ns(1)=round(MiddlepointX);
            x_ns(2)=round(MiddlepointX);
            y_ns(1)=round(MinOfTraY);
            y_ns(2)=round(MaxOfTrajY);
            line(x_ns, y_ns, 'Color', 'black');
            Check2=input('Is it the line that best describe the linear maze?','s');
        end
        save([basename,'_LinearTrack_ProjectionLine_',num2str(Session),'.mat'],'x_ns','y_ns')
    end
    
    Projection=LinearProjection(x_ns,y_ns,whl_Session);
    close all
    
    plot(whl_Session(:,1),whl_Session(:,2),'k.')
    hold on
    plot(MiddlepointX, MiddlepointY, 'yx-');
    hold on
    plot(MiddlepointX, MinOfTraY, 'ys-');
    hold on
    plot(MiddlepointX, MaxOfTrajY, 'ys-');
    hold off

    Check2='n';
    while Check2=='n'
        x_p = MiddlepointX;
        y_p = MiddlepointY;
        Check2=input('Is the point 0 O.K?','s');
        if Check2=='n'
            disp('please click the point 0 for the period-event histogram');
            [x_p,y_p] = ginput(1);
            Check2=input('Is it O.K?','s');
        end
    end
    Point=LinearProjection(x_ns,y_ns,[x_p y_p]);
    
    figure 
    plot(Projection)
    disp('The behaviour should start in a low value (closer to start) and finish in a low value')
    Dec=input('Is it O.K?','s');
    if Dec == 'n'
        disp('Please define the new start and end (two points), just click once in each')
        [x_ns,y_ns] = ginput(2);
        x_ns(1)=round(x_ns(1));
        y_ns(1)=round(y_ns(1));
        x_ns(2)=round(x_ns(2));
        y_ns(2)=round(y_ns(2));
        Projection(1:x_ns(1))=nan;
        Projection(x_ns(2):end)=nan;
        
%         K=smooth(Projection(~isnan(Projection)),0.01,'loess'); %%%% CC do you really want to smooth?
%         Projection(~isnan(Projection))=K;
        
        %% Fill the trajectory
        %body of the projection
        Body=Projection(x_ns(1):x_ns(2));
        F = fillmissing(Body,'linear',1,'EndValues','nearest');
        AllF(1:x_ns(1),1)=nan;
        AllF((x_ns(1):x_ns(2)),1)=F(1:(x_ns(2)-x_ns(1)+1),1);
        AllF(x_ns(2):size(Projection,1),1)=nan;
    else
        x_ns(1) = find(~isnan(Projection), 1);
        x_ns(2) = find(~isnan(Projection), 1,'last');        
%         K=smooth(Projection(~isnan(Projection)),0.01,'loess'); %%%% CC do you really want to smooth?
%         Projection(~isnan(Projection))=K;
        Body=Projection;
        F=fillmissing(Body,'linear',1,'EndValues','nearest');
        AllF=F;
    end
    
    %% check the longest period with no tracking
    notrack=max(diff(find(isnan(Projection)~=1)))/SR_whl;
    
    %% saved the filled data traj here
    close all
    trajectorytosave=figure;
    trajtoplotfig=nan(size(AllF,1),1);
    trajtoplotfig(isnan(Projection))=AllF(isnan(Projection));
    plot(Projection)
    hold on
    plot(trajtoplotfig,'g')
    hold on
    line([1 size(AllF,1)],[Point Point],'LineStyle','--','LineWidth',0.5,'Color','k');
    hold on
    view([90 -90])
    xlim([0 x_ns(2)]);
    ylim([0 max(Projection)+10]);
    set(gca,'xdir','reverse')
    title([num2str(notrack),'s'])
    hold off
    
    sess_str = 'Single-trial_Fig';
    if exist (sess_str) == 7
        cd (sess_str)
    else
        mkdir(sprintf('%s', sess_str))
        cd (sess_str)
    end
    
    %% Save the images    
    sess_string = int2str(Session);
    base_str = strcat ('Sess', sess_string);
    s1 = strcat(base_str, '.fig');
    s2 = strcat(base_str, '.png');
    if exist (s1,'file') == 0
    saveas(trajectorytosave,s1)
    saveas(trajectorytosave,s2)
    end
    cd ..
    
    Projection=AllF;
    
    %K=smooth(Projection(~isnan(Projection)),0.01,'loess'); %%%% CC do you really want to smooth?
    %Projection(~isnan(Projection))=K;
    LL=(AllF>Point); %%%% CC old LL=(Projection>Point);
    
    %% I HAVE TO BE CAREFUL THAT IT STARTS IN 0, UNTIL 0
    KK=find(abs(diff(LL))>0);
    Deci='y'; 
    while Deci == 'y' 
        close all
        plot(Projection)
        hold on
        plot(LL*200,'k')
        hold on
        line([1 length(AllF)],[Point Point],'LineStyle','--','LineWidth',0.5,'Color','k');
        Deci=input('Should the smaller one be removed?','s');
        if isempty(Deci)
            Deci='n';
        end
        if Deci == 'y'
            %STD=input('input the standar deviation threshold');
            ToErease=find(diff(KK)==min(diff(KK)));
            %ToErease = ToErease + 1;
           % if ~isempty(ToErease)
             %   for i = 1:2:length(ToErease)
                    LL(KK(ToErease):KK(ToErease+1))=0;
                    %LL(KK(ToErease(i)):KK(ToErease(i+1)))=0;
              %  end
                KK=find(abs(diff(LL))>0);
            %end
        else
            KK=find(abs(diff(LL))>0);
        end
    end
    hold off
    save([basename,'_LinearTrack_',num2str(Session)])
end
cont = 1;
for i = 1:2:(length(KK))%-1)     %CC changed it old: for i = 1:2:length(KK)  (08/01/19)
    Vec(cont,1)=KK(i)+1;
    Vec(cont,2)=KK(i+1);
    cont = cont + 1;
end
cont = 1;
for i = 1:2:(length(KK))%-1)   %CC changed it old: for i = 1:2:length(KK)  (08/01/19)
    if i == 1
        StartGoing=find(Projection==min(Projection(1:(KK(i)+1))),1);
    else
        StartGoing=find(Projection==min(Projection(KK(i-1):(KK(i)+1))));
        if length(StartGoing)>1
            StartGoing=StartGoing(StartGoing>=KK(i-1) & StartGoing<=(KK(i)+1)); %%%% OLD StartGoing=StartGoing(StartGoing>KK(i-1) & StartGoing<(KK(i)+1)); 

            StartGoing=StartGoing(1);
        end
    end
    VecGoing(cont,1)=StartGoing;
    EndGoing = find(Projection==max(Projection((KK(i)+1):KK(i+1))));
    if length(EndGoing)>1
        EndGoing=EndGoing(EndGoing>=(KK(i)+1) & EndGoing<=(KK(i+1))); %%%% OLD         EndGoing=EndGoing(EndGoing>(KK(i)+1) & EndGoing<(KK(i+1)));
        EndGoing=EndGoing(1);
    end
    VecGoing(cont,2)=EndGoing;
    cont = cont + 1;
end
for i = 1:size(VecGoing,1)
    if i == size(VecGoing,1)
        VecComing(i,1)=VecGoing(i,2);
        
        EndComing = find(Projection==min(Projection((VecGoing(i,2):end))));
        if length(EndComing)>1
            EndComing=EndComing(EndComing>(VecGoing(i,2)) & EndComing<(length(Projection)));
            EndComing=EndComing(1);
        end
        VecComing(i,2)=EndComing;
    else
        VecComing(i,1)=VecGoing(i,2);
        VecComing(i,2)=VecGoing(i+1,1);
    end
end


    
    
