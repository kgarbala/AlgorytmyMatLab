% zadanie 12
%Dana jest tablica T[1..n,1..k]. Przegl�daj�c tablic� wierszami zapisa� 
%w nowej tablicy jednowymiarowej W elementy tworz�ce podci�g malej�cy 
%rozpoczynaj�cy si� w pierwszym elemencie tablicy T.
%Jako wynik wy�wietli� elementy tablicy W.

clc; clear; n=4; m=5;
T=fix(6*randn(n,m))
W(1)=T(1,1);
k=1;
l=1;
for i=1:n
    for j=1:m
        if T(i,j)<W(k)
            k=k+1;
            W(k)=T(i,j); 
        else            
              C(l)=T(i,j); 
              l=l+1;
        end
    end
end
W
