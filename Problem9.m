% Problem 9
% Napisaæ algorytm podaj¹cy ile jest wierszy w tablicy maj¹cych
% wszystkie elementy ró¿ne od zera.

clc; clear; n=10; m=2;
T=fix(3*randn(n,m))
%T=[1,1,2;1,1,1;1,1,1]

k=0;
for i=1:n
    j=1;
    while j<m && T(i,j)~=0
        %  i,j,T(i,j)
        j=j+1
      
    end
    if T(i,j)~=0
        k=k+1;
    end
end
k

    