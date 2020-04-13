%2 dimensions 
figure 
subplot(2,1,1)%概率转移矩阵不同
for k=1:3
    f=[0.4;0.6];
    [P1,PI1]=Mchain2(0.1*k,0.2*k);
    for i=1:20
        err1(i)=norm((P1')^i*f-PI1(1,:)');
    end
    plot(err1);
    title('（同一初始分布）2阶Markov链的收敛迭代误差');
    xlabel('迭代次数');
    hold on
end

subplot(2,1,2);%初始分布不同????????????
[P1,PI1]=Mchain2(0.2,0.3);%定义概率转移矩阵
[x1,v1]=eig(P1');%求特征值和特征向量
for k=1:3
    f=[0.15*k;1-0.15*k];
    %theta=x1(:,2)'*(f-PI1(1,:)');
    for i=1:20
        e(i)=norm((P1')^i*f-PI1(1,:)');
    end
    plot(e);
    title('（同一转移概率矩阵）2阶Markov链的收敛迭代误差');
    xlabel('迭代次数');
    hold on
end





%3 dimensions
[P2,PI2]=Mchain3(0.21,0.33,0.42,0.16,0.57,0.10);
[x2,v2]=eig(P2');%求特征值和特征向量
for i=1:15
    e2(i)=norm(P2-P2^i);
    err2(i)=norm(PI2-P2^i);
end
figure
%subplot(2,1,1);
%plot(e2);
%title('3阶Markov链迭代收敛');
%xlabel('迭代次数');
%subplot(2,1,2);
plot(err2);
title('3阶Markov链的迭代误差');
xlabel('迭代次数');

%三维markov链的特征值解
syms a b c d e f
P=[(1-a-b) a b;
    c (1-c-d) d;
    e f (1-e-f)];
V=eig(P)
%赋值给 V
a=0.21;b=0.33;c=0.42;
d=0.16;e=0.57;f=0.10;
v=double(subs(V))
