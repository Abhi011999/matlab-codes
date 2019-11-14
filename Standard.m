% Generation of Standard Signals
clc;

n = 80;
t = 0:1:n-1;
y = ones(1,n);

subplot(5,1,1);
plot(t,y);

xlabel('Time');
ylabel('Value');
title('Continuos Unit Step Signal');

n = 80;
t = 0:1:n-1;
y = ones(1,n);

subplot(5,1,2);
stem(t,y);

xlabel('n');
ylabel('Value');
title('Discrete Unit Step Signal');

n = 80;

subplot(5,1,3);
plot(t,t);

xlabel('Time');
ylabel('Value');
title('Continuos Unit Ramp Signal');

n = 80;

subplot(5,1,4);
plot(t,t);

xlabel('n');
ylabel('Value');
title('Discrete Unit Ramp Signal');

t = -2:1:3;
y = [zeros(1,2) , ones(1,1) , zeros(1,3)];

subplot(5,1,5);
stem(t,y);

xlabel('Time');
ylabel('Value');
title('Unit Impulse Signal');