%zadanie 26
%Wczyta� tablic� T[1..n]. Posortowa� j� rosn�co metod� przez selekcj� a 
%nast�pnie znale�� sum� wszystkich jej element�w 
%nale��cych do przedzia�u [a,b].
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