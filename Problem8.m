% Problem 8
% Tablica nx m. Napisaæ algorytm obliczaj¹cy sumê elementów:
%a)	we wnêtrzu tablicy; 
%b)	na jego brzegach.

clc; clear; n=3; m=4;
T=fix(1*randn(n,m))
SUMAW=0;
SUMAN=0;
for i=2:n-1
    for j=2:m-1
        SUMAW=SUMAW+T(i,j);
    end
end
for i=1:n
    SUMAN=SUMAN+T(i,1)+T(i,m);
end
for j=2:m-1
    SUMAN=SUMAN+T(1,j)+T(n,j);
end
SUMAW
SUMAN

