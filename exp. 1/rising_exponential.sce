// Generation of RISING EXPONENTIAL SIGNAL
L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t5=0:0.01:L;
x5=A*exp(t5);
subplot(2,4,5)
plot(t5,x5);
title("Rising Exponential Signal")
xlabel("Time")
ylabel("Amplitude")
