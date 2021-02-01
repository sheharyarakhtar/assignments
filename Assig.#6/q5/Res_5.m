clear all;
A = [0 1 ; -34 -2];
B = [0 ; 2.5];
C = [1 0];
D = [0];
sys = ss(A,B,C,D);
xo = [2 , -1.5];
t = 0:0.0001:5;
u = ones(size(t));
u = 0.6*u;
lsim(sys, u, t, xo)