f = linspace(0,1,10);
a = linspace(1,0,100);

e = [0 0 0 0 0 .8 .75 0 0 0];



b = firpm(5,f,e)
[h,w] = freqz(b,1,512);
figure
plot(f,e,w/pi,abs(h))
