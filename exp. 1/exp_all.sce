clc;
clear all;
//Using numerator and denominator coefficients
num = [1];
den=poly([0 0.1 10],'s','c');
P1=syslin('c',num,den);


num=poly([0 0.1 10],'s','c')
den=poly([0 0.1 10],'s','c')
P3=syslin('c',num,den)
disp(P3)

s=poly(0,'s');
sys=s/(s^2+2*s+1);
P2=syslin('c',sys)
disp(P2)

// mechhanical system

clc;
clear all;

s=poly(0,'s');
M=input("Enter the mass value")//100
B=input("Enter the Damping value")//50
K=input("Enter the value of spring")//75

T1=1/((M*s^2)+(B*s)+K)

subplot(2,3,1)
t=0:0.05:5;
plot2d(t,csim('step',t,T1))
subplot(2,3,2)
plot2d(t,csim('impulse',t,T1))

// electrical system
clc;
clear

clc;
clear all;

S=poly(0,'S');
R=input('Enter the Resistance')//1000
C=input('Enter the capacitance value:'); //enter 160*10^-6
el=1/((R^2*C^2*S^2)+(3*R*C*S)+1);
t=0:0.05:5;
subplot(2,3,3)
plot2d(t,csim ('step', t, el))
subplot(2,3,4)
plot2d(t,csim ('impulse', t, el))
// Electro-mechanicaÌ system - armature controlled
clc;
clear all;

S = poly(0,'s');
R=input('Enter the armature resistance value:'); //lenter 4.38
L=input('Enter the armature inductance value:'); //enter 2.15*10^-3
J=input('Enter the moment of inertia of motor and load:'); //lenter 2.2*10^-4
B=input('Enter the frictional coefficient of motor and load:'); //enter 0.4
kt=input('Enter the torque constant value:'); //lenter 1.94
kb=input('Enter the back emf constant value:'); //lenter 1.43
eml=kt/(((R+S*L)*(J*S^2+B*S))+kb*kt*S)

subplot(2,3,5)
plot2d(t,csim('step',t,eml))
subplot(2,3,6)
plot2d(t,csim('impulse',t,eml))
