%Baliguat, Dennis Ivan C.
x = [1 3 0 2 -1];
h = [  1 3 -2  ];
len = length(x) + length(h) - 1;
start_x = -2;
start_h = -1;
starting_point = start_x + start_h;
range = [starting_point:3];


%Graphical and Direct Convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
% plot results
figure;
subplot(3,1,1); stem(x, '-b^'); xlabel('n');
ylabel('x[n]'); grid on;
subplot(3,1,2); stem(h, '-ms');
xlabel('n'); ylabel('h[n]'); grid on;
subplot(3,1,3); stem(Y, '-ro');
ylabel('Y[n]'); xlabel('n'); grid on;
title('Convolution of Two Signals without conv function');


%Convolution Sum and Convolution Array

%Multiplying
z = [];
y_stored = zeros(length(range),1);
for i=1:length(x)
    g = h.*x(i);
    z = [z;g];
end

%Adding
[r c] = size(z)
k = r + c;
t = 2;
y = [];
cd = 0;
while (t <= k)
    for i = 1:r
        for j = 1:c
                if ((i + j) == t)
                    cd = cd + z(i,j);
                end
        end
    end
    t = t + 1;
    y = [y cd];
    cd = 0;
end

y


%Balguat, Dennis Ivan
%Matrix By Vector
x_matrix = [1 0 0;
            3 1 0;
            0 3 1;
            2 0 3;
            -1 2 0;
            0 -1 2;
            0 0 -1];
 x_h = x_matrix .* h;
 y_stored2 = [];
for i = 1:length(x_h)
       y_stored2(i) = sum(x_h(i,:));
end





