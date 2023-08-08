// Generation of DECAYING EXPONENTIAL SIGNAL
L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t6=0:0.01:L;
x6=A*exp(-t6);
subplot(2,4,6)
plot(t6,x6);
title("Decaying Exponential Signal")
xlabel("Time")
ylabel("Amplitude")
