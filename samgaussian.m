function x=samgaussian(mu,sigma,n,m)
z=sqrt(-2*log(rand(n,m))).*cos(2*pi*rand(n,m));
L=chol(sigma);
x=repmat(mu,1,n)'+z*L;
end