% zadanie 14
%Dana jest tablica T[1..n] , n>=2. Sprawdziæ, czy wystêpuje w niej co 
%najmniej jedna para liczb jednakowych. Je¿eli tak, to podaæ te liczby.

clc; clear; n=10; m=4;
T=fix(4*randn(1,n))
k=0;
for i=1:n-1
for j=i+1:n
    if T(i)==T(j)
        k=k+1;
        Z(k)=T(i);
        
        C(k,1)=i;
        C(k,2)=j;
    end
end       
end
if k~=0
    Z
    C
end
