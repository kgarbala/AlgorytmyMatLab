%zadanie 23
%Dany jest n elementowy ci¹g ró¿nych liczb. Napisaæ algorytm wyznaczaj¹cy 
%element minimalny i element maksymalny w tym ci¹gu oraz wyœwietlaj¹cy
%wszystkie elementy ci¹gu le¿¹ce pomiêdzy elementem minimalnym i 
%maksymalnym

clc; clear; n=10; mm=2;
T=fix(5*randn(1,n))
min=T(1);
max=T(1);
a=1;
b=1;
for i=1:n
    if T(i)>max
        max=T(i);
        a=i;
    elseif T(i)<min
        min=T(i);
        b=i;
    end
end
disp('MAX:')
disp(max) 
disp('pozycja MAX:')
disp(a) 
disp('MIN:')
disp(min)
disp('pozycja MIN:')
disp(b)
k=0;
if a<b
for i=a+1:b-1
    k=k+1;
    C(k)=T(i);
end
elseif b>a
    for i=b+1:a-1
        k=k+1;
    C(k)=T(i);
    end
else
    C='pusty';
end
C

    
       
