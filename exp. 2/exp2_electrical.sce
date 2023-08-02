clc;
clear all;

num=[1];
den=poly([0 0.1 10],'S','c');
P1=syslin('c',num,den);


num=poly([0 0.1 10],'S','c');
den=poly([0 0.1 10],'S','c');
P3=syslin('c',num,den);
disp(P3);

S=poly(0,'S');
sys=S/(S^2+2*S+1);
P2=syslin('c',sys);
disp(P2);


// electrical
clc;
clear all;

S=poly(0,'S');
R=input("Enter the Resistance");//1000
C=input("Enter the capacitance");//150*10^6




T2=1/(1+3*R*C*S+(R^2)*(C^2)*S);

subplot(2,3,1);
t=0:0.05:30;
plot2d(t,csim('step',t,T2));
subplot(2,3,2);
plot2d(t,csim('impulse',t,T2));


