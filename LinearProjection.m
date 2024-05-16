function ProjectedPoints=LinearProjection(x_ns,y_ns,whl_Session)
% It generates the linear projection of the 2D vectors in whl_Session.
%x_ns and y_ns are the x and y coordinates of the line where the projection
%should be done. the x_ns(1) and y_ns(1) are the coordinates of the
%reference from where the projection is done

PrimaryVector=[x_ns(2)-x_ns(1) y_ns(2)-y_ns(1)];
PrimaryVector=PrimaryVector./norm(PrimaryVector);
ReferenceStarting=whl_Session;
ReferenceStarting(ReferenceStarting(:,1)==-1,1:2)=nan;
ReferenceStarting(:,1)=ReferenceStarting(:,1)-x_ns(1);
ReferenceStarting(:,2)=ReferenceStarting(:,2)-y_ns(1);
% for i = 1:size(ReferenceStarting,1)
%     ReferenceStarting(i,:)=ReferenceStarting(i,:)./norm(ReferenceStarting(i,:));
% end
All(:,1)=ones(size(ReferenceStarting,1),1)*PrimaryVector(1);
All(:,2)=ones(size(ReferenceStarting,1),1)*PrimaryVector(2);
ProjectedPoints=dot(ReferenceStarting,All,2);

