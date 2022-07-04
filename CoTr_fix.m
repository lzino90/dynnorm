function [z] = CoTr_fix(n,k,alpha,gamma,beta,T,pl)
%CoTr(n,k,alpha,gamma,beta,pl) simulates the innovation diffusion model with dynamic norms proposed in the paper "Facilitating innovation diffusion in social networks using dynamic norms". 
%Parameters:
%n: number of agents;
%k: number of social interactions;
%alpha: relative advantage; 
%gamma: sensitivity (probability of following dynamic norms);
%beta: fraction of innovators in the population
%T: simulation time; 
%pf: type 'y' if you want to plot the temporal evolution, or 'n' if you do %not want it. If omitted, 'n' is set by default. 
%Realized by L. Zino.
if nargin==6
    pl='n';
end
ks=floor(k/(2+alpha))+1; %compute the pi function
x=zeros(n,T); %initialize states
z=zeros(1,T); 
z(2)=round(n*beta); %number of adopters
x(randperm(n,z(2)),2)=1; %early adopters
trend=0; %initial trend
if z(2)>0
    trend=1;
end
y=(rand(n,1)>gamma);

for t=3:T
    switch trend
        case 1
                x(:,t)=1+y.*((binornd(k,z(t-1)/n,n,1)>=ks)-1); %probabilistic update rule
        case 0
                x(:,t)=x(:,t-1)+y.*((binornd(k,z(t-1)/n,n,1)>=ks)-x(:,t-1)); %probabilistic update rule
        case -1
                x(:,t)=y.*((binornd(k,z(t-1)/n,n,1)>=ks)); %probabilistic update rule
    end
    z(t)=sum(x(:,t)); %update the count of adopters
    if z(t)>z(t-1) %update the trend
        trend=1; 
    elseif z(t)==z(t-1)
        trend=0;
    else
        trend=-1;
    end
end
z=z/n;
if pl=='y' %figure
    plot(0:T-1,z)
end
end