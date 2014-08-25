% Problem 14
% Dana jest tablica n x k zawieraj¹ca elementy ró¿ne. 
%Napisaæ algorytm wyœwietlaj¹cy elementy tej 
%tablicy le¿¹ce pomiêdzy elementami max i min.

clc; clear; n=10; m=10;
T=fix(5*randn(n,m))

min=T(1,1);
max=T(1,1);
Wmax=1;
Wmin=1;
Kmax=1;
Kmin=1;
for i=1:n
    for j=1:m
        if T(i,j)>max
            max=T(i,j);
            Wmax=i;
            Kmax=j;
        elseif T(i,j)<min
            min=T(i,j);
            Wmin=i;
            Kmin=j;
        end
    end
end
k=0;
min, max
if Wmax<Wmin
    Wp=Wmax;
    Wk=Wmin;
    Kp=Kmax;
    Kk=Kmin;
elseif Wmax>Wmin
    Wp=Wmin;
    Wk=Wmax;
    Kp=Kmin;
    Kk=Kmax;
elseif Kmax>Kmin
    Wp=Wmin;
    Wk=Wmax;
    Kp=Kmin;
    Kk=Kmax;
else
    Wp=Wmax;
    Wk=Wmin;
    Kp=Kmax;
    Kk=Kmin;
end
if Wp~=Wk
    for j=Kp+1:m
        k=k+1;
        C(k)=T(Wp,j);
    end
    for i=Wp+1:Wk-1
        for j=1:m
            k=k+1;
            C(k)=T(i,j);
        end
    end
    for j=1:Kk-1
        k=k+1;
        C(k)=T(Wk,j);
    end
else
    for j=Kp+1:Kk-1
        k=k+1;
        C(k)=T(Wp,j);
    end
end
if k>0
C
end