%rnbin=samnbin(20,0.5,100000);
rnbin=nbinrnd(20,0.5,100000,1);
figure(4);
ls=(min(rnbin):max(rnbin));
nbin=length(ls);
h=findobj(gca,'Type','patch');
set(h,'FaceColor','y');
[f, xc] = ecdf(rnbin); 
ecdfhist(f, xc,nbin);
title('负二项分布随机数频率分布直方图');
camlight;lighting gouraud;
alpha(0.5);
hold on;
y=nbinpdf(ls,20,0.5);
plot(ls,y,'r');





%rpoiss=sampoiss(15,100000);
rpoiss=poissrnd(3,100000,1);
figure(5);
ls=(0:max(rpoiss));
nbin=length(ls);
h1=findobj(gca,'Type','patch');
set(h1,'FaceColor','y');
[f, xc] = ecdf(rpoiss); 
ecdfhist(f, xc,nbin);
title('泊松分布随机数频率分布直方图');
camlight;lighting gouraud;
alpha(0.5);
hold on;
y=poisspdf(ls,3);
plot(ls,y,'r');

