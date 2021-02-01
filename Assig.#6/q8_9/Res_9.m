clear all;
A = [-20 -100; 25 -62.5];
B = [100; 62.5];
C = [0 1];
D = [0];
sys = ss(A,B,C,D);

t = 0:0.0001:1.5;
e_in = 0.5*sin(10*t);
x_0 = [0; 0.25];
lsim(sys,e_in,t,x_0)