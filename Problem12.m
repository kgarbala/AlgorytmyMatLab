% Problem 12
% Dana jest tablica maj¹ca n wierszy i m kolumn. Napisaæ algorytm wczytuj¹cy 
% te tablicê i zbadaæ czy zawiera ona elementy tylko ró¿ne od zera.
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
    'By³o zero'
    i, j
end
