
% DIF 
clear all
close all
clc

% Experiment 4
%x(k)={10,-2+2i,-2,-2-2j}
x = input('Enter the input sequence');
fftAlgorithm(x)
function [Y] = fftAlgorithm(x)
    % Compute the fast Fourier transform of the signal x
    N = length(x);
    if N <= 1
        Y = x;
    else
        % Split the signal in two parts
        even = x(1:2:N);
        odd = x(2:2:N);
        % Compute the FFT of each part
        Y_even = fftAlgorithm(even);
        Y_odd = fftAlgorithm(odd);
        % Combine the parts
        for k = 0:(N/2 - 1)
            Y(k + 1) = Y_even(k + 1) + exp(-2*pi*1i*k/N)*Y_odd(k + 1);
            Y(k + (N/2 + 1)) = Y_even(k + 1) - exp(-2*pi*1i*k/N)*Y_odd(k + 1);
            disp('y=');
disp(Y);
stem(abs(Y));   
subplot(2,1,1);
stem(abs(Y));
subplot(2,1,2);
stem(angle(Y));
        end
    end
end

%DIT

clc;
clear all;
close all;
X=input('Enter the sequence : ');
N=input('Enter the Point    : ');
n=length(X);
x=[X zeros(1,N-n)];
M=log2(N);
for m=1:M
    d=2^(M-m+1);
    for l=1:d:(N-d+1)
        for k=0:(d/2)-1
            w=exp(-1i*2*pi*k/d);
            z1=x(l+k);
            z2=x(l+k+d/2);
            
            x(l+k)=z1+z2;
            x(l+k+d/2)=(z1-z2)*w;
        end
    end
end
x
y=bitrevorder(x);
disp(y)
subplot(3,1,1)
stem(abs(X));
title('Input Sequence');
subplot(3,1,2)
stem(abs(y));
title('Magnitude Response');
subplot(3,1,3)
stem(angle(y));
title('Phase Response');