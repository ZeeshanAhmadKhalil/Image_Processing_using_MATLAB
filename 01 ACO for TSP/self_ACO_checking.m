% randi([1 5])
% r=rand
% p=[0.1 0.2 0.3;
%    0.4 0.5 0.6;
%    0.7 0.8 0.9];
% j=find(r<=p,1,'first')
% me.one=[1 2 3 4];
% me.two='two';
% me2=repmat(me,2,1);
% me2(1).one=randi([1 10]);
% i=me2(1).one
% me2(1).one(end)
% CostFunction=@(tour) TourLength(tour,model);
% tour
% model
% x=[40 20 50 90 80];
% y=[40 70 90 80 50];
% n=numel(x);
% D=zeros(n,n);
% for i=1:n-1
%     for j=i+1:n
%         D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
%         D(j,i)=D(i,j);
%     end
% end
% D
% val_one=one();
% val_one.a()
% val_one.b()
% function val_one=one()
% a=1;
% b=2;
% val_one.a=a;
% val_one.b=b;
% end