% zadanie 7
%Dana jest tablica T[1..n,1..m]. 
%Wyzerowa� te wiersze tablicy, w kt�rych ilo�� 
%element�w dodatnich jest r�wna ilo�ci element�w ujemnych. 
%Wy�wietli� nowa posta� tablicy.
clc; clear; n=3; m=4;
T=fix(5*randn(n,m))

for i=1:n
    D=0;
    U=0;
    for j=1:m
        if T(i,j)>0
        D=D+1;
        elseif T(i,j)<0
        U=U+1;
        end
    end

if (D==U && D~=0)
    wiersz=i   
    for j=1:m
        T(i,j)=0;        
    end
    
end    
end
T          