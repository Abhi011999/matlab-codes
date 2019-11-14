% Operations Performed on CT Signals

clc;

t = 0:0.001:6;
x1 = sin(2*pi*3*t);
x2 = 2*sin(2*pi*4*t);

subplot(2,2,1);
plot(t,x1);

xlabel('Time');
ylabel('Amplitude');
title('Input Signal x1(t)');

subplot(2,2,2);
plot(t,x2);

xlabel('Time');
ylabel('Amplitude');
title('Input Signal x2(t)');

% Addition Of Signals

y1 = x1+x2;

subplot(2,2,3);
plot(t,y1);

xlabel('Time');
ylabel('Amplitude');
title('Addition of Signals');

% Multiplication Of Signals

y2 = x1.*x2;

subplot(2,2,4);
plot(t,y2);

xlabel('Time');
ylabel('Amplitude');
title('Multiplication of Signals');

% Amplitude Scaling

a = 5;
y3 = a.*x2;

figure(2);
subplot(2,1,1);
plot(t,y3);

xlabel('Time');
ylabel('Amplitude');
title('Scaling of Signals');

% Folding Of Signals

h = length(x1);
nx = 0:h-1;
ny = -(h-1);
nf = ny:0;

subplot(2,1,2);
plot(nx,x1);

xlabel('t');
ylabel('Amplitude');
title('Folding of Signals');

% Time Shifting

y4=fliplr(x1);

figure(3);
subplot(2,2,[1,2]);
plot(nf,y4);
grid on;

xlabel('Time');
ylabel('Amplitude');
title('Time Shifting of Signals - Original Signal');

subplot(2,2,3);
plot(t+2,x1);
grid on;

xlabel('Time');
ylabel('Amplitude');
title('Delayed Signal');

subplot(2,2,4);
plot(t-3,x1);
grid on;

xlabel('Time');
ylabel('Amplitude');
title('Advanced Signal');

% Operation Performed On DT Signals

clc;
x1 = [-3,1,2,4,1,2,-1,0];
x2 = [3,2,4,1,-1,0,2,4];

figure(4);
subplot(2,2,1);
stem(x2);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Input signal x1(n)');

subplot(2,2,2);
stem(x2);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Input signal x2(n)');

y1 = x1+x2;

subplot(2,2,[3,4]);
stem(y1);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Addition of Signals');

% Scaling Of Signals

a = 4;
y3 = 4.*x2;

figure(5);
subplot(2,2,1);
stem(y3);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Amplitude Scaled Signals');

% Folding Of Signals

h = length(x2);
nx = 0:h-1;
ny = -(h-1);
nf = ny:0;

subplot(2,2,2);
stem(nx,x2);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Input Sequence x2(n)');

y4 = fliplr(x2);

subplot(2,2,[3,4]);
stem(nf,y4);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Folded Region of x2(n)');

% Time Shifitng

nx = -3:1:4;

figure(6);
subplot(2,2,[1,2]);
stem(nx,x2);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Time Shifting of Signals - Original Signal');

ny = -1:1:6;

subplot(2,2,3);
stem(ny,x1);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Delayed Signal');

nz = -6:1:1;

subplot(2,2,4);
stem(nz,x1);
grid on;

xlabel('n');
ylabel('Amplitude');
title('Advanced Signal');