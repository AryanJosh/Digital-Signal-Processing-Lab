% Digital Siganl Processing lab 
% Experiment no. 5
% Date : 3-3-23
% Name : Aryan J. 
% Title : Plot pole zero plot& magnitrude plotof given transfer function

close all;
clear;
clc;

% task1 
% for Questions 1,2,3,4,7,8
h = input('Enter  a sequence :');
b = 1;                              % coefficient of the denominator
figure(1);
zplane(h,b);                        %  Z-plane zero-pole plot
figure(2);
freqz(h,b);                         % Frequency response of digital filter

% For Questions 5,6,9,10
num = input('Enter the numerator');
den = input('Enter the denominator');
sys = filt(num, den);
figure(3);
zplane(num,den);
figure(4);
freqz(num,den);


% %% task 2
% 
% For Questions 1,2,3,4,7,8
% x = input('Enter the input sequence:');
% n = length(x);
% Z = zeros(1,n);
% 
% if( mod(n,2) == 0)
%         disp('Given sequence is even');
%         if (x - fliplr(x)==0)
%         disp('This is a Low Pass Filter');
%         elseif(x + fliplr(x)==0)
%         disp('This is High Pass Filter');
%         else
%         disp('No comments')
%         end
% else 
%     disp('Given sequence is odd');
%     M = abs(x(0.5*(n+1)));
%     Z(0.5*(n+1)) = M;
% 
%         if (x + fliplr(x) == 2*Z)
%         disp('This is Band Pass Filter');
%         else
%         disp('No Comments');
%         end
% end

% For Questions 5,6,9,10

% I don't know How to do it 





