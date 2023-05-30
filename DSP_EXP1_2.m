% Digital Signal Processing 
% Experiment no. 1(2)
% date : 20-1 23
% Author of the code : Aryan J
% Title : Construct Signals in Digital Domain 

clear;
close all;
clc;

%% Continuous Time Domain Signals 

figure(1);
t = -4 :0.01:4;
a1 = 1.*(t<=-1 & t>-2);
a2 = (t<=0 & t>-1).*(t+2);
a3 = (t<=1 & t>0).*(-t+2);
a4 = 1*(t<=2 & t>1);
y =  a1 + a2+ a3+ a4;clear
plot(t,y);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([-3 3 -3 3]);
title('Question 1');

figure(2);
t1 = -4 :0.01:4;
a5 = -2.*(t1>=-2 & t1<=-1);
a6 = (t1<=0 & t1>=-1).*(t1+2);
a7 = (t1<=1 & t1>0).*(-t1+2);
a8 = 1*(t1<=2 & t1>1);
y1 =  a5 + a6+ a7+ a8;
plot(t1,y1);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([-3 3 -3 3]);
title('Question2');

% Input from the User 

figure(3);
x = input('Specify Positive limit of the Time ( Horizontal) axis for continuous Time domain Q.1');
v = input('Specify Negative limit of the Time ( Horizontal) axis for continuous Time domain Q.1');
x3 = input('Specify Positive limit of the Amplitude ( Vertical) axis for continuous Time domain Q.1');
v3 = input('Specify Negative limit of the Amplitude ( Vertical) axis for continuous Time domain Q.1');
t = v:0.01:x;
a1 = 1.*(t<=-1 & t>-2);
a2 = (t<=0 & t>-1).*(t+2);
a3 = (t<=1 & t>0).*(-t+2);
a4 = 1*(t<=2 & t>1);
y =  a1 + a2+ a3+ a4;
plot(t,y);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([v x v3 x3]);
title('Question 1');

figure(4);
x1 = input('Specify Positive limit of the Time ( Horizontal) axis for continuous Time domain Q.2');
v1 = input('Specify Negative limit of the Time ( Horizontal) axis for continuous Time domain Q.2');
x2 = input('Specify Positive limit of the Amplitude ( Vertical) axis for continuous Time domain Q,2');
v2 = input('Specify Negative limit of the Amplitude ( Vertical) axis for continuous Time domain Q.2');
t1 = v1 :0.01:x1;
a5 = -2.*(t1>=-2 & t1<=-1);
a6 = (t1<=0 & t1>=-1).*(t1+2);
a7 = (t1<=1 & t1>0).*(-t1+2);
a8 = 1*(t1<=2 & t1>1);
y1 =  a5 + a6+ a7+ a8;
plot(t1,y1);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([v1 x1 v2 x2]);
title('Question2');


%% Discrete Time Domain Signals 

figure(5);
n = -4 :0.5:4;
a1 = 1.*(n<=-1 & n>=-2);
a2 = (n<=0 & n>-1).*(n+2);
a3 = (n<=1 & n>0).*(-n+2);
a4 = 1*(n<=2 & n>1);
y =  a1 + a2+ a3+ a4;
stem(n,y);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([-3 3 -3 3]);
title('Question 1');

figure(6);
n1 = -4 :0.5:4;
a5 = -2.*(n1>=-2 & n1<-1);
a6 = (n1<=0 & n1>=-1).*(n1+2);
a7 = (n1<=1 & n1>0).*(-n1+2);
a8 = 1*(n1<=2 & n1>1);
y1 =  a5 + a6+ a7+ a8;
stem(n1,y1);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([-3 3 -3 3]);
title('Question2');

% Input from the User 

figure(7);
x = input('Specify Positive limit of the Time ( Horizontal) axis for Discrete Time Domain Q.1');
v = input('Specify Negative limit of the Time ( Horizontal) axis for Discrete Time Domain Q.1');
x3 = input('Specify Positive limit of the Amplitude ( Vertical) axis for Discrete Time Domain Q.1');
v3 = input('Specify Negative limit of the Amplitude ( Vertical) axis for Discrete Time Domain Q.1');
n = v:0.5:x;
a1 = 1.*(n<=-1 & n>=-2);
a2 = (n<=0 & n>-1).*(n+2);
a3 = (n<=1 & n>0).*(-n+2);
a4 = 1*(n<=2 & n>1);
y =  a1 + a2+ a3+ a4;
stem(n,y);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([v x v3 x3]);
title('Question 1');

figure(8);
x1 = input('Specify Positive limit of the Time ( Horizontal) axis for Discrete Time Domain Q.2');
v1 = input('Specify Negative limit of the Time ( Horizontal) axis for Discrete Time Domain Q.2');
x2 = input('Specify Positive limit of the Amplitude ( Vertical) axis for Discrete Time Domain Q,2');
v2 = input('Specify Negative limit of the Amplitude ( Vertical) axis for Discrete Time Domain Q.2');
n1 = v1 :0.5:x1;
a5 = -2.*(n1>=-2 & n1<-1);
a6 = (n1<=0 & n1>=-1).*(n1+2);
a7 = (n1<=1 & n1>0).*(-n1+2);
a8 = 1*(n1<=2 & n1>1);
y1 =  a5 + a6+ a7+ a8;
stem(n1,y1);
grid on;
xlabel('Time Axis');
ylabel('Amplitude');
axis([v1 x1 v2 x2]);
title('Question2');





