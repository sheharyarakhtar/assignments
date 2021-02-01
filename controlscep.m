close all;
open('Output_plot_input_rudder_18degree.fig')
a=get(gca,'Children');
xdata=get(a,'Xdata');
ydata=get(a,'Ydata');
plot(xdata,ydata);

%wn=4.45
%z=0.22807
%b=wn^2/18=1.100

hold on;
num=[8.95891961];
den=[1 3.010101038 14.44987034];
sys=tf(num,den);
t=0:0.05:25;
u=18*ones(size(t));
u(1:23)=0;
lsim(sys,u,t)
