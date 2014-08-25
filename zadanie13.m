% zadanie 13
%Wczytaæ tablicê T[1..n] , tablicê W[1..n,1..n] oraz liczbê p. 
%ZnaleŸæ w tablicy W wszystkie wiersze, w których suma elementów 
%jest równa liczbie p a nastêpnie elementy tych wierszy zast¹piæ 
%elementami z tablicy T. Wyœwietliæ ile by³o takich wymian oraz nowa
%postaæ tablicy W.

clc; clear; n=5; m=4;
W=fix(4*randn(n,n))
T=fix(6*randn(1,n))
p=1

z=0;
for i=1:n
    SUMA=0;
    for j=1:n
        SUMA=SUMA+W(i,j);
    end
    SUMA;
    if SUMA==p
        for k=1:n
            W(i,k)=T(k);            
        end
        z=z+1;
    end
end
disp('Nowa Postaæ W:');disp(W)
disp('liczba zamian:');disp(z);