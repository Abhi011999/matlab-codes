% Generation of CT & DT Signals

clc ;

x = 0:0.1:4*pi ;
y = 4*sin(x) ;

subplot(2,2,1) ;
plot(x,y) ;
xlabel('Time') ;
ylabel('Amplitude') ;
title('Continuos Sine Wave') ;

subplot(2,2,3) ;
stem(x,y) ;
xlabel('n') ;
ylabel('Amplitude') ;
title('Discrete Sine Wave') ;

y = 4*cos(x) ;

subplot(2,2,2) ;
plot(x,y) ;
xlabel('Time') ;
ylabel('Amplitude') ;
title('Continuos Cosine Wave') ;

subplot(2,2,4) ;
stem(x,y) ;
xlabel('n') ;
ylabel('Amplitude') ;
title('Discrete Cosine Wave') ;
