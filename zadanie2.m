% zadanie 2
% Wczytaj tablic� T[1..n,1..k]. Utw�rz now� tablic� dwuwymiarow� 
% L[1..n,1..3], w kt�rej i-ty wiersz zawiera kolejno warto�ci: 
% ilo�� element�w ujemnych, zerowych i dodatnich z i-tego wiersza
% tablicy danych T. Wy�wietli� tablic� wynikow� L.
clc; clear; n=10; m=10;
T=fix(20*randn(n,m))

for i=1:n
x=0;
y=0;
z=0;
    for j=1:m
        if T(i,j)> 0
            x=x+1;
            L(i,1)=x;
        elseif  T(i,j)==0             
                y=y+1;
                L(i,2)=y; 
            else
                z=z+1;
                L(i,3)=z;
        end
    end
end
L