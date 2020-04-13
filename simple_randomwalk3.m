p=0.5;
n=100000;
colorstr=['b' 'r' 'g' 'y'];
figure(6);
for k=1:4
    z=2.*(rand(3,n)<=p)-1;
    x=[zeros(1,3);cumsum(z')];
    col=colorstr(k);
    plot3(x(:,1),x(:,2),x(:,3),col);
    title('三维随机游走示意图');
    hold on
end
grid
