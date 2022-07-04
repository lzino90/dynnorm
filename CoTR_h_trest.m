function tr = CoTR_h_trest(n,k,alpha,t0)
if nargin==3
    t0=0;
end
gamma=[t0:0.002:1];
R=100;
i=1;
flag=0;
while flag==0
    res=0;
    for r=1:R
        res=res+CoTr_h_tr(n,k,alpha,gamma(i),.05);
    end
    if res>=R/2
        flag=1;
        tr=gamma(i);
    end
    i=i+1;
end
end

