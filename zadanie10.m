% zadanie 10
%Dana jest tablica T[1..n,1..m]. Poda� pozycj� najwcze�niejszego elementu 
%tablicy, do kt�rego suma element�w go poprzedzaj�cych jest wi�ksza od 
%podanej liczby p. Przyjmujemy zasad� przegl�dania i sumowania element�w 
%wg wierszy.
clc; clear; n=5; m=5;
T=fix(6*randn(n,m))
i=1;j=1;
SUMA=T(1,1);
p=1;
if p>SUMA
SUMA=0;

while p>=SUMA && i<=n  
    j=1;
    while p>=SUMA  && j<=m        
        SUMA=SUMA+T(i,j);
        a=i; b=j;
        j=j+1;
    end
    i=i+1;   
end
if p<=SUMA 
    a,b
    p
    SUMA
else
  'brak rozwiazania, SUMA<=p'
end
else
 disp('brak rozwiazanie, T(1,1)>=p') 
 SUMA
end