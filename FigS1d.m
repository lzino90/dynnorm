%%Case alpha_bar=0; sigma=0.2;

n=100000;
alpha_bar=0;
sigma=0.2;
alpha=alpha_bar+sigma*sqrt(3)*(2*rand(n,1)-1);
k=3;

gamma=[0.1:0.002:0.17];

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


%%Case alpha_bar=0; sigma=0.4;

n=100000;
alpha_bar=0;
sigma=0.4;
alpha=alpha_bar+sigma*sqrt(3)*(2*rand(n,1)-1);
k=3;

gamma=[0.12:0.002:0.17];

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


%%Case alpha_bar=0.7; sigma=0.2;

n=100000;
alpha_bar=0.7;
sigma=0.2;
alpha=alpha_bar+sigma*sqrt(3)*(2*rand(n,1)-1);
k=3;

gamma=[0.06:0.002:0.17];

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


%%Case alpha_bar=0.7; sigma=0.4;

n=100000;
alpha_bar=0.7;
sigma=0.4;
alpha=alpha_bar+sigma*sqrt(3)*(2*rand(n,1)-1);
k=3;

gamma=[0.002:0.002:0.17];

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