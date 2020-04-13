%2 dimensions 
figure 
subplot(2,1,1)%����ת�ƾ���ͬ
for k=1:3
    f=[0.4;0.6];
    [P1,PI1]=Mchain2(0.1*k,0.2*k);
    for i=1:20
        err1(i)=norm((P1')^i*f-PI1(1,:)');
    end
    plot(err1);
    title('��ͬһ��ʼ�ֲ���2��Markov���������������');
    xlabel('��������');
    hold on
end

subplot(2,1,2);%��ʼ�ֲ���ͬ????????????
[P1,PI1]=Mchain2(0.2,0.3);%�������ת�ƾ���
[x1,v1]=eig(P1');%������ֵ����������
for k=1:3
    f=[0.15*k;1-0.15*k];
    %theta=x1(:,2)'*(f-PI1(1,:)');
    for i=1:20
        e(i)=norm((P1')^i*f-PI1(1,:)');
    end
    plot(e);
    title('��ͬһת�Ƹ��ʾ���2��Markov���������������');
    xlabel('��������');
    hold on
end





%3 dimensions
[P2,PI2]=Mchain3(0.21,0.33,0.42,0.16,0.57,0.10);
[x2,v2]=eig(P2');%������ֵ����������
for i=1:15
    e2(i)=norm(P2-P2^i);
    err2(i)=norm(PI2-P2^i);
end
figure
%subplot(2,1,1);
%plot(e2);
%title('3��Markov����������');
%xlabel('��������');
%subplot(2,1,2);
plot(err2);
title('3��Markov���ĵ������');
xlabel('��������');

%��άmarkov��������ֵ��
syms a b c d e f
P=[(1-a-b) a b;
    c (1-c-d) d;
    e f (1-e-f)];
V=eig(P)
%��ֵ�� V
a=0.21;b=0.33;c=0.42;
d=0.16;e=0.57;f=0.10;
v=double(subs(V))
