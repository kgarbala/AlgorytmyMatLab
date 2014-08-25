% Problem 13
% Dana jest tablica n x m. napisaæ algorytm tworz¹cy 
% trzy nowe tablicê o definicjach:
% a)	Ta –  zawiera wiersze tablicy maj¹ce wiêcej elementów >0;
% b)	Tb –  zawiera wiersze tablicy maj¹ce wiêcej elementów =0;
% c)	Tc –  zawiera wiersze tablicy maj¹ce wiêcej elementów <0.

clc; clear; n=10; m=10;
T=fix(2*randn(n,m))
x=0;y=0;z=0;
for i=1:n   
    d=0;r=0;u=0;
    for j=1:m
        if T(i,j)>0
            d=d+1;
        elseif T(i,j)==0
            r=r+1;
        else
            u=u+1;
        end
    end
        if d>r && d>u
            x=x+1;
            TA(x,1)=i;
            for k=1:m
            Ta(x,k)=T(i,k);
            end
        elseif r>d && r>u
            y=y+1;
            TB(y,1)=i;
            for k=1:m
                Tb(y,k)=T(i,k);
            end
        elseif u>d && u>r
            z=z+1;
            TC(z,1)=i;
            for k=1:m
            Tc(z,k)=T(i,k);
            end
        end
end

if x>0 Ta, TA, end
if y>0 Tb, TB, end
if z>0 Tc, TC, end