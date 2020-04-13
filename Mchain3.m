function [P,PI]=Mchain3(a,b,c,d,e,f)
P=[(1-a-b) a b;
    c (1-c-d) d;
    e f (1-e-f)];

PI=P^30;
end

