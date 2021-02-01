clear all;
j1 = 0.3;
j2 = 0.3;
k = 6000;
b = 2;

A = [0 1 0 0;-k/j1 -b/j1 k/j2 0;0 0 0 1;k/j2 0 -k/j2 -b/j2];
B = [0;-1/j1;0;1/j2];
C = [-1 0 1 0];
D = [0];

sim Res_21

figure(1)
plot(t, rel_dis)
grid
xlabel("time,s")
ylabel("relative displacement, rad")

figure(2)
plot(t, rel_dis1)
grid
xlabel("time,s")
ylabel("relative displacement, rad")