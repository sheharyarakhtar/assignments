M = [2 0;0 8];
K = [10 -1;-1 10];
L = chol(M)^-1;
Kbar = L*K*L;
[P,lam] = eig(Kbar);
w = sqrt(diag(lam));
S = L*P;
inv_S = inv(S);
x0 = [1 0]';
xd0 = [0 0]';
t = 0:0.01:10;
r0 = inv_S*x0;
rd0 = inv_S*xd0;
r1 = r0(1)*sin(w(1).*t+pi/2);
r2 = r0(2)*sin(w(2).*t+pi/2);
r = [r1;r2];
x = mtimes(S,r);
plot(t,x(1,:),t,x(2,:))