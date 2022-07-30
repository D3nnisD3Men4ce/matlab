% %Baliguat, Dennis Ivan C.
% % ?(?) = [???(0.5??) + ? ???(0.5??)][?(?) ? ?(? ? 51)]. Comment on the magnitude
% % plot.
% 
% clear
% clc
% f = 1/2*pi;
% n = 0:20;
% k = -400:400;
% w = (pi/100)*k;
% x = exp((-0.5i*pi*f)*n)*(1-(1-51));
% X = x * (exp(-1j*pi/100)) .^ (n'*k);
% magX = abs(X);
% angX = angle(X);
% XI = imag(X);
% XR = real(X);
% subplot(4,1,1); plot(w/pi,magX); xlabel('frequency in units of pi'); ylabel('|X|'); title('Magnitude');
% subplot(4,1,2); plot(w/pi,angX/pi); xlabel('frequency in units of pi'); ylabel('radians/pi'); title('Phase');
% subplot(4,1,3); plot(w/pi,XI); xlabel('frequency in units of pi'); ylabel('Im(X)'); title('Imaginary');
% subplot(4,1,4); plot(w/pi,XR); xlabel('frequency in units of pi'); ylabel('Re(X)'); title('Real');
% 



%Baliguat, Dennis Ivan C.
% ?(?) = r ?(?) = 2 (0.5^)3 ?(? + 2)
% plot.

clear
clc
f = 1/2*pi;
n = 0:20;
k = -400:400;
w = (pi/100)*k;
x = (2*(0.5)^3)*(n+2);
X = x * (exp(-1j*pi/100)) .^ (n'*k);
magX = abs(X);
angX = angle(X);
XI = imag(X);
XR = real(X);
subplot(4,1,1); plot(w/pi,magX); xlabel('frequency in units of pi'); ylabel('|X|'); title('Magnitude');
subplot(4,1,2); plot(w/pi,angX/pi); xlabel('frequency in units of pi'); ylabel('radians/pi'); title('Phase');
subplot(4,1,3); plot(w/pi,XI); xlabel('frequency in units of pi'); ylabel('Im(X)'); title('Imaginary');
subplot(4,1,4); plot(w/pi,XR); xlabel('frequency in units of pi'); ylabel('Re(X)'); title('Real');












