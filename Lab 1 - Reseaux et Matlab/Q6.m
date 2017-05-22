SIZ = audioread('CEG3185_lab1_high.wav');
[y, Fs] = audioread('CEG3185_lab1_high.wav');
%sound(y);

Y = fft(y,65536);
Pyy = Y.* conj(Y) / 65536;
f = (1:65536);
plot(f, Pyy(1:65536));
title('Frequency content of x');

figure(2); % joue le role de filtre
for n=8192:32769
    Y(n)=0;
end
for n=32769:65536-8191
    Y(n)=0;
end
Pyy = Y.* conj(Y) / 65536;
f(1:65536);
plot(f, Pyy(1:65536));
title('Frequency content of x');
y=ifft(Y);
audioread(y,Fs, 'CEG3185_lab1_high2.wav');
[y, Fs] = audioread('CEG3185_lab1_high2.wav');
%sound(y);

