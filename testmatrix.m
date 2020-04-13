U1=forwardPE(1,1,0,0.125,20,400);
[X,Y]=meshgrid(0:0.0025:1,0:0.05:1);
figure;
subplot(1,2,1)
s1=surf(X,Y,U1);
s1.EdgeColor='none';
xlabel('T');
ylabel('X');

U2=forwardPE(1,1,0,0.6,20,400);
subplot(1,2,2)
s2=surf(X,Y,U2);
s2.EdgeColor='none';
xlabel('T');
ylabel('X');


figure;
r1=0.125;
A=(1-2*r1)*eye(20,20);
for i=1:19
    A(i,i+1)=r1;
end
for i=2:20
    A(i,i-1)=r1;
end

eig(A);
n=100;
for steps=1:n
    err1(steps)=det(A.^steps-A);
end
plot(err1);


r2=0.6;
B=(1-2*r2)*eye(20,20);
for i=1:19
    B(i,i+1)=r2;
end
for i=2:20
    B(i,i-1)=r2;
end
for steps=1:n
    err2(steps)=det(B.^steps-B);
end
plot(err2);

