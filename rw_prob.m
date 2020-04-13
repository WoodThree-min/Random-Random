function [p0,p100]=rw_prob(begin)
n0=0;
n100=0;
for i=1:10000
    [T,z,s]=simple_randomwalk(begin);
    if s==0
        n0=n0+1;
    else
        n100=n100+1;
    end
end
p0=n0/(n0+n100);
p100=n100/(n0+n100);
end
        
