% zadanie 16
%Wczyta� tablic� T[1..n,1..n] . Sprawdzi� czy jest to macierz 
%tr�j-przek�tniowa, tzn. poza g��wn� przek�tna oraz dw�ch przek�tnych 
%do niej s�siednich, wszystkie pozosta�e elementy s� r�wne zero.
clc; clear; n=5; m=4;
%T=fix(1*randn(n,n))
T=[1,1,0,0,0;2,2,2,0,0;0,2,2,2,0;0,0,2,2,2;0,0,0,2,2]

i=1;
STOP=0;
k=0;
while STOP==0 && i<=n
    j=3
    
    while STOP==0 && j<=n
        
        if T(i,j)~=0 && T(j,i)~=0 
            k
            i,j
            STOP=1;
        else
            k=k+1;            
        end
      j=i+1;
    end
   i=i+1; 
end

if STOP==0
disp('TAK')
else
disp('NIE')
end

           
          