function negbin=Negbin(delta,c,m)
if (c>0)&&(c<1)
    beta=c/(1-c);
    lambda=gamrnd(delta,beta,[1 m]);
    negbin=poissrnd(lambda,[1 m]);
else
    disp('wrong scale parameter.');
end
end

