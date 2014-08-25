% zadanie 6
%Dana jest tablica T[1..n,1..m]. Utworzyæ i wyœwietliæ
%now¹ tablicê W[1..n,1..m], w której ka¿dy element W[i,j] 
%jest sum¹ wszystkich elementów s¹siednich elementu T[i,j].
%Uwaga: W zale¿noœci od po³o¿enia element T[i,j] 
%mo¿e mieæ dwóch, trzech lub czterech s¹siadów!
clc; clear; n=3; m=4;
T=fix(5*randn(n,m))


for i=1:n+2;
    for j=1:m+2;
        P(i,j)=0;
    end
end
P;
for i=1:n
    for j=1:m
        P(i+1,j+1)=T(i,j);
    end
end
P;
for i=2:n+1
    for j=2:m+1
        C(i,j)=P(i+1,j)+P(i-1,j)+P(i,j+1)+P(i,j-1);
    end
end
C;
for i=2:n+1
    for j=2:m+1
        W(i-1,j-1)=C(i,j);
    end
end
W
%------------------------
% drugi sposob
%------------------------
for i=2:n-1
    for j=2:m-1
        V(i,j)=T(i+1,j)+T(i-1,j)+T(i,j+1)+T(i,j-1);
    end
end
V;
for j=2:m-1
    V(1,j)=T(1,j-1)+T(1,j+1)+T(2,j);
    V(n,j)=T(n,j-1)+T(n,j+1)+T(n-1,j);
end
V;
for i=2:n-1
    V(i,1)=T(i-1,1)+T(i+1,1)+T(i,2);
    V(i,m)=T(i-1,m)+T(i+1,m)+T(i,m-1);
end
V;
V(1,1)=T(1,2)+T(2,1);
V(1,m)=T(1,m-1)+T(2,m);
V(n,1)=T(n-1,1)+T(n,2);
V(n,m)=T(n,m-1)+T(n-1,m);
V