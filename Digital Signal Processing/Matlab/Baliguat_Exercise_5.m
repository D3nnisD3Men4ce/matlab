%Baliguat, Dennis Ivan C.
% MATLAB Exercise: Plot the real, imaginary, magnitude, and 
% phase of the DTFT of the following signal:
% 1. x(n) = {4, 3, 2, 1, 1, 2, 3, 4}. Comment on the angle plot.
%            ?

clear
clc
f = 1/10;
x2 = [4 3 2 1 1 2 3 4];
n = length(x2);
X = [];
% X = zeros(length(n));
for N = 1:n
    X(N) = (x2(N)*exp((-2i*pi*f)*n));
end
angle(X)
rose(angle(X))
% k




