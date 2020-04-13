t0=0;tf=100;n=550000;m=1000;
%w=zeros(m,n+1);
%z=zeros(m,1);
for i=1:m
    w(i,:)=bm1(t0,tf,n);
    z(i)=w(i,n+1);
end
