%%Case alpha_bar=0; sigma=0.2;
clear all
n=100000;
k=3;


step=.05;
q1=0:step:1;
M=length(q1);
tr=Inf(M);
t0=0;

for i=1:M
    q2=0:step:(1-q1(i));
    R=length(q2);
    for j=1:R
        Q1=round(n*q1(i));
        Q2=round(n*q2(j));
        Q3=n-Q1-Q2;
        alpha=[-.8*ones(Q1,1); zeros(Q2,1); 1.5*ones(Q3,1)];
        tr(i,j)=CoTR_h_trest(n,k,alpha,t0);
        t0=max(0,tr(i,j)-0.002);
    end
    
        display(strcat('Progress:',num2str(round(i/M*100)),'%'))
        t0=max(min(tr(i,:))-0.002,0);
end
surf(0:step:1,1:-step:0,flip(tr'))
view(0,90);


q1=0:step:1;
q2=0:step:1;
for i=1:21
for j=1:21
if tr(i,j)~=Inf
fprintf('%s %s %s %s\n', num2str(q1(i)),num2str(q1(j)),num2str(1-q1(i)-q2(j)),num2str(tr(i,j)))
end
end
end