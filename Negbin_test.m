negbin=Negbin(20,0.5,100000);
figure(3);
ls=(0:max(negbin)+1);
nbin=length(ls);
[f, xc] = ecdf(negbin); 
ecdfhist(f, xc,nbin);
title('�����ӵģ�������ֲ������Ƶ�ʷֲ�ֱ��ͼ');
h1=findobj(gca,'Type','patch');
set(h1,'FaceColor','y');
camlight;lighting gouraud;
alpha(0.4);
hold on;
y=nbinpdf(ls,20,0.5);
plot(ls,y,'r');