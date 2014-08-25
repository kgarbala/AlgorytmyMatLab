% zadanie 11
%Dana jest tablica T[1..n,1..k]. Wyznaczy� wiersz , w kt�rym suma kwadrat�w
%wszystkich element�w jest najwi�ksza ( w przypadku wielu takich wierszy 
%wybra� pierwszy znaleziony) oraz kolumn�, w kt�rej suma kwadrat�w 
%wszystkich element�w jest najmniejsza ( w przypadku wielu takich kolumn 
%wybra� ostatnia znalezion�). Nast�pnie usun�� kolejno z tablicy T tak 
%znaleziony wiersz i kolumn�. Jako wynik wy�wietli� now� okrojon� posta� 
%tablicy T.
clc; clear; n=4; m=4;
T=fix(6*randn(n,m))
Wmax=0; Kmin=0;
Wi=1;Ki=1;
for j=1:m Wmax = Wmax+(T(1,j))^2;end
for i=1:n Kmin = Kmin+(T(i,1))^2; end

for i=2:n
C=0;
for j=1:n
  C = C+(T(i,j))^2;
end
if C>Wmax
    Wmax=C;
    Wi=i;
end
end

for j=2:n
D=0;
for i=1:n
  D = D+(T(i,j))^2;
end
if D>=Wmax
    Kmin=D;
    Ki=i;
end
end
T(Wi,:);
T(:,Ki);

for j=1:m
    for i=1:Wi-1
        E(i,j)=T(i,j);
    end
    for i=Wi+1:n
        E(i-1,j)=T(i,j);
    end
end

for i=1:n
    for j=1:Ki-1
        F(i,j)=T(i,j);
    end
    for j=Ki+1:m
        F(i,j-1)=T(i,j);
    end
end


for i=1:Wi-1
    for j=1:Ki-1
        G(i,j)=T(i,j);
    end
    for j=Ki+1:m
        G(i,j-1)=T(i,j);
    end
end
    for i=Wi+1:n
        for j=1:Ki-1
        G(i-1,j)=T(i,j);
        end
        for j=Ki+1:m
            G(i-1,j-1)=T(i,j);
        end
    end
  Ki, Wi 
 G
