figure(8);
n=29;
[T,z,s]=simple_randomwalk(n);
plot(z);
title('������̬���������');
xlabel('ʱ��');
ylabel('״̬');
axis([0 T 0 100]);

[p0,p100]=rw_prob(n);
