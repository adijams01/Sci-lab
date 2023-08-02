//First order mechanical system
clc;
clear all;
clf;
F = input('Enter the value of input force:');  //F=500 N
M = input('Enter the value of mass:');  //M=1000 kg
B = input('Enter the value of friction coefficient:'); //B=50 Ns/m
t=0:0.0001:350;
num = poly([F], 's', 'c');
den = poly([B M], 's', 'c');
sys1_mech = syslin('c', num/den)
disp(sys1_mech)
y=csim('step',t,sys1_mech);
plot(t,y)
xlabel("t", "fontsize", 2, "color", "blue");
ylabel("y");
title('First order mechanical system','color','red');
// Second order mechanical system
clc;
clear all;
F = input('Enter the value of input force:');  //F=300 N
M = input('Enter the value of mass:');  //M=750 kg
B = input('Enter the value of friction coefficient:'); //B=30 Ns/m
K = input('Enter the value of spring constant:');  //K=1 N/m
num = poly([F], 's', 'c');
den = poly([K B M], 's', 'c');
sys2_mech = syslin('c', num/den);
disp(sys2_mech)
y=csim('step',t,sys2_mech);
plot(t,y,'r')
xlabel("t", "fontsize", 2, "color", "blue");
ylabel("y");
title('Second order mechanical system','color','red');
// First order Electrical system
clc;
clear all;
V = input('Enter the value of input voltage:');  //V=1 V
R = input('Enter the value of resistance:');   //R=2000 ohm
C = input('Enter the value of capacitance:'); //C=0.01  F
s=poly(0,'s'); 
sys1_elec = V/((s*R*C)+1)
y=csim('step',t,sys1_elec);
plot(t,y,'g')
disp(sys1_elec)
xlabel("t", "fontsize", 2, "color", "blue");
ylabel("y");
title('First order Electrical system','color','red');
//effect of damping ratio
clc;
clear;
s=poly(0,'s'); 
t=0:0.01:80;
w = input('Enter the value of natural frequency of oscillation:'); %w=1
for i=1:5 //z=0.1, 0.4, 0.7, 1.0, 2.0
    z(i)=input('Enter the value of damping coefficient:');
    sys=(w*w)/(s^2 + (2*w*z(i)*s)+ w*w)
    plot2d(t,csim ('step', t, sys))
end
xlabel("t", "fontsize", 2, "color", "blue");
ylabel("y");
title('effect of damping ratio','color','red');
