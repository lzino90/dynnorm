clear all
n=10000;
disp('Network generation: started')
A=WS(n,20,0);
disp('Network generation: ended')
B=cellfun(@(x) find(x),num2cell(A,2),'un',0);
d=sum(A);
k=3;
alpha=0;
gamma=[0.06:0.002:0.13];
M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_net_tr(B,d,n,k,0,gamma(i));
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

n=10000;
disp('Network generation: started')
A=WS(n,20,0.0914);
disp('Network generation: ended')
B=cellfun(@(x) find(x),num2cell(A,2),'un',0);
d=sum(A);
k=3;
alpha=0;
gamma=[0.06:0.002:0.13];
M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_net_tr(B,d,n,k,0,gamma(i));
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


n=10000;
disp('Network generation: started')
A=WS(n,20,0.279);
disp('Network generation: ended')
B=cellfun(@(x) find(x),num2cell(A,2),'un',0);
d=sum(A);
k=3;
alpha=0;
gamma=[0.06:0.002:0.13];
M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_net_tr(B,d,n,k,0,gamma(i));
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

n=10000;
disp('Network generation: started')
A=WS(n,20,0.47);
disp('Network generation: ended')
B=cellfun(@(x) find(x),num2cell(A,2),'un',0);
d=sum(A);
k=3;
alpha=0;
gamma=[0.06:0.002:0.13];
M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_net_tr(B,d,n,k,0,gamma(i));
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


n=10000;
disp('Network generation: started')
A=WS(n,20,1);
disp('Network generation: ended')
B=cellfun(@(x) find(x),num2cell(A,2),'un',0);
d=sum(A);
k=3;
alpha=0;
gamma=[0.06:0.002:0.13];
M=length(gamma);
R=100;
res=zeros(1,M);
disp('Monte Carlo: starting')
i=1;
flag=0;
while i<=M && flag==0
    for r=1:R
        res(i)=res(i)+CoTr_net_tr(B,d,n,k,0,gamma(i));
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