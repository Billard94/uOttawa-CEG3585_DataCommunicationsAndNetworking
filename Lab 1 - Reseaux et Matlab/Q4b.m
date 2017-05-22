Y = fft(x,512);
Pyy = Y.* conj(Y) / 512;
f = 1000*(0:256) / 512;
figure(2);
plot(f, Pyy(1:257))
title('Frequency content of x')
xlabel('frequency (Hz)')
