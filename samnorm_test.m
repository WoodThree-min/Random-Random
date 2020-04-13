%x=samnorm(0,1,25000);
x=normrnd(0,1,20000,1);
figure(1);
[f, xc] = ecdf(x);
nbin=length(f);
ecdfhist(f, xc,nbin);
title('正态分布随机数频率分布直方图');
h1=findobj(gca,'Type','patch');
set(h1,'FaceColor','y');
camlight;lighting gouraud;
alpha(0.4);
ls=linspace(min(x),max(x));
y=normpdf(ls,0,1);
plot(ls,y,'r');
hold on;


figure(2);
qqplot(x);

mu=mean(x);
sigma=var(x);

if kstest(x)==0
    fprintf('该样本数据服从正态分布。');
end


