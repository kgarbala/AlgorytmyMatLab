% zadanie 5
%Dana jest tablica kwadratowa T[1..n,1..n].
%Wyznaczy� numer wiersza maj�cego najwi�kszy iloczyn wszystkich 
%element�w oraz numer kolumny maj�cej najwi�ksz� 
%sum� swoich wszystkich element�w.
clc
clear

n=10;
T=fix(6*randn(n,n))
Wmax=1;
Kmax=0;

for i=1:n    
        Kmax=Kmax+T(i,1);
        Wmax=Wmax*T(1,i);        
end
a=1;
b=1;

for i=2:n
    W=1;
        K=0;
    for j=1:n
        
      W=W*T(i,j); 
      K=K+T(j,i);
    end
        if W>Wmax
           Wmax=W;
           a=i;
       end
       if K>Kmax
           Kmax=K;
           b=j;
       end
end

disp(['Wmax: ','nr wiersza: '])
disp([Wmax,a])
disp(['Kmax: ','nr kolumny: '])
disp([Kmax,b])

