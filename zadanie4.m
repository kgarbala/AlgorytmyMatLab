% zadanie 4
% Wczytaæ tablicê T[1..n, 1..m]. 
% Zbadaæ, czy istniej¹ w tej tablicy wiersze maj¹ce tak¹ 
% sam¹ sumê wszystkich swoich elementów.
clc; clear; n=10; m=10;
T=fix(10*randn(n,m))


for i=1:n
    SUMA=0;
    for j=1:m
        SUMA=SUMA+T(i,j);
    end
    
    C(i)=SUMA;    
end
C
spr=0;
for i=1:n-1
    for j=i+1:n
        if C(i)==C(j) 
            disp('indeksy:') 
            disp([i,j]) 
            spr=1;
        end        
    end
end
if spr==1
    disp('tak, sa takie wiersze')
else
    disp('nie ma takich wierszy')
end
i=0;
k=1;
STOP=0;
while i<n && STOP==0;
    i=i+1;
    j=1;
    S=0;
    k=1;
    while j<=m    
        S=S+T(i,j);
        j=j+1;
    end
    D(i)=S;
    if i>=2
        while k<i && STOP==0 
          if D(k)==D(i)
            STOP=1;             
        end
            k=k+1;            
        end
    end
end
if STOP==1
    disp('zatrzymano wczesniej, maja taka sume')
    D
    k=k-1,i, Liczba=D(i)
else
 disp('nie ma takich wierszy')   
    D
end       