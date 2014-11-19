clear all;
close all;

N=64;
Ts=1/N; Fs=N; df=Fs/N;% sampling
Im(N/8:N/4,N/4+1:N/2) =1;
Im(1:N/4,N/2+1:N) = Im;
Im(N/4+1:N/2,:) = Im;
Im(N/2+1:3*N/4,:) = Im(1:N/4,:);
Im(3*N/4+1:N,:) = Im(1:N/4,:);

img_fft = fft2(Im);
img_fft_shift = fftshift(img_fft); 

subplot(2, 2, 1);
imshow(Im);

subplot(2,2, 2);
imagesc(100*log(1+abs(fftshift(img_fft)))); colormap(gray); 
title('Image FFT2 Magnitude')

subplot(2,2, 3);
imshow(angle(fftshift(img_fft)),[-pi pi]), colormap gray
title('Image FFT2 Phase');