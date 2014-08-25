% zadanie 8
% Dana jest tablica T[1..n,1..m]. ZnaleŸæ w tablicy T 
%pierwszy wiersz maj¹cy same elementy dodatnie oraz 
%pierwszy wiersz zawieraj¹cy same elementy ujemne. 
%Je¿eli istniej¹ takie wiersze, to wymieniæ 
%te wiersze w tablicy a nastêpnie wyœwietliæ 
%now¹ postaæ tablicy T.
clc

clear
n=3;
m=3;
T=fix(6*randn(n,m))

STOP1=0;
STOP2=0;
STOP3=0;
i=0;
%%
while STOP1==0 && i<=n
    i=i+1;
    j=1;
    k=1;
    D=0; U=0;
    %%   
    while (STOP2==0 && j<=m && i<=n)       
        if T(i,j)>=0
            D=D+1;
        end
       j=j+1; 
    end
if D==n
        STOP2=1;
        a=i;
        for k=1:m
            Dd(k)=T(i,k);
            dd=i;
        end     
end
%%
     while (STOP3==0 && k<=m && i<=n)       
        if T(i,k)<=0
            U=U+1;
        end
       k=k+1; 
    end
if U==n
        STOP3=1;
        a=i;
        for k=1:m
            Uu(k)=T(i,k);
            uu=i;
        end     
end 
end

%%
if STOP2==1 && STOP3==1   
for i=1:m
    T(uu,i)=Dd(i);
    T(dd,i)=Uu(i);
end 
T
else disp('Brak dodatnich i ujemnych')
end
