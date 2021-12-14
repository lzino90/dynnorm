z=linspace(0,1,5000);
g=linspace(0,1,5000);


%%k=3
zz=linspace(0,1/9,1000);
plot(zz,.25+.25*sqrt((1-9.*zz)./(1-zz)))
hold on

%% k=5
flag=0;
i=1;
k=5;
alpha=0;
while i<=5000 && flag==0
    gamma=g(i);
    ks=floor(k'*(2+alpha).^(-1))+1;
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;    
if min(f)>=0
    gamma_star=gamma;
    flag=1;
end
i=i+1;
end
r=zeros(1,i-2);
for j=1:i-2
    gamma=g(j);
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;
    r(j)=max(z(f<0));
end
plot(g(1:i-2),r)


%% k=7
flag=0;
i=1;
k=7;
alpha=0;
while i<=5000 && flag==0
    gamma=g(i);
    ks=floor(k'*(2+alpha).^(-1))+1;
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;    
if min(f)>=0
    gamma_star=gamma;
    flag=1;
end
i=i+1;
end
r=zeros(1,i-2);
for j=1:i-2
    gamma=g(j);
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;
    r(j)=max(z(f<0));
end
plot(g(1:i-2),r)

%% k=4
figure
hold on
flag=0;
i=1;
k=4;
alpha=0.2;
while i<=5000 && flag==0
    gamma=g(i);
    ks=floor(k'*(2+alpha).^(-1))+1;
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;    
if min(f)>=0
    gamma_star=gamma;
    flag=1;
end
i=i+1;
end
r=zeros(1,i-2);
for j=1:i-2
    gamma=g(j);
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;
    r(j)=max(z(f<0));
end
plot(g(1:i-2),r)

%% k=6
flag=0;
i=1;
k=6;
alpha=0.2;
while i<=5000 && flag==0
    gamma=g(i);
    ks=floor(k'*(2+alpha).^(-1))+1;
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;    
if min(f)>=0
    gamma_star=gamma;
    flag=1;
end
i=i+1;
end
r=zeros(1,i-2);
for j=1:i-2
    gamma=g(j);
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;
    r(j)=max(z(f<0));
end
plot(g(1:i-2),r)

%% k=8
flag=0;
i=1;
k=8;
alpha=0.2;
while i<=5000 && flag==0
    gamma=g(i);
    ks=floor(k'*(2+alpha).^(-1))+1;
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;    
if min(f)>=0
    gamma_star=gamma;
    flag=1;
end
i=i+1;
end
r=zeros(1,i-2);
for j=1:i-2
    gamma=g(j);
    f=gamma+(1-gamma)*(1-binocdf(ks-1,k,z))-z;
    r(j)=max(z(f<0));
end
plot(g(1:i-2),r)