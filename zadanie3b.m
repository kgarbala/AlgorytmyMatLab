% zadanie 3
clc
clear
%n=input('liczba kolumn, n=');
%m=input('liczba wierszy, m=');
%for i=1:n
 %   for j=1:m
  %      T(i,j)=input('')
   % end
%end
%Ta(n,m)=random
%Ta=fix(10*rand(n,m))
n=10;
m=10;
T = fix(5*randn(n,m))
koniec=0;

i=1;
j=0;
while ((i<=n) && (koniec==0))
   
    while (j<m) && (koniec==0)
        j=j+1;
        T(i,j);
        if T(i,j)==0
            
            koniec=1
            %disp('jest zero')
            disp('     jest zero:')
            disp([i,j])
        end
    end
     i=i+1;
    j=0;
end
       
if koniec==0
SUMA=0;
ILOCZYN=1;
    for i=1:n
        for j=1:m
            SUMA=SUMA+T(i,j);
            ILOCZYN=ILOCZYN*T(i,j);          
        end
    end
    SUMA
ILOCZYN
end

