endpoint=zeros(50000,1);


for i=1:50000
    n=100;
    z=2.*(rand(1,n)<0.5)-1;
    x=[zeros(1,1);cumsum(z')];
    endpoint(i,:)=x(n+1,:);
end
figure(7);
ls=(min(endpoint):max(endpoint));
nbin=length(ls)/2;
h=findobj(gca,'Type','patch');
set(h,'FaceColor','y');
[f, xc] = ecdf(endpoint); 
ecdfhist(f, xc,nbin);
title('随机游走100步后状态频率分布直方图');
camlight;lighting gouraud;
alpha(0.5);
hold on;
y=normpdf(ls,0,10);
plot(ls,y,'r');
