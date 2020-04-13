function [w,t,x]=bm1(t0,tf,n)
h=(tf-t0)/n;
t=t0:h:tf;
x=randn(size(t))*sqrt(h);
w(1)=0;
  for k=1:length(t)-1
      w(k+1)=w(k)+x(k);
  end
end