% Laplace Transform

clc

syms t s
f = 1.25+3.5*t*exp(-2*t)+1.25*exp(-2*t);
Xs = laplace(f,t,s);
simplify(Xs);
disp('laplace transform of the function 1.25+3.5*t*exp(-2*t)+1.25*exp(-2*t)');
disp(Xs);

% Inverse Laplace Transform

syms t s
Xs = 5/(4*(s + 2)) + 7/(2*(s + 2)^2) + 5/(4*s);
f = ilaplace(Xs);
simplify(f);
disp('inverse laplace transform of the function 5/(4*(s+ 2)) + 7/(2*(s + 2)^2) + 5/(4*s)');
disp(f);

% LAPLACE TRANSFORM OF DECAYING EXPONENTIAL FUNCTION

syms t s
f = exp(-2*t);
Xs = laplace(f,t,s);
simplify(Xs);
disp('laplace transform of the function exp(-2*t)');
disp(Xs);

% INVERSE LAPLACE TRANSFORM OF DECAYING EXPONENTIAL FUNCTION

syms t s
Xs = 1/(s+2);
f = ilaplace(Xs);
simplify(Xs);
disp('inverse laplace transform of the function 1/(s+2)');
disp(f);

% LAPLACE TRANSFORM OF SINE FUNCTION

syms t w a s
Xs1 = laplace(sin(w*t));
disp('laplace transform of the function sin(w*t)');
disp(Xs1);

% LAPLACE TRANSFORM OF COSINE FUNCTION

Xs2 = laplace(cos(w*t));
disp('laplace transform of the function cos(w*t)');
disp(Xs2);

% INVERSE LAPLACE TRANSFORM OF SINE FUNCTION

syms t w a s
Xs1 = ilaplace(w/(s^2 + w^2));
disp('inverse laplace transform of the function (w/(s^2+ w^2)');
disp(Xs1);

% INVERSE LAPLACE TRANSFORM OF COSINE FUNCTION

Xs2 = ilaplace(s/(s^2 + w^2));
disp('inverse laplace transform of the function (s/(s^2+ w^2)');
disp(Xs2);

% LAPLACE TRANSFORM OF UNIT IMPULSE SIGNAL

syms t t0 s
Xs1 = laplace(dirac(t));
disp('laplace transform of the function &(t)');
simplify(Xs1);
disp(Xs1);

% INVERSE LAPLACE TRANSFORM OF UNIT IMPULSE SIGNAL

Xs2 = ilaplace(Xs1);
disp('inverse laplace transform of the function 1/s');
disp(Xs2);

% TIME SHIFTING PROPERTY OF LAPLACE TRANSFORM FOR UNIT STEP SIGNAL

syms t s
Xs1 = laplace(heaviside(t - pi), t, s);
disp('laplace transform of the function u(t-pi)');
simplify(Xs1);
disp(Xs1);

% TIME SHIFTING PROPERTY OF INVERSE LAPLACE TRANSFORM FOR UNIT STEP SIGNAL

Xs2 = ilaplace(Xs1);
disp('inverse laplace transform of the function exp(-pi*s)/s');
disp(Xs2);

% LINEARITY PROPERTY OF LAPLACE TRANSFORM FOR EXPONENTIAL FUNCTION

syms t w a s
Xs1 = laplace(2*exp(-2*t) +4* exp(3*t));
disp('laplace transform of the function (2*exp(-2*t) +4*exp(3*t)');
disp(Xs1);

% LINEARITY PROPERTY OF INVERSE LAPLACE TRANSFORM FOR EXPONENTIAL FUNCTION

Xs2 = ilaplace (2/(s + 2) + 4/(s - 3));
disp('inverse laplace transform of the function 2/(s +2) + 4/(s - 3)');
disp(Xs2);