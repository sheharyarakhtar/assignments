clc;clear all;
format short
% global L1 
% global L2;
% global L3;
% global q1;
% global q2;
% global q3;
% global qh;

L1 = 13.5; L2=15.5; L3=13.5;

x=5;
y=5;
z=5;

d1=L1;
a3=L2;
a4=L3;
PHIH=pi;
s2=sqrt((x^2+y^2)/(a3^2));

c2=1-sqrt((1-s2^2));

q2=atan2(s2,c2);

q1=atan2(y,x);

q3=(PHIH-q1-q2);

T01=[cos(q1) -sin(q1) 0 0;
sin(q1) cos(q1) 0 0;
0 0 1 d1;
0 0 0 1];

T12=[sin(q2) cos(q2) 0 0;
0 0 1 0;
cos(s2) -sin(q2) 0 0;
0 0 0 1];

T23=[cos(q3) -sin(q3) 0 a3;
sin(q3) cos(q3) 0 0;
0 0 1 0;
0 0 0 1];

T34= [1 0 0 a4;
0 1 0 0; 
0 0 1 0;
0 0 0 1];

T02=T01*T12;
T03=T01*T12*T23;
T04=T01*T12*T23*T34;

xlim([0, 45]);
ylim([0, 45]);
zlim([0, 45]);

Ax1=[T01(1,4),T02(1,4)];
Ay1=[T01(2,4),T02(2,4)];
Az1=[T01(3,4),T02(3,4)];
Ax2=[T02(1,4),T03(1,4)];
Ay2=[T02(2,4),T03(2,4)];
Az2=[T02(3,4),T03(3,4)];
Ax3=[T03(1,4),T04(1,4)];
Ay3=[T03(2,4),T04(2,4)];
Az3=[T03(3,4),T04(3,4)];
Ax4=[-.1,.1];
Ay4=[-.1,.1];
Az4=[-.1,.1];

p1=line(Ax1,Ay1,Az1,'LineWidth',[3],'Color','Y');
p2=line(Ax2,Ay2,Az2,'LineWidth',[3],'Color','k');
p3=line(Ax3,Ay3,Az3,'LineWidth',[3],'Color','R');
p4=line(Ax4,Ay4,Az4,'LineWidth',[12],'Color','B');

drawnow
n=1;
r=2
for t=0:0.001:1

phi=2*t*pi;
x=5+r*cos(phi);
y=5+r*sin(phi);
z=5;

d1=L1;
a3=L2;
a4=L3;
PHIH=pi;
s2=sqrt((x^2+y^2)/(a3^2));
c2=1-sqrt((1-s2^2));
q2=atan2(s2,c2);
q1=atan2(y,x);
q3=(PHIH-q1-q2);

T01=[cos(q1) -sin(q1) 0 0;
sin(q1) cos(q1) 0 0;
0 0 1 d1;
0 0 0 1];

T12=[sin(q2) cos(q2) 0 0;
0 0 1 0;
cos(s2) -sin(q2) 0 0;
0 0 0 1];

T23=[cos(q3) -sin(q3) 0 a3;
sin(q3) cos(q3) 0 0;
0 0 1 0;
0 0 0 1];

T34= [1 0 0 a4;
0 1 0 0; 
0 0 1 0;
0 0 0 1];

T02=T01*T12;
T03=T01*T12*T23;
T04=T01*T12*T23*T34;

xlim([-10, 45]);
ylim([-10, 45]);
zlim([-10, 45]);

Ax1=[T01(1,4),T02(1,4)];
Ay1=[T01(2,4),T02(2,4)];
Az1=[0,T02(3,4)];
Ax2=[T02(1,4),T03(1,4)];
Ay2=[T02(2,4),T03(2,4)];
Az2=[T02(3,4),T03(3,4)];
Ax3=[T03(1,4),T04(1,4)];
Ay3=[T03(2,4),T04(2,4)];
Az3=[T03(3,4),T04(3,4)];
Ax4=[-.1,.1];
Ay4=[-.1,.1];
Az4=[-.1,.1];

%p1=line(Ax1,Ay1,Az1,'LineWidth',[3],'Color','Y');
%p2=line(Ax2,Ay2,Az2,'LineWidth',[3],'Color','k');
%p3=line(Ax3,Ay3,Az3,'LineWidth',[3],'Color','R');
%p4=line(Ax4,Ay4,Az4,'LineWidth',[12],'Color','B');

set(p1,'X',Ax1,'Y',Ay1,'Z',Az1);
set(p2,'X',Ax2,'Y',Ay2,'Z',Az2);
set(p3,'X',Ax3,'Y',Ay3,'Z',Az3);
set(p4,'X',Ax4,'Y',Ay4,'Z',Az4);

o1(n,1)=Ax3(2);
o2(n,2)=Ay3(2);
o3(n,3)=Az3(2);
drawnow
pause(0.001)
n=n+1;
end
hold on;
plot3(o1(:,1),o2(:,2),o3(:,3))