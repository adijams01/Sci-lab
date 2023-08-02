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

// mech

clc;
clear all;

S=poly(0,'S');
M=input("Enter the mass value:");
B=input("Enter the Damping value:");
K=input("Enter the value of spring:");

T1=1/((M*S^2)+(B*S)+K);

subplot(2,3,1);
t=0:0.05:30;
plot2d(t,csim('step',t,T1));
subplot(2,3,2);
plot2d(t,csim('impulse',t,T1));
