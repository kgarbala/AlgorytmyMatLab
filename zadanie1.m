% zadanie 1
% Wczytaj tablicê T[1..n,1..k]. ZnajdŸ sumê tych jej elementów, 
%dla których obydwa indeksy s¹ liczbami parzystymi ( np. T[2,2],. T[2,8] ).
%%
%n=input('liczba kolumn, n=');
%m=input('liczba wierszy, m=');
%for i=1:n
 %   for j=1:m
  %      T(i,j)=input('')
   % end
%end
%Ta(n,m)=random
%Ta=fix(10*rand(n,m))
%%
clc; clear; n=10; m=10;
T=fix(20*randn(n,m))
SUMA=0;
k=0;
l=0;
z=0;

for i=2:2:n
    for j=2:2:m     
    SUMA=SUMA+T(i,j);
    z=z+1;
    Tab(z)=T(i,j);
    end   
end
SUMA
Tab
i=2;
S=0;
while i<=n    
    j=2;
    while j<=m       
        S=S+T(i,j); 
        j=j+2;
    end
    i=i+2;
end
S

