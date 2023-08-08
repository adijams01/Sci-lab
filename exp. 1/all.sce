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
// Generation of PARABOLIC SIGNAL
t4=0:0.001:L;
x4=A*(t4.^2);
subplot(2,4,4)
plot(t4,x4);
title("Parabolic Signal")
xlabel("Time")
ylabel("Amplitude")
// Generation of RISING EXPONENTIAL SIGNAL
t5=0:0.01:L;
x5=A*exp(t5);
subplot(2,4,5)
plot(t5,x5);
title("Rising Exponential Signal")
xlabel("Time")
ylabel("Amplitude")
// Generation of DECAYING EXPONENTIAL SIGNAL
t6=0:0.01:L;
x6=A*exp(-t6);
subplot(2,4,6)
plot(t6,x6);
title("Decaying Exponential Signal")
xlabel("Time")
ylabel("Amplitude")
// Generation of SINUSOIDAL SIGNAL
f1=input("Enter the Frequency:");
t7=0:0.01:L;
x7=A*sin(2*%pi*f1*t7);
subplot(2,4,7)
plot(t7,x7);
title("Sinusoidal Signal")
xlabel("Time")
ylabel("Amplitude")
// Generation of COSINE SIGNAL
f2=input("Enter the Frequency:");
t8=0:0.01:L;
x8=A*cos(2*%pi*f2*t8);
subplot(2,4,8)
plot(t8,x8);
title("Cosine Signal")
xlabel("Time")
ylabel("Amplitude")

