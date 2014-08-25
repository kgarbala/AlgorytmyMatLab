% Problem 6
% Dany jest n-elementowy ci¹g liczb. Napisaæ algorytm podaj¹cy wartoœæ ,
%krotnoœæ i pozycje najwiêkszego elementu.
clc; clear; n=10; m=5;
T=fix(2*randn(1,n))
max=T(1);
krot=1;
Ta(krot)=1;

for i=2:n
    if T(i)>=max
        if T(i)>max
            max=T(i);
            krot=1;
            Ta(krot)=i;
        else
            krot=krot+1;
            Ta(krot)=i;
        end
    end
end
max,krot
for i=1:krot
    Pozycja(i)=Ta(i);
end
Pozycja