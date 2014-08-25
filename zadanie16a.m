% zadanie 16
%Wczytaæ tablicê T[1..n,1..n] . Sprawdziæ czy jest to macierz 
%trój-przek¹tniowa, tzn. poza g³ówn¹ przek¹tna oraz dwóch przek¹tnych 
%do niej s¹siednich, wszystkie pozosta³e elementy s¹ równe zero.
clc; clear; n=5; m=4;
T=fix(1*randn(n,n))
%T=[1,1,0,0,0;2,2,10,0,0;0,2,3,2,0;0,0,44,4,2;0,0,0,2,10]
%%

i=1;
STOP=0;
k=0;
S=0;
%for i=1:n
%   for j=i+2:n
%        if T(i,j)~=0 && T(j,i)~=0 
%        'to nie jest macierz troj'
%        else
%        k=k+1;
%        end
%    end
%end
while STOP==0 && i<=n
    j=i+2;
    while STOP==0 && j<=n
        
        if T(i,j)==0 && T(j,i)==0                         
            k=k+1;
        elseif T(i,j)~=0 
             i,j
             A=T(i,j)
            STOP=1;
        elseif T(j,i)~=0 
             i,j
             B=T(j,i)
            STOP=1;
        end
        j=j+1;
    end
    i=i+1;
end
for i=2:n-1
    S=S+(n-i);
end
k;
%%
i=1;
while STOP==0 && i<=n
    j=i;
    while STOP==0 && j<=i+1 && j<=n
        
      if T(i,j)~=0 && T(j,i)~=0                         
            k=k+1;
        else
             i,j
             T(i,i)
             T(j,i)
            STOP=1; 
      end
      j=j+1;
    end
    i=i+1;
end
%%
disp('Liczba elementów nad górn¹ trójprzekatn¹')
disp(S)
disp('liczba udanych prownan do zera')
disp(k)
if STOP==1
    disp('TO NIE JEST MACIERZ TRÓJPRZEK¥TNA')
else
    disp('MACIERZ TRÓJPRZEK¥TNA')
end