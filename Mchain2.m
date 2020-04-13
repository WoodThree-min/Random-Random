function [P,PI]=Mchain2(alpha,beta)
P=[(1-alpha) alpha;
    beta (1-beta)];
%½âÎöÊ½
PI=ones(2,1)*[beta/(alpha+beta);alpha/(alpha+beta)]';
end

