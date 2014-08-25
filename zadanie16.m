% zadanie 16
%Wczytaæ tablicê T[1..n,1..n] . Sprawdziæ czy jest to macierz 
%trój-przek¹tniowa, tzn. poza g³ówn¹ przek¹tna oraz dwóch przek¹tnych 
%do niej s¹siednich, wszystkie pozosta³e elementy s¹ równe zero.
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

           
          