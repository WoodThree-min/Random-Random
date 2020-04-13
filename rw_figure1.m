figure(8);
n=29;
[T,z,s]=simple_randomwalk(n);
plot(z);
title('带吸收态的随机游走');
xlabel('时间');
ylabel('状态');
axis([0 T 0 100]);

[p0,p100]=rw_prob(n);
