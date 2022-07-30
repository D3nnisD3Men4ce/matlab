%Baliguat, Dennis Ivan C.
clear
clc
[Y, FS] = audioread('Recording (16).wav');
Y_final = Y(17409:82944);
sound(Y_final, FS);
Y_length = length(Y_final)
matlab_fft = fft(Y_final);

twiddle_factor_length = 1:log2(Y_length);


w16 = cos((2*pi.*twiddle_factor_length)/Y_length) - j*sin((2*pi.*twiddle_factor_length)/Y_length)

all = 65536*[1./2.^twiddle_factor_length]'

aw = dit_fft_radix_2(Y_final);

k = 0 : Y_length-1;
w = (pi/Y_length)*k;
subplot(6,1,1); plot(Y); title('Audio Recording (Original)');
subplot(6,1,2); plot(Y_final); title('Audio Recording (Spliced)');
subplot(6,1,3); plot(w/pi, abs(matlab_fft)); xlabel('Frequency in units of pi'); ylabel('|X|'); title('Matlab FFT Magnitude');
subplot(6,1,4); plot(w/pi, angle(matlab_fft)/pi); xlabel('Frequency in units of pi'); ylabel('radians/pi'); title('Matlab FFT Phase');
subplot(6,1,5); plot(w/pi, abs(aw)/pi); xlabel('Frequency in units of pi'); ylabel('radians/pi'); title('DIT FFT Radix 2 Magnitude');
subplot(6,1,6); plot(w/pi, angle(aw)/pi); xlabel('Frequency in units of pi'); ylabel('radians/pi'); title('DIT FFT Radix 2 Phase');


function [y] = dit_fft_radix_2(x)
N=length(x);
twiddle_factor_length = log2(length(x));
twiddle_factor_length
Half=1;
x_binary = de2bi(1:length(x));
x_binary_reversed = bitrevorder(x_binary);
x_reversed = bi2de(x_binary_reversed);
x_reversed(1:20);
x = x(x_reversed);
for stage = 1 : twiddle_factor_length
    for index = 0 : (2^stage):(N-1)
        for n = 0 : (Half-1)
            pos = n + index + 1;
            pow = (2 ^(twiddle_factor_length - stage))*n;
            w16 = exp((-1i)*(2*pi) * pow/N);
            a = x(pos) + x(pos+Half) .* w16;
            b = x(pos) - x(pos+Half) .* w16;
            x(pos) = a;
            x(pos + Half) = b;
        end
    end
Half=2*Half;
end
y=x;
end

