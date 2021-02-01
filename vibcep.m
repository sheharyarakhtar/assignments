clear all
A=xlsread('nomass_y.xlsx');
B=xlsread('mass1 fft_85g_y.xlsx');
C=xlsread('mass2 FFT.xlsx');
m1=(2200+85)/1000;
m2=(2200+114+85)/1000;
B(:,2)=B(:,2)*m1;
C(:,2)=C(:,2)*m2;
B=B';
C=C';
B=sortrows(B);
C=sortrows(C);
