// Generation of COSINE SIGNAL
clc;
clear;
f2=input("Enter the Frequency:");
L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t8=0:0.01:L;
x8=A*cos(2*%pi*f2*t8);
subplot(2,4,8)
plot(t8,x8);
title("Cosine Signal")
xlabel("Time")
ylabel("Amplitude")
