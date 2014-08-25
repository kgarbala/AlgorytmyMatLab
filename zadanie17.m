%zadanie 17
%Dany jest zbiór n punktów p³aszczyzny oraz pojedynczy punkt A(x,y). 
%Wyznaczyæ punkt najbardziej odleg³y od punktu A. 
%Jako wynik podaæ tê odleg³oœæ.
clc; clear; n=5; m=2;
T=fix(2*randn(n,m))
Ax=2;
Ay=2;

max=0;
for i=1:n
    D=(((T(i,1)-Ax)^2)+((T(i,2)-Ay)^2))^(0.5);
    if D>max
        max=D;
        a=i;
    end
end
disp('odleg³oœæ maksymalna:')
disp(max)
a
T(a,:)