%zadanie 24
%Wczyta� tablic� T[1..n]. Posortowa� j� rosn�co metod� b�belkow� a 
%nast�pnie znale�� najwi�ksz� r�nic� pomi�dzy dwoma s�siednimi elementami.

clc; clear; n=10; mm=2;
T=fix(5*randn(1,n))
T(1)=-100
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
k=0;
max=T(2)-T(1);
el1=1;
el2=2;
for i=2:n    
        C(i-1)=T(i)-T(i-1);
        if C(i-1)>max
            max=C(i-1); 
            el1=i-1;
            el2=i;
        end
end
C
roznica=max
el1
el2
        
        
