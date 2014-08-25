%zadanie 18
%Wczytaæ tablicê T[1..n,1..n] . Ka¿dy wiersz tablicy zawiera ró¿ne 
%elementy i s¹ one ró¿ne od zera. ZnaleŸæ w ka¿dym wierszu tablicy T 
%element maksymalny a nastêpnie zast¹piæ go ZEREM. Jako wynik wyœwietliæ 
%nowa postaæ tablicy T.
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