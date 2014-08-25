% Problem 3
%Dany jest n-elementowy ci¹g liczb. 
%Napisaæ algorytm podaj¹cy wszystkie ró¿ne elementy tego ci¹gu.
clc; clear; n=10; mm=2;
T=fix(2*randn(1,n))
C(1)=T(1);
k=1;
D(1)=T(1);
z=1; 
for i=2:n
 
k=1;
    while k<=z && T(i)==C(k)
      k=k+1;
     %   C(k)=T(i);
    end
    if T(i)~=C(z)
        z=z+1;
        C(z)=T(i); 
    end
end


C







%wsk=1;
%for i=2:n
 %   wskz=1;    
  %  while T(i)~=T(wsk) && wskz~=wsk
   %     wskz=wskz+1;
   % end
    %if T(i)~=T(wskz)
     %   wskz=wskz+1;
      %  T(wsk)=T(i);
  %  end
%end

    