function [s] = CoTr_h_tr(n,k,alpha,gamma,beta)
%CoTr_h_tr(B,d,n,k,alpha,gamma,beta) estimates the threhsold for the heterogeneous innovation diffusion model with dynamic norms proposed in the paper "Facilitating innovation diffusion in social networks using dynamic norms". 
%Parameters:
%n=number of agents;
%k: number of social interactions vector;
%alpha: relative advantage vector; 
%gamma: sensitivity (probability of following dynamic norms);
%beta: fraction of innovators in the population
%Realized by L. Zino.

ks=floor(k./(2+alpha))+1; %compute the pi function


t=2;
s=0;
T=1000;
z_new=round(n*beta); %number of adopters
x=zeros(n,1);
x(randperm(n,z_new))=1; %early adopters
trend=1;
flag=0;


while t<=T && flag==0
    t=t+1;
    x=trend+(rand(n,1)>gamma).*((binornd(k,z_new/n,n,1)>=ks)-trend); %probabilistic update rule
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
    
    
    
    
    