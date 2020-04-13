function [T,z,s]=simple_randomwalk(Y)
n=100000;
X=0;
Z=100;
y=2*(rand(n,1)>0.5)-1;
z=cumsum([Y;y]);
to0=0;
toZ=0;
for i=1:length(z)
    if z(i)==X
        to0=i;
        break
    end
end
for i=1:length(z)
    if z(i)==Z
        toZ=i;
        break
    end  
end
if to0 < toZ
    T=to0;
    s=0;
else
    T=toZ;
    s=1;
end
z=z(1:T);
end
