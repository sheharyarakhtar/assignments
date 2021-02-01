clear all;
m1 = 250;       
m2 = 30;        
k1 = 1.6e4;     
k2 = 1.6e5;     
b = 980;        

A = [ 0 1 0 0 ; -k1/m1 -b/m1 k1/m1 b/m1 ; 0 0 0 1 ; k1/m2 b/m2 (-k1-k2)/m2 -b/m2 ];
B = [ 0 ; 0 ; 0 ; k2/m2 ];
C = [ 1 0 -1 0 ; 0 1 0 -1 ];               
D = [ 0 ; 0 ];


sim Res_23

figure(1)
plot(t,y1)
grid
xlabel('Time, s')
ylabel('Relative displacement, z_1 - z_2, m')


figure(2)
plot(t,y2)
xlabel('Time, s')
ylabel('Relative velocity, m/s')
grid




