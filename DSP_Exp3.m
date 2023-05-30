% Digital Signal Processing 
% Experiment no. 3
% date : 3-2 23
% Author of the code : Aryan J
% Title : Obtain Frequency domain epresentation of periodic signals using
% Fourier series

close all;
clear;
clc;

x =  input('Enter the Sequence: ');
N = length(x);
disp(x);
subplot (3,2,1);
stem(x);
xlabel('n values');
ylabel('Amplitude');
title('Input value');
y = zeros ( 1,N);
for k = 0:N-1
    for n= 0:N-1
        y(n+1)= y(n+1) + ((1/N)*(x(k+1)*exp((2*1i*pi*k*n)/N)));
    end
end 
disp('y=');
disp(y);
stem(abs(y));
subplot(2,1,1);
stem(abs(y));
title("Magnitude");
subplot(2,1,2);
stem(angle(y));
title("Angle");

% 4 point sequence
x = input('Enter the Sequence:');
N = length(x);
disp(x);
G = [1, 1, 1, 1; 1 ,-1i, -1, 1i;1, -1, 1 ,-1; 1, 1i ,-1, -1i];
k = G*x';
disp(k);
subplot(2,1,1);
stem(abs(k));
title("Magnitude");
subplot(2,1,2);
stem(angle(k));
title("Angle");
axis([-4 4 -12 12]);
