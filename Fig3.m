k=3:12;
alpha=-0.9:0.1:8;
M=length(k);
N=length(alpha);
res=zeros(M,N);
z=linspace(0,1,5000);
ks=floor(k'*(2+alpha).^(-1))+1;
for i=1:M
for j=1:N
p=1-binocdf(ks(i,j)-1,k(i),z)-z;
[a,b]=max(double(p>0));
res(i,j)=b;
end
end
rez=z(res);
surf(k,alpha, rez')
view(0,90);