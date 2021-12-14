%%Case {4,5}

n=100000;
alpha=0;
k=3+randi(2,n,1);

gamma=[0.18:0.002:0.24];

M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_h_tr(n,k,alpha,gamma(i),.05);
    end
    if res(i)==R
        flag=1;
        res(i+1:M)=R;
    end
    display(strcat('Progress:',num2str(round(i/M*100)),'%'))
    i=i+1;
end
figure
errorbar(gamma,res/R,1.96*(res/R).*(1-res/R)/sqrt(100),'b','LineWidth',2)


%%Case {3,4,5,6}

n=100000;
alpha=0;
k=2+randi(4,n,1);

gamma=[0.18:0.002:0.24];

M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_h_tr(n,k,alpha,gamma(i),.05);
    end
    if res(i)==R
        flag=1;
        res(i+1:M)=R;
    end
    display(strcat('Progress:',num2str(round(i/M*100)),'%'))
    i=i+1;
end
figure
errorbar(gamma,res/R,1.96*(res/R).*(1-res/R)/sqrt(100),'b','LineWidth',2)

%%Case{2,3,4,5,6,7}

n=100000;
alpha=0;
k=1+randi(6,n,1);

gamma=[0.18:0.002:0.24];

M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_h_tr(n,k,alpha,gamma(i),.05);
    end
    if res(i)==R
        flag=1;
        res(i+1:M)=R;
    end
    display(strcat('Progress:',num2str(round(i/M*100)),'%'))
    i=i+1;
end
figure
errorbar(gamma,res/R,1.96*(res/R).*(1-res/R)/sqrt(100),'b','LineWidth',2)