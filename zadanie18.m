%zadanie 18
%Wczyta� tablic� T[1..n,1..n] . Ka�dy wiersz tablicy zawiera r�ne 
%elementy i s� one r�ne od zera. Znale�� w ka�dym wierszu tablicy T 
%element maksymalny a nast�pnie zast�pi� go ZEREM. Jako wynik wy�wietli� 
%nowa posta� tablicy T.
clc; clear; n=5; m=2;
T=fix(2*randn(n,n))

a=1;
b=1;
for i=1:n
k=0;
a=i;
b=1;
    max=T(i,1);
    for j=2:n
        if T(i,j)>max
            a=i;
            b=j;
            max=T(i,j);
        else
            k=k+1;
         
        end
    end
T(a,b)=100;
end
T