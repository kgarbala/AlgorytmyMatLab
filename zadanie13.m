% zadanie 13
%Wczyta� tablic� T[1..n] , tablic� W[1..n,1..n] oraz liczb� p. 
%Znale�� w tablicy W wszystkie wiersze, w kt�rych suma element�w 
%jest r�wna liczbie p a nast�pnie elementy tych wierszy zast�pi� 
%elementami z tablicy T. Wy�wietli� ile by�o takich wymian oraz nowa
%posta� tablicy W.

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
disp('Nowa Posta� W:');disp(W)
disp('liczba zamian:');disp(z);