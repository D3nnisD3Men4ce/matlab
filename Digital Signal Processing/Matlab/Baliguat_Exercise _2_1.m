%Baliguat, Dennis Ivan
n = -10 : 1 : 10;
rand_elems = randi([-5, 14], 1, length(n));

figure('NumberTitle', 'off', 'Name', 'Baliguat');

%A
subplot(2, 1, 1);
stem(n, rand_elems);
title("Random discrete signal");
xlabel('n');
ylabel('Amplitude');


%B
y_shift = rand_elems .* (-1/3*n + 4);
subplot(2, 1, 2);
stem(n, y_shift);
title("y(n) = x(-1/3n + 4)");
xlabel('n');
ylabel('Amplitude');

