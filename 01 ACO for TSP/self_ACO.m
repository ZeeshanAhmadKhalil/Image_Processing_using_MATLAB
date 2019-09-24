clear;
clc;
close all;
model=create_model();
points=model.n;
max_it=500;
ants=50;
Q=1;
initial_phromone=10*Q/(points*mean(model.D(:)));
alpha=1;
beta=1;
evaporation_factor=0.05;
visibility=1./model.D;
phromone=initial_phromone*ones(points);
best_ant=zeros(max_it);
empty_ant.tour=[];
empty_ant.cost=[];
ant=repmat(empty_ant,ants,1);
best_sol.cost=inf;
best_cost(max_it)=0;
for it=1:max_it
    for k=1:ants
        ant(k).tour=randi([1 points]);
        for point=2:points
            i=ant(k).tour(end);
            p=(phromone(i,:).^alpha).*(visibility(i,:).^beta);
            p(ant(k).tour)=0;
            p=p/sum(p);
            j=next_point(p);
            ant(k).tour=[ant(k).tour j];
        end
        ant(k).cost=cal_cost(ant(k).tour,model);
        if ant(k).cost<best_sol.cost
            best_sol=ant(k);
        end      
    end
    for k=1:ants
        Tour=[ant(k).tour ant(k).tour(1)];
        for point=1:points
            i=Tour(point);
            j=Tour(point+1);
            phromone(i,j)=phromone(i,j)+Q/ant(k).cost;
        end
    end
    phromone=(1-evaporation_factor)*phromone;
    best_cost(it)=best_sol.cost;
    disp(['Iterration ' num2str(it) ' best cost = ' num2str(best_cost(it))]);
    plot_path(best_sol.tour,model);
    pause(0.01);
end
figure(2),plot(best_cost,'LineWidth',2),xlabel('iterations'),ylabel('costs'),grid on;
function plot_path(tour,model)
tour=[tour tour(1)];
figure(1),plot(model.x(tour),model.y(tour),'k-o','MarkerSize',5,'MarkerFaceColor','y','LineWidth',1.5);
axis equal;
grid on;
xlabel('x');
x_min=min(model.x);
x_max=max(model.x);
dx=x_max-x_min;
alpha=0.1;
x_min=floor(x_min-alpha*dx);
x_max=ceil(x_max+alpha*dx);
xlim([x_min x_max]);
ylabel('y');
y_min=min(model.y);
y_max=max(model.y);
dy=y_max-y_min;
alpha=0.1;
y_min=floor(y_min-alpha*dy);
y_max=ceil(y_max+alpha*dy);
ylim([y_min y_max]);
end
function cost=cal_cost(tour,model)
n=numel(tour);
tour=[tour tour(1)];
cost=0;
for i=1:n
    cost=cost+model.D(tour(i),tour(i+1));
end
end
function J=next_point(p)
C=cumsum(p);
r=rand;
J=find(r<=C,1,'first');
end
function model=create_model()
% points={[2,3],[4,3],[3,3],[3,2],[3,4]};
% n=numel(points);
%     x=zeros(1,n);
%     y=zeros(1,n);
%     for i=1:n
%         x(i)=points{i}(1);
%         y(i)=points{i}(2);
%     end
x=[123 654 873 468 573 685 730 690 987 674 598 706 587 565 408 787 587 654 873 645 276 570 538 670 587 046 587 098 704 567 ... 
   865 098 786 788 798 796 879 867 980 980 980 726 549 875 465 246 578 465 427 658 648 274 652 465 974 692 482 475 648 767];
y=[542 645 647 686 980 980 898 767 465 735 636 434 545 746 245 624 564 667 587 988 797 908 667 865 756 736 542 345 154 252 ...
  354 235 436 545 766 576 867 986 798 989 786 437 534 679 698 546 709 738 574 698 736 673 578 260 677 698 518 765 446 707];
n=numel(x);
D=zeros(n,n);
for i=1:n-1
    for j=i+1:n
        D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
        D(j,i)=D(i,j);
    end
end
model.n=n;
model.x=x;
model.y=y;
model.D=D;
end