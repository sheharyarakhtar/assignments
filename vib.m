t=0:0.0001:2;
[row col] = size(t);
m=2;
k=4630;
c=10;
F1=20;
F2=10;
wn=sqrt(k/m);
z=(c/m)/(2*wn);
wd=wn*sqrt(1- z^2);

x1= (F1/(m*wd))*(exp(-z*wn*t)).*sin(wd*t);
hold on;
x2= (F1/(m*wd))*(exp(-z*wn*t)).*sin(wd*t) + (F2/(m*wd))*(exp(-z*wn*(t-0.2))).*sin(wd*(t-0.2));
plot(t,x1)
hold on
plot(t(1:2000),x1(1:2000),'-.')
plot(t(2000:col),x2(2000:col),'-.')

legend('without second strike','with second strike')