% Convolution Of Signals

clc;

xn = [2,1,-1,4,2,-3,2];
hn = [2,2,3,1];
yn = conv(xn,hn);

subplot(3,1,1);
stem(xn);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Input sequence (xn)');
disp('Input sequence x(n)=');
disp(xn);

subplot(3,1,2);
stem(hn);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Impulse response (hn)');
disp('Impulse response h(n)=');
disp(hn);

subplot(3,1,3);
stem(yn);
grid on;

xlabel('n');ylabel('Amplitude');
title('Output of Linear Convolution (yn)');
disp('Linear Convolution Output');
disp(yn);