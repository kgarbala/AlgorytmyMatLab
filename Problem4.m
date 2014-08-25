% Problem 4
%Dane s¹ dwa ci¹gi liczbowe a1,a2..an i b1,b2..bk n, k>=1.
%Napisaæ algorytm znajduj¹cy elementy nale¿¹ce jednoczeœnie 
%do obydwu ci¹gów. Podaæ te elementy oraz ich iloœæ.
clc; clear; n=10; m=5;
a=fix(5*randn(1,n))
b=fix(5*randn(1,m))
k=0;
if n>m
    for i=1:n
        for j=1:m
            if a(i)==b(j)
                k=k+1;
                C(k)=a(i);
            end
        end
    end
else
        for i=1:m
            for j=1:n
                if b(i)==a(j)
                k=k+1;
                C(k)=a(i);
                end
            end
        end
end
if k~=0
    C
else
    'brak rozwiazania'
end
k=0;
for i=1:n
    j=1;
    while j<=m && a(i)==b(j) 
        j=j+1
    end
    if  a(i)==b(j)
          k=k+1;
        D(k)=b(j)
    end
end
