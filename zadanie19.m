%zadanie 19
%Wczyta� tablic� T[1..n,1..n] . Sprawdzi�, czy jest to tablica 
%zawieraj�ca wy��cznie elementy nieujemne.
clc; clear; n=3; m=2;
T=fix(1*randn(n,m))
i=1;
j=1;
STOP=0;
while i<=n && STOP==0;
    j=1;
    
    
    while j<=m       
        if T(i,j)<0
        STOP=1;
          
        end
        j=j+1 ;
    end
      i=i+1; 
end
    
if STOP==0
    'TAk'
else
    'nie'
end

