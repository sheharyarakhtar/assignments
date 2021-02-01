clc;clear all;
close all
syms t
M=[2 0;0 8];
K=[10 -1;-1 10];
x0=[1;0];
xdot0=[0;0]
Ms=sqrt(M);
Kt=inv(Ms)*K*inv(Ms);
[vec val]=eig(Kt);
w1=val(1,1);
w2=val(2,2);
w1=sqrt(w1)
w2=sqrt(w2)
v1=vec(:,1);
v2=vec(:,2);
P=[v1 v2]
S=inv(Ms)*P
invS=inv(S);
%initial conditions
r0=invS*x0
rdot0=invS*xdot0;
r1mag=sqrt(r0(1)^2+(rdot0(1)^2/w1));
r2mag=sqrt(r0(2)^2+(rdot0(2)^2/w1));
r1sin=w1*t+atan(w1*r0(1)/rdot0(1))
r2sin=w2*t+atan(w2*r0(2)/rdot0(2))

R=[r1mag*sin(r1sin);
     r2mag*sin(r2sin)]

 x(:,1)=S*R(:,1) %x equations calculated in terms of t
x=vpa(x)

ezplot(x(1),[0 2*pi])
figure()
ezplot(x(2),[0 2*pi])