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

// Electro-mechanicaÌ system - armature controlled
clc;
clear all;

S = poly(0,'s');
R=input('Enter the armature resistance value:'); //lenter 4.38
L=input('Enter the armature inductance value:'); //enter 2.15*10^-3
J=input('Enter the moment of inertia of motor and load:'); //lenter 2.2*104
B=input('Enter the frictional coefficient of motor and load:'); //enter 0.4
kt=input('Enter the torque constant value:'); //lenter 1.94
kb=input('Enter the back emf constant value:'); //lenter 1.43
eml=kt/(((R+S*L)*(J*S^2+B*S))+kb*kt*S)

subplot(2,3,5)
plot2d(t,csim('step',t,eml))
subplot(2,3,6)
plot2d(t,csim('impulse',t,eml))
