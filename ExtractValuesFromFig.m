open('ReorgXFFPosLv1.fig')
D=get(gca,'Children');
Values=get(D,'CData');



%% or
fig = gcf;
axObjs = fig.Children;
dataObjs = axObjs.Children;

x = dataObjs(1).XData;
y = dataObjs(1).YData;
z = dataObjs(1).ZData;

%% or

dataObjs = findobj(fig,'-property','YData')
z1 = dataObjs(1).YData



%%To check
c=~isnan(Values);
figure(1)
x=0:1000;
y=0:1000;
b=imagesc(x,y,Values); colorbar;
set(b,'alphadata',c);
set(gca,'color',[1 1 1]);
colormap (jet);
set(gca,'YDir','normal') %s




close all


for ii=1:16
    if ii==1
        name='BarInboundLv1';
    elseif ii==2
        name='BarInboundLv4';
    elseif ii==3
        name='BarInboundLv5';
    elseif ii==4
        name='BarInboundLv6';
    elseif ii==5
        name='BarInboundLv6D';
    elseif ii==6
        name='BarInboundLv5D';
    elseif ii==7
        name='BarInboundLv4D';
    elseif ii==8
        name='BarInboundLv1D';
    elseif ii==9
        name='BarOutboundLv1';
    elseif ii==10
        name='BarOutboundLv4';
    elseif ii==11
        name='BarOutboundLv5';
    elseif ii==12
        name='BarOutboundLv6';
    elseif ii==13
        name='BarOutboundLv6D';
    elseif ii==14
        name='BarOutboundLv5D';
    elseif ii==15
        name='BarOutboundLv4D';
    elseif ii==16
        name='BarOutboundLv1D';
    end
    filename=strcat(name,'.fig');
    open(filename)
    D=get(gca,'Children');
    Values=get(D,'CData');
    ArrayMax(1,ii)=max(Values);
    ArrayMin(1,ii)=min(Values);

    %SmoothData
    x=1:20;
    NewX = linspace(1,20,1000);
    NewValues = interp1(x,Values,NewX);

    figure(3)
    set(gcf,'Position',[50 50 500 50])
    b=imagesc(NewX,1,NewValues);
    set(gca,'color',[1 1 1]);
    colormap (jet);
    caxis([-2.05 3.03]);  
    set(gca,'YDir','normal') %s
    box on
    set(gca,'XTick',[])
    set(gca,'YTick',[])
    
    cd('SmoothedData')

    if isfile(strcat(name,'.fig'))
        delete(strcat(name,'.fig'))
    end
    saveas(gcf, name, 'fig')
    if isfile(strcat(name,'.png'))
        delete(strcat(name,'.png'))
    end
    saveas(gcf, name, 'png')

    cd ..
    %%To write Values
%     Array(1:20,ii)=Values;
    close all

end

MaxTot=max(ArrayMax);
MinTot=min(ArrayMin);

lims=(MinTot MaxTot);

