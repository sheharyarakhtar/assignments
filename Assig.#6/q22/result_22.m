clear all; close all; clc;
m1 = 11000;
m2 = 9500;
m3 = 9500;
k = 5.2*10^6;
b = 2.4*10^4;
br = 3*10^4;

A = [0 1 0 0 0 0;
    -k/m1 -(br+b)/m1 k/m1 b/m1 0 0;
    0 0 0 1 0 0;
    k/m2 b/m2 -2*k/m2 -2*b/m2 k/m2 b/m2;
    0 0 0 0 0 1;
    0 0 k/m3 b/m3 -k/m3 -(b+br)/m3];

B = [0;1/m1;0;0;0;0];

C = [0 1 0 0 0 0;
     1 0 -1 0 0 0];

D = [0;0];

sim quizq2a

figure(1)
plot(t, y1)
xlabel('time/ s')
ylabel('locomotive speed/ m/s')
grid

figure(2)
plot(t, y2)
xlabel('time/ s')
ylabel('relative displacement z1-z2/ m')
grid



