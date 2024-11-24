num = [0.3750    0.3018    0.1250   -0.0518   -0.1250   -0.0518    0.1250    0.3018];
denom = [1 0 0 0];

[H, w] = freqz(num, denom, 'half', 1024);

figure;
subplot(2,1,1);
plot(w, abs(H));
title('Magnitude Response');
xlabel('omega');
ylabel('Magnitude');
grid on;

phase = atan(imag(H)/real(H));

subplot(2,1,2);
plot(w,phase);
title('Phase Response');
xlabel('omega');
ylabel('Phase (radians)');
grid on;