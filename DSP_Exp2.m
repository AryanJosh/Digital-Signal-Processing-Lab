% Digital Signal Processing 
% Experiment no. 2
% date : 20-1 23
% Author of the code : Aryan J
% Title : Perform linear and Circular convolution to obtain output

clear;
close all;
clc;

% Linear Convolution
x = [1,2,3,4];
h = [1, 2];
x_len = length(x);
h_len = length(h);
y_len = x_len + h_len - 1;
y = zeros(1,y_len);
for i = 1 :y_len
    for j = 1:x_len
        if (i-j+1)>=1 && (i-j+1)<=h_len
            y(i) = y(i) + x(j)*h(i-j+1);
        end
    end
end
disp(y);

% % % Circular Convolution 
% x = [1, 2, 3, 4];
% h = [1, 2, 1, 0];
% x_len = length(x);
% y = zeros(1, x_len);
% 
% for i = 1:x_len
%     for j = 1:x_len
%         y(i) = y(i) + x(j)*[(i-j+1+x_len) mod(x_len)+1];
%     end
% end
% disp(y);

% Linear Convolution by taking Input 

x = input('Enter the Sequence 1:');
off1 = input('Enter the offset:');
h = input('Enter the Sequence 2:');
off2 = input('Enter the offset:');
y = conv(x,h);
subplot(3,1,1);
stem(x);
ylabel('Amplitude');
xlabel('N');
title('Input Sequence x(n)');
grid on;
subplot(3,1,2);
stem(h);
ylabel('Amplitude');
xlabel('N');
title('Input Sequence h(n)');
grid on;
subplot(3,1,3);
stem(y);
ylabel('Amplitude');
xlabel('N');
title('Linear Convolution');
grid on;

% 
% % Circular Convolution by Taking Input 
% 
% x = input('Enter the Sequence 1:');
% h = input('Enter the Sequence 2:');
% N1 = length(x);
% N2 = length(h);
% N = max(N1,N2);
% N3 = N1-N2;
% if(N3>0)
%     h= [h,zeros(1,N3)];
% else
%     x = [x,zeros(1,-N3)];
% end
% for n=1:N
%     y(n) = 0;
%     for i=1:N
%         j= n-i+1;
%         if(j<=0)
%             j=N+j;
%         end
%     end
% end
% disp('The resultant is');
% subplot(2,1,1);
% stem(y);
% xlabel('N');
% ylabel('Amplitude');

% x = input("Enter the first sequence:");
% off1 = input("Enter the offset");
% h = input("Enter the second sequence :");
% off2 = input("Enter the offset");
% 
% l1 = length(x);
% l2 = length(h);
% 
% N = l1 + l2 - 1;
% 
% for n = 1:N
%     y(n) = 0;
%     for k = 1:l1
%         if ((n-k+1) >= 1 && (n-k+1)<=l2)
%             y(n) = y(n) + x(k)*h(n-k+1);
%             if (k == off1 && (n-k+1) == off2)
%                 off3 = n;
%             end
%         end
%     end
% end
% 
% t = 1-off3:N-off3;
% figure(1);
% stem(t, y);
% grid on;
% title("Linear Convolution");


