function rpoiss=sampoiss(lambda,n)
rpoiss=zeros(n,1)-1;
for i=1:n
    log1=0;
    while(log1 >= -lambda)
        log1=log1+log(rand(1));
        rpoiss(i)=rpoiss(i)+1;
    end
end
end
    

