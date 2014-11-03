function [ ] = PDF( )
ax = [-5 5 0 0.5];

N = 1000000;
s = randn(1, 1000000);

s = s - mean(s);

h = 0;
figure(60), subplot(4, 2, 1), plot(s);
[h, xh] = hist(s, 50);
h = h/sum(h)/(xh(2)/xh(1));
subplot(4, 2, 2), plot(xh, h, '*-');
axis(ax);

title ('pdf histogram');
fs = 10000;
f = fftshift(fft(s));
df = fs/N;
subplot(4, 2, 3), plot(-fs/2:df:fs/2-df, abs(f));

end
