% zadanie 3
% Wczyta� tablic� A[1..n,1..k]. Zbada�, czy wszystkie elementy tej
%tablicy s� r�ne od zera i je�eli tak, to wyznaczy� sum� oraz 
%iloczyn tych element�w. Je�eli tablica zawiera elementy zerowe, 
%to zako�czy� jej przegl�danie po znalezieniu pierwszego ZERA.
clc; clear; n=10; m=10;
T=fix(20*randn(n,m))
i=0;


SUMA=0;
ILOCZYN=1;
STOP=0;
while i<n && STOP==0
    j=1;
    i=i+1;
    while T(i,j)~=0 && j<m
    j=j+1;
    end    
     if T(i,j)==0
     STOP=1;
     end
    
end
       
if T(i,j)~=0
    for i=1:n
        for j=1:m
            SUMA=SUMA+T(i,j);
            ILOCZYN=ILOCZYN*T(i,j);          
        end
    end
    SUMA
ILOCZYN
else
    disp('by�o zero')
    i,j
end

