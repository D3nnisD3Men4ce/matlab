%Baliguat, Dennis Ivan C.

clear
clc
syms n;
z = zpk('z');
H = ztrans(n^2)
[num, den] = numden(H);
Ts = 0.1;
f = tf(sym2poly(num), sym2poly(den), Ts)
pole(f)
zero(f)
zplane(zero(f), pole(f));



% H = (z+3)/(5*z^3 + 3*z^2 - 2.5);
% H = (3 + 3*z^-1 + 3*z^-2) / (1 + 0.6*z^-1 + 0.81*z^-2);
% pole(H)
% zero(H)
% zplane(zero(H), pole(H));


