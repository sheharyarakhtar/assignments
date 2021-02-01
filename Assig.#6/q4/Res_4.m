clear all;
num = 1;
den = [2 5 200];
sys = tf(num,den);

%input
t = 0:0.0001:5;
f = zeros(size(t));
f(1:501) = 8;
lsim(sys,f,t);
axis([0 5 -0.02 0.02])