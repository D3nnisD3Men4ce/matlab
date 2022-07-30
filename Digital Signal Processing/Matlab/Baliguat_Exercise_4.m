%Baliguat, Dennis Ivan C.
syms t
T = 2*pi; %Period
w0 = 2*pi/T; %Frequency = 1

syms x  

sum=0;  
y=exp(-1i*k*w0*x);   %function you want 
a0 = 0.5;

for k=1:15
        %finding the coefficients 
    
    an = -1/(2*pi*1i*k) * (exp(-1i*k*(pi/2))-exp(-1i*k*-(pi/2)));
    sum=sum+(an*cos((k*x*pi)/(T/2)));  
end 
fplot(x,(a0 + sum),[-3*pi,3*pi]);   

