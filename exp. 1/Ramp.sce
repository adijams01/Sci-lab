// Generation of RAMP SIGNAL
L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t3=0:L;
x3=A*t3;
subplot(2,4,3)
plot(t3,x3);
title("Ramp Signal")
xlabel("Time")
ylabel("Amplitude")
