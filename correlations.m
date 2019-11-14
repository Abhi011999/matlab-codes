% Auto Correlation

clc;

nx = -2:1:4;
xn = [1,2,3,4];
rxx = xcorr(xn,xn);

subplot(1,2,1);
stem(nx,nx);
grid on;

xlabel('n');
ylabel('x(n)');
title('Input sequence x(n)');

subplot(1,2,2);
stem(rxx);
grid on;

xlabel('n');
ylabel('rxx(n)');
title('Auto Correlation Output');

% Cross Correlation

nx = -2:1:4;
xn = [1,2,3,4];
yn = [4,3,2,1];

rxy=xcorr(xn,yn);

figure(2);
subplot(2,2,1);
stem(xn);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Input sequence x(n)');
disp('Input sequence x(n)');
disp(xn);

subplot(2,2,2);
stem(yn);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Input sequence y(n)');
disp('Input sequence y(n)');
disp(yn);

subplot(2,2,[3,4]);
stem(rxy);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Cross Correlation Output');
disp('Cross Correlation Output');
disp(rxy);