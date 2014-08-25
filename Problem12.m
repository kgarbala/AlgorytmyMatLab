% Problem 12
% Dana jest tablica maj�ca n wierszy i m kolumn. Napisa� algorytm wczytuj�cy 
% te tablic� i zbada� czy zawiera ona elementy tylko r�ne od zera.
clc; clear; n=10; m=10;
T=fix(20*randn(n,m))
i=0;
STOP=0;

while i<n && STOP==0
    i=i+1;
    j=1;
    while T(i,j)~=0 && j<m
        j=j+1;
        T(i,j);
    end
    if T(i,j)==0
        STOP=1;
    end   
end
if T(i,j)~=0
    'brak zera'
    i, j
else
    'By�o zero'
    i, j
end
