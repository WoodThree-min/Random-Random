t0=0;
tf=100;
n=240000;
m=1000;
X=zeros(m,n+1);
X2=zeros(m,1);
for i=1:m
    X(i,:)=bm2(t0,tf,n);
    X2(i)=X(i,n+1);
end
