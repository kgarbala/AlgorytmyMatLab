% Problem 11
% Danych jest n r�nych punkt�w p�aszczyzny. Napisa� algorytm 
% obliczaj�cy odleg�o�ci pomi�dzy ka�da par� punkt�w oraz
% podaj�cy najwi�ksz� odleg�o�� pomi�dzy punktami.
clc; clear; n=5; m=5;
T=fix(5*randn(n,2))
%T=[1,0;0,1;1,0]
k=0;
max=0;
for i=1:n-1  
    for j=i+1:n
        k=k+1; 
        C(k)=((T(i,1)-T(j,1))^2+(T(i,2)-T(j,2))^2)^(0.5);    
    if max<C(k)
        max=C(k);
        cc=k;
        poz1=i;
        poz2=j;
    end
    end
end
C
max
cc
punktA=T(poz1,:)
punktB=T(poz2,:)
pozycjaA=poz1
pozycjaB=poz2