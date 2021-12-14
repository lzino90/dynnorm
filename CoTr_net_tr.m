function s = CoTr_net_tr(B,d,n,k,alpha,gamma,beta)
%CoTr_net_tr(B,d,n,k,alpha,gamma,beta) estimates the threhsold for the generalized innovation diffusion model with dynamic norms with a backbone network proposed in the paper "Facilitating innovation diffusion in social networks using dynamic norms". 
%Parameters:
%B: ajacency list of the backbone network (if you have the adjacency matrix A, then B=cellfun(@(x) find(x),num2cell(A,2),'un',0););
%d=degree vector of the backbone network (if you have the adjacency matrix A, d=sum(A);)
%n=number of agents;
%k: number of social interactions;
%alpha: relative advantage; 
%gamma: sensitivity (probability of following dynamic norms);
%beta: fraction of innovators in the population
%Realized by L. Zino.

ks=floor(k/(2+alpha))+1; %compute the pi function

if nargin==6
    beta=gamma;
end

t=2;
s=0;
T=1000;
z_new=round(n*beta); %number of adopters
x=zeros(1,n);
x(randperm(n,z_new))=1; %early adopters
trend=1;
flag=0;

while t<=T && flag==0
    t=t+1;
    new=zeros(1,n);
    for i=1:n
        if rand<gamma
            new(i)=trend;
        else
            new(i)=sum(x(B{i}(randi(d(i),1,k))))>=ks; %behavior of coordinatiors
        end
    end
    x=new;
    z_old=z_new;
    z_new=sum(x); %update the count of adopters
    if z_new<z_old
        trend=0; %update the trend
    else
        trend=1;
    end
    if z_new==0 || z_new>=0.95*n
        flag=1;
        s=round(z_new/n);
    end
end
if flag==0
    s=round(z_new/n);
end
end