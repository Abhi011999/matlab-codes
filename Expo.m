% Generation of Continuos and Discrete Exponential Signals
clc;

t = 0:0.01:10;
a = 0.8;
y = 8*exp(-a*t);

subplot(4,1,1);
plot(t,y);

xlabel('Time');
ylabel('Value');
title('Continuos Decaying Exponential Wave');

t = 0:0.2:10;
a = 0.8;
y = 8*exp(-a*t);

subplot(4,1,2);
stem(t,y);

xlabel('n');
ylabel('Value');
title('Discrete Decaying Exponential Wave');

t = 0:0.01:10;
a = 0.8;
y = 8*exp(a*t);

subplot(4,1,3);
plot(t,y);

xlabel('Time');
ylabel('Value');
title('Continuos Rising Exponential Wave');

t = 0:0.2:10;
a = 0.8;
y = 8*exp(-a*t);

subplot(4,1,4);
plot(t,y);

xlabel('n');
ylabel('Value');
title('Continuos Rising Exponential Wave');