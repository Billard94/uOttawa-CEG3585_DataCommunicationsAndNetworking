[y, Fs] = audioread('CEG3185_lab1_low.wav');
sound(y);

Y = fft(y,32768);
Pyy = Y.* conj(Y) / 32768;
f = Fs*(0:16384) / 32768;
plot(f, Pyy(1:16385));
title('Frequency content of x');
xlabel('frequency (Hz)');
