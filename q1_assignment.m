clear all;
clc;
m=1;
k=1;
M=[m 0;0 m];
K=[2*k -1*k;-1*k 2*k];
Ms=sqrt(M);
Kt=inv(Ms)*K*inv(Ms);
[vec val]=eig(Kt);	%lambda stored in val and vector stored in vec
w1=sqrt(val(1,1))	%natural frequency 1 value
w2=sqrt(val(2,2))	%natural frequency 2 value
v1=vec(:,1);		%V1 is eigen vector for lambda1
v2=vec(:,2);		%V2 is eigenvector for lambda2
A=-w1^2*M+K;		%formula for finding mode
a=-A(1,2)/A(1,1);	%solving eq
mode1=[a 1]
B=-w2^2*M+K;
b=-B(1,2)/B(1,1);	%solving eq
mode2=[b 1]