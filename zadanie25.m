%zadanie 25
%Wczyta� tablic� T[1..n]. Posortowa� j� rosn�co metod� przez wstawianie a 
%nast�pnie wybra� elementy tworz�ce ci�g arytmetyczny 
%zdefiniowany przez dwa pierwsze elementy tablicy T.
clc; clear; n=10; mm=2;
T=fix(5*randn(1,n))
%T=[-10,-8,-7,-6,-5,-4,-3,-2,0,2,3,4]
z=0;
for i=1:n-1
    min=i;    
    for j=i+1:n
        z=z+1;
        if T(j)<T(min)
            min=j;                
        end
            x=T(min);
            T(min)=T(i);
            T(i)=x;     
    end
end
T
b(1)=T(1);
b(2)=T(2);
k=2;
m=3;
for i=3:n
    a(i)=T(1)+(m-1)*(T(2)-T(1));    
    if a(i)==T(i)
        k=k+1;
        b(k)=T(i);
        m=m+1;
    else
        m=m;
    end
end
b
r=T(2)-T(1)
