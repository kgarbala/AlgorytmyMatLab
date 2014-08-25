% zadanie 8
% Dana jest tablica T[1..n,1..m]. ZnaleŸæ w tablicy T 
%pierwszy wiersz maj¹cy same elementy dodatnie oraz 
%pierwszy wiersz zawieraj¹cy same elementy ujemne. 
%Je¿eli istniej¹ takie wiersze, to wymieniæ 
%te wiersze w tablicy a nastêpnie wyœwietliæ 
%now¹ postaæ tablicy T.
clc; clear; n=10; m=3;
T=fix(5*randn(n,m));
T(10,:)=[1,1,1];
T(9,:)=[-2,-2,-2]
%T=[1,1,1;-2,-2,-2]
STOP1=0;
STOP2=0;
i=1;
while i<=n && (STOP1==0 || STOP2==0)
    
    j=1;
    d=0;
    u=0;
    while j<=m && (d==0 || u==0)
        
        if T(i,j)>0
            d=d+1;
        elseif T(i,j)<0
            u=u+1;
        end
       j=j+1;
    
    end
    if d==m && STOP1==0
        STOP1=1;
        a=i;
        for k=1:m
            D(k)=T(i,k);
        end
    end
    if u==m && STOP2==0
        STOP2=1;
        b=i;
        for k=1:m
            U(k)=T(i,k);
        end
    end
    i=i+1;
end

if STOP1==1 && STOP2==1
for j=1:m
    T(a,j)=U(j);
    T(b,j)=D(j);
end
dodatnia=a
ujemna=b
T
end




    