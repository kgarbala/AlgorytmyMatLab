% Problem 10
% Dana jest tablica kwadratowa. 
% Napisa� algorytm obliczaj�cy �redni� arytmetyczn� dla obszar�w:
%a)	G��wna przek�tna;
%b)	G�rny tr�jk�t;
%c)	Dolny tr�jk�t.
clc; clear; n=3; m=5;
T=fix(3*randn(n,n))
SUMA=0;
SG=0;
SD=0;
for i=1:n
SUMA=SUMA+T(i,i);
end
for i=1:n-1
    for j=i+1:n
        SG=SG+T(i,j);
        SD=SD+T(j,i);
    end
end
PRZEKATNA=SUMA/n
GORA=2*SG/(n^2-n)
DOL=2*SD/(n^2-n)
