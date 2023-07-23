//Generation of IMPULSE SIGNAL
clc;
clear;
//close all;
L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t1=-L:L;
x1=[zeros(1,L),A*ones(1,1),zeros(1,L)];
subplot(2,4,1);
plot(t1,x1);
title("Impulse Signal")
xlabel("Time")
ylabel("Amplitude")
// Generation of STEP SIGNAL
t2=-L:0.001:L;
x2=zeros(size(t2));
x2(t2>=0)=1;
subplot(2,4,2)
plot(t2,x2);
title("Step Signal")
xlabel("Time")
ylabel("Amplitude")
// Generation of RAMP SIGNAL
t3=0:L;
x3=A*t3;
subplot(2,4,3)
plot(t3,x3);
title("Ramp Signal")
xlabel("Time")
ylabel("Amplitude")
