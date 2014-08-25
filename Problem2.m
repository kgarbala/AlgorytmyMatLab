% problem 2
% Dany jest n- elementowy ci¹g liczb.
% Napisaæ algorytm zapisuj¹cy w nowych tablicach:
%a)	Pozycje i wartoœci elementów >0;
%b)	Pozycje i wartoœci elementów =0;
%c)	Pozycje i wartoœci elementów <0.
clc; clear; n=5; mm=2;
T=fix(50*randn(1,n))
w=0;
r=0;
m=0;
W=0;
R=0;
M=0;

for i=1:n
    el=input('el = ');
    if el>=0
        if el>0
            w=w+1;
            W(w)=el;
            Pw(w)=i;
        else
            r=r+1;
            R(r)=el;
            Pr(r)=i;
        end
    else
        m=m+1;
        M(m)=el;
        Pm(m)=i;
    end
end
if w>0 W,Pw, end
if r>0 R,Pr, end
if m>0 M,Pm, end
