clc;clear all;
format short
% global L1 
% global L2;
% global L3;
% global q1;
% global q2;
% global q3;
% global qh;

L1 = 13.5; L2=15.5;
x=10;
y=10;
a3=L2;
d1=L1;
PHIH=pi/4;
s2=sqrt((x^2+y^2)/(a3^2));
c2=1-sqrt((1-s2^2));
q2=atan2(s2,c2);
q1=atan2(y,x)
q3=(PHIH-q1-q2);



% syms q1 q2 q3 L1 L2 L3;
q=q1;
d=d1;
a=0;
alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;
sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;
sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];

q=q2;
d=0;
a=0;
alpha=-(pi/2); %fori=2;
T12=[cos(q) -sin(q) 0 a;
sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;
sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;
0 0 0 1];

q=q3;
d=0;
a=a3;
alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;
sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;
sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;
0 0 0 1];

T02=T01*T12;
T03=T01*T12*T23;



axis([-3 3 -3 3 -3 3]);

Ax1 = [T01(1,4),T02(1,4)];
Ay1 = [T01(2,4),T02(2,4)];
Ax2 = [T02(1,4),T03(1,4)];
Ay2 = [T02(2,4),T03(2,4)];
Ax3 = [-.1,.1];
Ay3= [0,0];
p1  = line(Ax1,Ay1,'LineWidth',[3],'Color','k');
p2  = line(Ax2,Ay2,'LineWidth',[3],'Color','M');
p3  = line(Ax3,Ay3,'LineWidth',[3],'Color','R');
%p4  = line(Ax4,Ay4,'LineWidth',[12],'Color','B');

drawnow
%   p4  = line(Ax4,Ay4,'EraseMode','xor','LineWidth',[1],'Color','k');
%   set(p1,'X', Ax1, 'Y',Ay1)
%   set(p2,'X', Ax2, 'Y',Ay2)
%   set(p3,'X', Ax3, 'Y',Ay3)
%   set(p4,'X', Ax4, 'Y',Ay4)
q1o=q1;q2o=q2;q3o=q3;
pause()

n=1
for t=0:.01:3
%       q1=(pi/3)*t;
%       q2=(pi/3)*t;
%       q3=(pi)/3*t;

x= 1.5 + 0.3*cos(2*pi*t) -.2*t;
y= 0.3*sin(2*pi*t) -.2*t;
PHIH=pi/4;
s2=sqrt((x^2+y^2)/(a3^2));
c2=1-sqrt((1-s2^2));
q2=atan2(s2,c2);
q1=atan2(y,x)
q3=(PHIH-q1-q2);

c(n,1)=x
c(n,2)=y
q=q1;
d=d1;
a=0;
alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;
sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;
sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];

q=q2;
d=0;
a=0;
alpha=-(pi/2); %fori=2;
T12=[cos(q) -sin(q) 0 a;
sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;
sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;
0 0 0 1];

q=q3;
d=0;
a=a3;
alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;
sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;
sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;
0 0 0 1];

T02=T01*T12;
T03=T01*T12*T23;

Ax1 = [T01(1,4),T02(1,4)];
Ay1 = [T01(2,4),T02(2,4)];
Ax2 = [T02(1,4),T03(1,4)];
Ay2 = [T02(2,4),T03(2,4)];
Ax4 = [-.1,.1];
Ay4= [0,0];
%   p1  = line(Ax1,Ay1,'LineWidth',[3],'Color','k');
%   p2  = line(Ax2,Ay2,'LineWidth',[3],'Color','M');
%   p3  = line(Ax3,Ay3,'LineWidth',[3],'Color','R');
set(p1,'X', Ax1, 'Y',Ay1)
set(p2,'X', Ax2, 'Y',Ay2)
set(p3,'X', Ax3, 'Y',Ay3)
drawnow
pause(.01)
n=n+1
end
hold on
plot(c(:,1),c(:,2))
