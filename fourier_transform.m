% Study Of Fourier Transform and Inverse Fourier Transform

clc;

fs = 5000;
N = 32;
t = (0:N-1)*(1/fs);
x = 2*sin(2*pi*150*t);

subplot(4,1,1);
plot(t,x);
axis = [-2 2 -1 1];
grid on;

xlabel('t');
ylabel('Amplitude');
title('Input Signal x(t)');

Xw = fft(x);
k = 0:N-1;
Xmag = abs(Xw);

subplot(4,1,2)
plot(k,Xmag);
grid on;

xlabel('k');
ylabel('Magnitude Xmag');
title('Magnitude plot');
disp('Xmag');
disp(Xmag);

Xphase = angle(Xw);
subplot(4,1,3);
plot(k,Xphase);
grid on;

xlabel('k');
ylabel('Phase Xphase');
title('Phase Plot');
disp('Xphase');
disp(Xphase);

% Compute Inverse

x = ifft(Xw);
subplot(4,1,4);
plot(x);
grid on;

xlabel('k');
ylabel('Phase Xphase');
title('Inverse Phase Plot');
disp('Xw');
disp(Xw);