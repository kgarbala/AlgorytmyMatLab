%zadanie 17
%Dany jest zbi�r n punkt�w p�aszczyzny oraz pojedynczy punkt A(x,y). 
%Wyznaczy� punkt najbardziej odleg�y od punktu A. 
%Jako wynik poda� t� odleg�o��.
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
disp('odleg�o�� maksymalna:')
disp(max)
a
T(a,:)