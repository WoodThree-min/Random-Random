function [X,x]=bm2(t0,tf,n)
h=(tf-t0)/n;
t=t0:h:tf;
x=randn(size(t))*sqrt(h);
x=x.^2;
X=zeros(1,n+1);
  for k=1:length(t)-1
      X(k+1)=X(k)+x(k);
  end
end