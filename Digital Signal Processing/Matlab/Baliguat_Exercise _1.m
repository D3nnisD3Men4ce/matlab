%Baliguat, Dennis Ivan C.
f = 4;
t = 0:0.4:10;
x = sin(2*pi*f*t);
subplot(2,1,1)
plot(t,x)
title("Continuous Time Signal")
subplot(2,1,2)
stem(t,x)
title("Discrete Time Signal")
