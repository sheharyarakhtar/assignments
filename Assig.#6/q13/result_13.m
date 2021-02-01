clear all;
m = 2;
k = 800;
b = 25;

sim Res_13

figure(1)
plot(t, x)
hold on;
plot(t, x1,"--")
grid
xlabel("time, s")
ylabel("Displacement, m")

figure(2)
plot(t, Ff)
hold on;
plot(t ,Ff1,"--")
grid
xlabel("time, s")
ylabel("Displacement, m")
