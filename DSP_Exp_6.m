% Digital Siganl Processing lab 
% Experiment no. 6
% Date : 24-3-23
% Name : Aryan Joshi 
% Title :  

clear;
close all;
clc;

fc1=input('Enter Fc1');
fc2=input('Enter Fc2');
fs=input('Enter Fs');
M=input('no.of points');
wc1 = pi/6; 
alpha=(M-1)/2;
wc2=pi/3;
n=-alpha:alpha;

% for lpf filter
wc1=0;
wc=wc2;
h=sin(wc.*n)./(n*pi);
h(alpha+1)=wc/pi;

%% HPF Fiter
% wc=wc1;
% wc2=pi;
% h=(sin(n*pi)-sin(wc.*n))./(n*pi);
% h(alpha+1)=1-wc/pi;

%% BPF FILTER
% h=(sin(wc2.*n)-sin(wc1.*n))/(pi.*n);

% Windows
rect=ones(1,M);
hanning=0.5+0.5*cos((2*pi*n)/(M-1));
hamming=0.54+0.46*cos((2*pi*n)/(M-1));
blackman=0.42-0.51*cos((2*pi*n)/(M-1))+0.08*cos(4*pi*n/(M-1));

p=input('Enter 1 for rect or 2 for hanning or 3 for hamming or 4 for blackman'); 

% user selection
if(p==1)
    win=rect;
elseif (p==2)
    win=hanning;
elseif (p==3)
    win=hamming;
elseif (p==4)
    win=blackman;
end

% final output
hd=h.*win;
hd2=h.*win;
hd3=h.*win;

subplot(3,1,1);
stem(h);

% actual value 
title("h sequence")
subplot(3,1,2);
stem(win); 

% after windowing
title("Window function")
subplot(3,1,3);
stem(hd); 

% after windowing
title("Multiplication of h and wn sequence");

figure(2)
subplot(3,1,1);
stem(h);
% actual value 
title('h2 sequence')
subplot(3,1,2);
stem(win); 

% after windowing
title('Window function')
subplot(3,1,3);
stem(hd2); 

% after windowing
title('Multiplication of h2 and wn sequence');
figure(3)
subplot(3,1,1);
stem(h);

% actual value 
title("h3 sequence")
subplot(3,1,2);
stem(win); 

% after windowing
title("Window function")
subplot(3,1,3);
stem(hd3); 

% after windowing
title("Multiplication of h3 and wn sequence");