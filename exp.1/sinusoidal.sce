// Generation of SINUSOIDAL SIGNAL
f1=input("Enter the Frequency:");
L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t7=0:0.01:L;
x7=A*sin(2*%pi*f1*t7);
subplot(2,4,7)
plot(t7,x7);
title("Sinusoidal Signal")
xlabel("Time")
ylabel("Amplitude")
