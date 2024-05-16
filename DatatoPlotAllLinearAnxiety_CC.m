function [VectPlots,ImportPoint,Projections,LLs,OpenArm,Point,SR_whl]=DatatoPlotAllLinearAnxiety_CC(basename,Sessions,tetrode)
bins=20;
resofs=load([basename,'.resofs']);
whl=load([basename,'.whdc']);
Clu=load([basename,'.clu.',num2str(tetrode)]);
Clu=Clu(2:end);
cells = 2:max(Clu);
Res=load([basename,'.res.',num2str(tetrode)]);
SR=20000;

WhdcExist=strcat(basename,'.whdcToBeMirr');
if exist(WhdcExist,'file')
    SR_whl=30;
else
    SR_whl=50;
end

%% create folder for analyses
if exist ('Analyses','dir')
    cd ('Analyses')
else
    mkdir(sprintf('%s', 'Analyses'))
    cd ('Analyses')
end

sess_str = 'Single-trial';
if exist (sess_str) == 7
    cd (sess_str)
else
    mkdir(sprintf('%s', sess_str))
    cd (sess_str)
end

for i = 1:length(Sessions)
    Session=Sessions(i);
    if Session == 1
        whl_Session=whl(1:(floor(resofs(Session)*SR_whl/SR)),1:2);     %CC changed it old: whl_Session=whl(1:resofs(Session)*SR_whl/SR,1:2); (08/01/19)
    else
        whl_Session=whl((floor(resofs(Session-1)*SR_whl/SR)):floor((resofs(Session)*SR_whl/SR)),1:2); %CC changed it old:whl_Session=whl((resofs(Session-1)*SR_whl/SR):(resofs(Session)*SR_whl/SR),1:2);   (08/01/19)
    end
      [VecGoings{i},VecComings{i},Projections{i},KKs{i},LLs{i},Point]=VectorsLinearTask_CC(basename,whl_Session,whl,Session,SR_whl);
end

for i = 1:length(Projections)
    possMax(i)=max(Projections{i});
    possMin(i)=min(Projections{i});
end
contplot=1;
for i = 1:length(Sessions)
    Session=Sessions(i);
    Projection=Projections{i};
    VecGoing=VecGoings{i};
    VecComing=VecComings{i};
    KK=KKs{i};
    if Session == 1
        whl_Session=whl(1:floor((resofs(Session)*SR_whl/SR)),1:2);    %CC changed it old:whl_Session=whl(1:(resofs(Session)*SR_whl/SR),1:2);  (08/01/19)
        Res_Session=Res(Res<resofs(Session));
        Clu_Session=Clu(Res<resofs(Session));
    else
        whl_Session=whl(floor((resofs(Session-1)*SR_whl/SR)):floor((resofs(Session)*SR_whl/SR)),1:2);     %CC changed it old:whl_Session=whl((resofs(Session-1)*SR_whl/SR):(resofs(Session)*SR_whl/SR),1:2);  (08/01/19)
        Res_Session=Res(Res>resofs(Session-1) & Res<resofs(Session));
        Clu_Session=Clu(Res>resofs(Session-1) & Res<resofs(Session));
    end
    
    if Session==1
    else
    Res_Session=Res_Session-resofs(Session-1);
    end
    

    
    Res_Session=round(Res_Session./SR*SR_whl);
    Res_Session(Res_Session==0)=1;
    Whl_AllCells=whl_Session;
    for h=1:length(cells)
        k=cells(h);
        %figure;
        id=find(Clu_Session==k);
        RES2WHL=Res_Session(id,:);
        [A,B,C]=unique(RES2WHL);
        if isempty(A)
            Whl_AllCells(:,h+2)=nan;
        else
            NumRe=diff(B);
            A(1,2)=B(1);
            A(2:end,2)=NumRe;
            Whl_AllCells(A(:,1),h+2)=A(:,2);
        end
    end
    OldProjection=Projection;
    Projection(:,2:2+length(cells)-1)=Whl_AllCells(:,3:3+length(cells)-1);
    Projection(:,1)=ceil(Projection(:,1)./((max(possMax)-min(possMin))/bins));
    ImportPoint(i)=Projection(KK(1),1);
    VectPlot=zeros(size(VecGoing,1)+size(VecComing,1),bins+1,length(cells));
    cont= 1;
    for i = 1:2:size(VectPlot,1)
        VectGo=Projection(VecGoing(cont,1):VecGoing(cont,2),:);
        cont = cont+1;
        for k = 1:length(cells)
            for j = 1:(bins+1)
                VectPlot(i,j,k)=sum(VectGo(VectGo(:,1)==j,k+1))./(sum(VectGo(:,1)==j)/SR_whl);
            end
        end
    end
    cont = 1;
    for i = 2:2:size(VectPlot,1)
        VectCo=Projection(VecComing(cont,1):VecComing(cont,2),:);
        cont = cont + 1;
        for k = 1:length(cells)
            for j = 1:(bins+1)
                VectPlot(i,j,k)=sum(VectCo(VectCo(:,1)==j,k+1))./(sum(VectCo(:,1)==j)/SR_whl);
            end
        end
    end
    VectPlots{contplot}=VectPlot;
    contplot=contplot+1;
end
OpenArm=ImportPoint;

