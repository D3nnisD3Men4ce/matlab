%Baliguat, Dennis Ivan C.
clear
clc
n1 = randi([1 10],100,1)';
Nn = 1:length(n1);
N = length(n1);
k = 0 : N-1;
w = (pi/100)*k;

k2 = 0:1000-1;
w2 = (pi/1000)*k2;


Xdft = ddfftt(n1,N);
xidft = iiddfftt(Xdft,N);

Xdft2 = fft([n1 zeros(1,1000)],1000)/1000;
xidft2 = ifft([Xdft2 zeros(1,1000)],1000)/1000;

imag(log(Xdft(1:5)))
angle(Xdft(1:5))

imag(log(Xdft2(1:5)))
angle(Xdft2(1:5))

subplot(6,1,1); plot(Nn, n1); xlabel('Frequency'); ylabel('Amplitude'); title('1 Plot Signal');
subplot(6,1,2); stem(w/pi, real(Xdft)); xlabel('Frequency in units of pi'); ylabel('Re(X)'); title('2 Real');
subplot(6,1,3); stem(w/pi, imag(Xdft)); xlabel('Frequency in units of pi'); ylabel('Im(X'); title('2 Imaginary');
subplot(6,1,4); stem(w/pi, abs(Xdft)); xlabel('Frequency in units of pi'); ylabel('|X|'); title('3 Magnitude');
subplot(6,1,5); stem(w/pi, angle(Xdft)/pi); xlabel('Frequency in units of pi'); ylabel('radians/pi'); title('3 Phase');
subplot(6,1,6); plot(Nn, xidft); xlabel('Freqency'); ylabel('Re(X)'); title('4 plot IDFT');

figure
subplot(6,1,1); plot(Nn, n1); xlabel('Frequency'); ylabel('Amplitude'); title('1 Plot Signal');
subplot(6,1,2); stem(w2/pi, real(Xdft2)); xlabel('Frequency in units of pi'); ylabel('Re(X)'); title('2 Real');
subplot(6,1,3); stem(w2/pi, imag(Xdft2)); xlabel('Frequency in units of pi'); ylabel('Im(X'); title('2 Imaginary');
subplot(6,1,4); stem(w2/pi, abs(Xdft2)); xlabel('Frequency in units of pi'); ylabel('|X|'); title('3 Magnitude');
subplot(6,1,5); stem(w2/pi, angle(Xdft2)/pi); xlabel('Frequency in units of pi'); ylabel('radians/pi'); title('3 Phase');
subplot(6,1,6); plot(Nn, xidft); xlabel('Freqency'); ylabel('Re(X)'); title('4 plot IDFT');

function [Xk] = ddfftt(xn,N)
    n = [0 : 1 : N-1];
    k = [0 : 1 : N-1];
    WN = exp(-1j*2*pi/N);
    nk = n'*k;
    WNnk = WN .^ nk;
    Xk = xn*WNnk;
end

function [xn] = iiddfftt(Xk, N)
    n = [0 : 1 : N-1];
    k = [0 : 1 : N-1];
    WN = exp(-1j*2*pi/N);
    nk = n'*k;
    WNnk = WN .^ (-nk);
    xn = (Xk * WNnk)/N;
end






