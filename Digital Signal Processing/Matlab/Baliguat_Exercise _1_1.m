%Baliguat, Dennis
x = -4:4;
%a
figure()
y = [x >= 0];
stem(x,y)
title('Unit Step Input')
%b
figure()
y2 = x.*[x >= 0];
stem(x,y2)
title('Unit Ramp Input')
%c
figure()
y3 = [x == 0];
stem(x,y3)
title('Unit Impulse Input')
%d
figure()
y4 = x.^2.*[x >= 0];
stem(x,y4)
title('Parabolic Input')


%e
figure()
y5 = 4*cos(0.1*pi*x*pi/3);
stem(x,y5)
title('Sinusoidal Input')



