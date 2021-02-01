close all;
%open('Output_plot_input_rudder_18degree.fig')
%a=get(gca,'Children');
%xdata=get(a,'Xdata');
%ydata=get(a,'Ydata');
pkg load io
A= xlsread('datacep.xlsx');
xdata=A(:,1);
ydata=A(:,2);
plot(xdata,ydata);

wn=3.801
z=0.395
b=wn^2/18

hold on;
num=[b*11.003];
den=[1 2*z*wn wn^2];
sys=tf(num,den);
t=0:0.05:25;
u=18*ones(size(t));
u(1:23)=0;
lsim(sys,u,t)
