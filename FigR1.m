beta=0.05;
T=50;
n=100000;
K=5;

k=3;
gamma=0.11;
for t=1:100
z(t,:)=CoTr_Kincrease(n,k,0,gamma,beta,T,K,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))

k=3;
gamma=0.12;
for t=1:100
z(t,:)=CoTr_Kincrease(n,k,0,gamma,beta,T,K,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))

K=100;

k=3;
gamma=0.11;
for t=1:100
z(t,:)=CoTr_Kincrease(n,k,0,gamma,beta,T,K,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))

k=3;
gamma=0.12;
for t=1:100
z(t,:)=CoTr_Kincrease(n,k,0,gamma,beta,T,K,'n');
end
figure
plot(0:(T-1),max(z))
hold on
plot(0:(T-1),min(z))
plot(0:(T-1),z(1,:))
