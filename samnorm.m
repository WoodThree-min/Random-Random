function x=samnorm(mu,sigma,n)
z=sqrt(-2*log(rand(n,1))).*cos(2*pi*rand(n,1));
x=mu+sigma*z;
end