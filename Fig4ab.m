beta=0.05;
T=50;
n=100000;

k=3;
gamma=0.11;
for t=1:100
z(t,:)=CoTr(n,k,0,gamma,beta,T,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))

k=3;
gamma=0.12;
for t=1:100
z(t,:)=CoTr(n,k,0,gamma,beta,T,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))

k=5;
gamma=0.12;
for t=1:100
z(t,:)=CoTr(n,k,-.2,gamma,beta,T,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))

k=5;
gamma=0.18;
for t=1:100
z(t,:)=CoTr(n,k,-.2,gamma,beta,T,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))