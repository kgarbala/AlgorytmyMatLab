%zadanie 26
%Wczytaæ tablicê T[1..n]. Posortowaæ j¹ rosn¹co metod¹ przez selekcjê a 
%nastêpnie znaleŸæ sumê wszystkich jej elementów 
%nale¿¹cych do przedzia³u [a,b].
clc; clear; n=4; mm=2;
%T=fix(5*randn(1,n))
T=[4,3,2,1]
for i=1:n-1
    min=i;
for j=i+1:n    
    if T(j)<T(min)
        min=j;     
    end
        a=T(min);
        T(min)=T(j) ; 
        T(j)=a ;              
end
end
T
a=-3;
b=3;
C=0;
for i=1:n
    if T(i)>=a && T(i)<=b
       
        C=T(i)+C;
    end
end
    C