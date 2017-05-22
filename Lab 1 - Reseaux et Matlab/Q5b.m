[y, Fs] = audioread('CEG3185_lab1_high.wav');
sound(y);

Y = fft(y,4096);
Pyy = Y.* conj(Y) / 4096;
f = Fs*(0:2048) / 4096;
plot(f, Pyy(1:2049));
title('Frequency content of x');
xlabel('frequency (Hz)');
