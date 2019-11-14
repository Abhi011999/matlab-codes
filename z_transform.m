% Z - Transform
clc;
syms a n z w;

x = heaviside(n);
X = ztrans(x);
simplify(X);
disp('Z - Transform of Unit Step -');
disp(X);

x = heaviside(n-3);
X = ztrans(x);
simplify(X);
disp('Z - Transform of delayed Step sign -');
disp(X);

x = n;
X = ztrans(x);
disp('Z - Transform of a^n -');
disp(X);

x = 2^n;
X = ztrans(x);
disp('Z - Transform of 2^n -');
disp(X);

x = n*a^n;
X = ztrans(x);
disp('Z - Transform of n*a^n -');
disp(X);

x = exp(-2*n);
X = ztrans(x);
disp('Z - Transform of exp(-2*n) -');
disp(X);

x = (1+n*(0.4)^(n-1));
X = ztrans(x);
disp('Z - Transform of (1+n*(0.4)^(n-1)) -');
disp(X);

x = z/(z-1) + (25*z)/(5*z - 2)^2;
X = iztrans(x);
simplify(X);
pretty(X);
disp('Inverse Z - Transform of (1+n*(0.4)^(n-1)) -');
disp(X);

x = n*heaviside(n);
X = ztrans(x);
disp('Z - Transform of n -');
disp(X);

x = z/(z-1)^2;
X = iztrans(x);
disp('Inverse Z - Transform of n -');
disp(X);

x = sin(n*w);
X = ztrans(x);
disp('Z - Transform of sin(n*w) -');
disp(X);

x = (z*sin(w))/(z^2 - 2*cos(w)*z + 1);
X = ztrans(x);
disp('Inverse Z - Transform of sin(n*w) -');
disp(X);