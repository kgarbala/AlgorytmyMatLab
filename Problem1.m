% problem 1
% Dany jest n- elementowy ci�g liczb. 
%Napisa� algorytm podaj�cy ile jest w tym ci�gu element�w:
%a)	Wi�kszych od �redniej arytmetycznej;
%b)	R�wnych �redniej arytmetycznej;
%c)	Mniejszych od �redniej arytmetycznej.

clc; clear; n=10; mm=2;
T=fix(5*randn(1,n))

w=0;
r=0;
m=0;
SUMA=0;
W=0;
R=0;
M=0;
for i=1:n
    SUMA=SUMA+T(i);
end
SR=SUMA/n
for i=1:n
    if T(i)>=SR
        if T(i)>SR
            w=w+1;
            W(w)=T(i);
        else
            r=r+1;
            R(r)=T(i);
        end
    else
        m=m+1;
        M(m)=T(i);
    end
end
disp('ELEMENTY WIEKSZE OD �REDNIEJ ARYTMETYCZNEJ:'),W
disp('ILOSC ELEMENTOW WIEKSZYCH OD SREDNIEJ ARYTMETYCZNEJ:'),w
disp('ELEMENTY ROWNE �REDNIEJ ARYTMETYCZNEJ:'),R
disp('ILOSC ELEMENTOW ROWNYCH SREDNIEJ ARYTMETYCZNEJ:'),r
disp('ELEMENTY MNIEJSZE OD �REDNIEJ ARYTMETYCZNEJ:'),M
disp('ILOSC ELEMENTOW MNIEJSZYCH OD SREDNIEJ ARYTMETYCZNEJ:'),m