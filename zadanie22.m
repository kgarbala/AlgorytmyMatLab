%zadanie 22
%Dana jest tablica T[1..n,1..n] uporz�dkowana rosn�co wg wierszy.
%Wy�wietli� elementy tablicy mniejsze lub r�wne od �redniej 
%arytmetycznej wszystkich element�w tablicy le��cych na g��wnej przek�tnej.
clc; clear; n=5; mm=2;
T=fix(0.5*randn(n,n));
k=0;
for i=1:n
    for j=1:n
    k=k+1;
    G(k)=T(i,j);
    end
end
G=sort(G);
k=0;
for i=1:n
    for j=1:n
        k=k+1;
    T(i,j)=G(k);
    end
end
T
SUMA=0;
for i=1:n
    
        SUMA=SUMA+T(i,i);
    
end

ART=SUMA/(n)
i=1;
k=0;
j=1;


while i<=n && ART>=T(i,j) 
   
    while j<=n && ART>=T(i,j)  
        k=k+1;       
        C(k)=T(i,j);
        j=j+1;
    end
    i=i+1;
     j=1;
end
C

