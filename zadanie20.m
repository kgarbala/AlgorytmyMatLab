%zadanie 20
%Wczyta� tablic� T[1..n,1..n] . Usun�� z niej wszystkie wiersze sk�adaj�ce
%si� z samych zer. Jako wynik wy�wietli� nowa posta� tablicy T.
clc; clear; n=5; mm=2;
T=fix(0.5*randn(n,n))

l=0;

for i=1:n
    k=0;
    for j=1:n
        if T(i,j)==0
            k=k+1;
        end
    end
    if k==n
        l=l+1;
        C(l)=i;      
 
    else
        l=l+1;
        C(l)=0;
    end  
end
C
i=1;
m=0;
while i<=l 
    j=1;    
    if i~=C(i)
    m=m+1;
    end
    while j<=n && i~=C(i)        
        Z(m,j)=T(i,j);
        j=j+1;
    end
    i=i+1;    
end
if m==0
    'macierz pusta'
else
Z
end

        
    

