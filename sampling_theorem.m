% Sampling Theorem

% SAMPLING OF ORIGINAL SIGNAL
t = 0:0.0001:1;
fm = 25;
x = sin(2*pi*fm*t);
figure(1);
subplot(2,2,[3,4]);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Original Analog Signal');

% SAMPLING OF RECONSTRUCTED UNDER SAMPLED SIGNAL
fs = 1.25*fm;
n = 0:1/fs:1;
xn = sin(2*pi*fm*n);
subplot(2,2,1);
stem(n,xn);
xlabel('Time');
ylabel('Amplitude');
title('Under Sampled fs << 2fm Signal');

% SAMPLING FREQUENCY OF fs << 2fm SIGNAL
subplot(2,2,2);
plot(n,xn);
xlabel('Time');
ylabel('Amplitude');
title('Recontructed Undersampled fs << 2fm Signal');

% ANALOG SIGNAL SAMPLES AT NQUIST RATE
fs = 6*fm;
n = 0:1/fs:1;
xn = sin(2*pi*fm*n);
figure(2);
subplot(4,1,1);
stem(n,xn);
xlabel('Time');
ylabel('Amplitude');
title('Sampled At Nquist Rate fs = 2fm Signal');

% RECONSTRUCTED SIGNAL AT NQUIST RATE
subplot(4,1,2);
plot(n,xn);
xlabel('Time');
ylabel('Amplitude');
title('Reconstructed Nquist Rate fs = 2fm Signal');

% SAMPLING FREQUENCY OF fs >> 2fm SIGNAL
fs = 10*fm;
n = 0:1/fs:1;
xn = sin(2*pi*fm*n);
subplot(4,1,3);
stem(n,xn);
xlabel('Time');
ylabel('Amplitude');
title('Sampled fs >> 2fm Signal');

% RECONSTRUCTED SAMPLED fs >> 2fm SIGNAL
subplot(4,1,4);
plot(n,xn);
xlabel('Time');
ylabel('Amplitude');
title('Reconstructed Sampled fs >> 2fm Signal');