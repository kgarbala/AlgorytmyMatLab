% zadanie 9
%Dana jest tablica T[1..n,1..m]. Obliczy� ile jest element�w tablicy T 
%le��cych poni�ej g��wnej przek�tnej , kt�re s� mniejsze od sumy wszystkich 
%element�w le��cych na g��wnej przek�tnej tablicy T.
clc; clear; n=5; m=6;
T=fix(6*randn(n,m))
C=0; z=0; SUMA=0;
   
if n>=m 
    for i=1:m   SUMA=SUMA+T(i,i); end
    for i=2:m
        for j=1:i-1
            if T(i,j)<SUMA 
                z=z+1;
                C(z)=T(i,j);              
            end
        end
    end
for i=m+1:n
    for j=1:m
    if T(i,j)<SUMA 
                z=z+1;
                C(z)=T(i,j);                 
    end
    end
end
else
    for i=1:n   SUMA=SUMA+T(i,i); end
    for i=2:n
        for j=1:i-1
            if T(i,j)<SUMA 
                z=z+1;
                C(z)=T(i,j);
            end
        end
    end   
end
  SUMA,C,z    