% Problem 7
% Dana jest tablica n x m. Napisaæ algorytm obliczaj¹cy dla ka¿dego 
% wiersza i kolumny œredni¹ arytmetyczn¹ nie zerowych elementów.
clc; clear; n=3; m=3;
T=fix(2*randn(n,m))

z=0;

for i=1:n
    k=0;
    l=0;
    SUMAW=0;
    SUMAK=0;
    for j=1:m
        if  T(i,j)~=0
            k=k+1;
            SUMAW=SUMAW+T(i,j);
        end    
        if  T(j,i)~=0
            l=l+1;
            SUMAK=SUMAK+T(j,i);
        end
    end
    
    if k>0   
    SRW=SUMAW/k   
    end
    if l>0
    SRK=SUMAK/l   
     end    
end



