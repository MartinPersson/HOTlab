clear all
close all

grating=repmat([1 0], 32, 16);
for ii= 1:100
    phi(ii) = (ii-1)*2*pi/100;


farfield=fftshift(fft2(fftshift(exp(1i*phi(ii)*grating))));

imagesc(abs(farfield))
abs(farfield(17,1))^2
power(ii) = abs(farfield(17,1))^2;
end

plot(phi,power)
hold on
plot(phi, max(power)*sin(phi*0.5).^2, 'r')
hold off

fas = 2*asin(sqrt(power/max(power)))
fas2 = 2*asin(-sqrt(power/max(power)))+2*pi

figure(2)
plot(fas)
hold on
plot(phi,'r')
plot(fas2, 'g')