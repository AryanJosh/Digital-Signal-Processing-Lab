% Course : Digital signal Processing Lab
% Date : 13-01-2023
% Author of the code : Aryan J.
% Title : Experiment no. 1 : Construct signals in Digital Domain

close all;
clear;
clc;



% % UNIT Impule signal 
y=1;
figure(1);
plot(t,y);
grid on;
 
x4 = input(" upto what value n should vary?");
n = 0:0.5:x4;
y5=1;
figure(6);
stem (y5);
grid on;



% % cosine plot 
% y1 = cos(pi*t);
% figure(2);
% plot(t, y1);
% grid on;










% 
% % cosine plot 
% x5 = input(" upto what value n should vary?");
% n1 = 0:0.5:x5;
% y6 = cos(pi*n1);
% figure(7);
% stem( y6);
% grid on;
% 
% % Ramp signal 
figure(4);

subplot(2,1,1);
x1 = input("Upto what value t should vary?");
t1 = 0:0.1:x1;
y2 = t1;
plot(t1, y2);
grid on ;

subplot(2,1,2)
x6 = input("Upto what value n should vary?");
n2 = 0:0.5:x6;
y7 = n2;
stem( y7);
grid on ;

% parabola signal
figure(5);

subplot(2,1,1);
x2 = input("Upto what value t should vary?");
t2 = -x2:0.1:x2;
y3 = t2.*t2;
plot(t2, y3);
grid on ;

subplot(2,1,2);
x7 = input("Upto what value n should vary?");
n3 = -x7:0.5:x7;
y8 = n3.*n3;
stem( y8);
grid on ;

% Exponential signal 
figure(6);

subplot(2,1,1);
x3 = input("Upto what value t should vary?");
t3 = 0:0.1:x3;
y4 = exp(0.5*t3);
plot(t3, y4);
grid on ;

subplot(2,1,2);
x8 = input("Upto what value n should vary?");
n4 = 0:0.5:x8;
y9 = exp(0.5*n4);
stem(y9);
grid on ;
