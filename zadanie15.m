% zadanie 15
%Dana jest tablica T[1..n,1..n] . Sprawdziæ, czy jest to macierz 
%symetryczna, tzn. czy dla ka¿dej pary indeksów i, j zachodzi równoœæ:
%T[i,j]=T[j,i].
clc; clear; n=2; m=4;
T=fix(1*randn(n,n))
i=1;
j=1;
STOP=0;
while   i<=n && STOP==0 
    j=1;   

    while  j<=n  && STOP==0    
if T(i,j)~=T(j,i) 
    T(i,j);
    T(j,i);   
    STOP=1;
end  
    j=j+1;
    end
    i=i+1;
end

if STOP==0
    disp('TAK')
else
    disp('NIE')
end

    