t=0:0.001:1.0;
x=sin(2*pi*50*t)+(1/3)*sin(2*pi*150*t)+(1/5)*sin(2*pi*250*t)+(1/7)*sin(2*pi*350*t)+(1/9)*sin(2*pi*450*t);
figure(1);
plot(1000*t(1:50),x(1:50))
title('signal containing frequencies 50,150,250,350, and 450 Hz')
xlabel('time(milliseconds)')
