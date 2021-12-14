function [z] = CoTrG(A,k,alpha,gamma,beta,T,pl)
%CoTrG(n,k,alpha,gamma,beta,pl) simulates the generalized innovation diffusion model with dynamic norms proposed in the paper "Facilitating innovation diffusion in social networks using dynamic norms". 
%Parameters:
%A: adjacency matrix of the network;
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

if length(k)==1
    k=k*ones(n,1);
end

if length(alpha)==1
    alpha=alpha*ones(n,1);
end

n=size(A,1);
B=cellfun(@(x) find(x),num2cell(A,2),'un',0);
d=sum(A);
ks=floor(k./(2+alpha))+1; %compute the pi function
x=zeros(n,T); %initialize states
z=zeros(1,T); 
z(2)=round(n*beta); %number of adopters
x(randperm(n,z(2)),2)=1; %early adopters
trend=0; %initial trend
if z(2)>0
    trend=1;
end
t=2;

while t<=T 
    t=t+1;
    for i=1:n
        if rand<=gamma
            x(i,t)=trend; %behavior of trend-seekers
        else
            x(i,t)=sum(x(B{i}(randi(d(i),1,k(i))),t-1))>=ks(i); %behavior of coordinatiors
        end
    end
    z(t)=sum(x(:,t)); %update the count of adopters
    if z(t)>z(t-1) || z(t)==n %update the trend
        trend=1; 
    else
        trend=0;
    end
end
z=z/n;
if pl=='y'
    figure
    plot(1:T-1,z(2:T))
end
end
end