clear all;
b = 0.06;
J = 0.5;

sim Res_1

figure(1)
plot(t, theta_dot)
grid
xlabel("time, s")
ylabel("theta_dot, rad/s")

figure(2)
plot(t, theta)
grid
xlabel("time, s")
ylabel("theta, rad")


figure()
plot(t, energy_lost)
grid
xlabel("time, s")
ylabel("energy loss, J")

