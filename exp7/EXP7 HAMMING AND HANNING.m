wc = pi/6;
N = 7;
n = -(N-1)/2:((N-1)/2);
wc2 = pi/3;
wc1 = pi/6;

lp = sin(wc*n)./(n*pi);
lp(n==0) = wc/pi;

hpf = (sin(pi*n) - sin(wc*n))./(n*pi);
hpf(n==0) = 1 - wc/pi;

bpf = (sin(wc2*n) - sin(wc1*n))./(n*pi);
bpf(n==0) = (wc2 - wc1)/pi;

rec = ones(1, N);
han = 0.5 + 0.5*cos((2*pi*n/N));
ham = 0.54 + 0.46*cos(2*pi*n/N);
blac = 0.42 + 0.5*cos(2*pi*n/(N-1)) + 0.08*cos((2*pi*n)/(N-1));

rect1 = rec .* lp;
hanning1 = han .* lp;
hamming1 = ham .* lp;
black1 = blac .* lp;

% Plot LPF
figure
subplot(2, 2, 1)
stem(n, rect1)
title('Rectangular Window LPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 2)
stem(n, hanning1)
title('Hanning Window LPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 3)
stem(n, hamming1)
title('Hamming Window LPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 4)
stem(n, black1)
title('Blackman Window LPF')
xlabel('n')
ylabel('Amplitude')

% HPF
rect2 = rec .* hpf;
hanning2 = han .* hpf;
hamming2 = ham .* hpf;
black2 = blac .* hpf;

% Plot HPF
figure
subplot(2, 2, 1)
stem(n, rect2)
title('Rectangular Window HPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 2)
stem(n, hanning2)
title('Hanning Window HPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 3)
stem(n, hamming2)
title('Hamming Window HPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 4)
stem(n, black2)
title('Blackman Window HPF')
xlabel('n')
ylabel('Amplitude')

% BPF
rect3 = rec .* bpf;
hanning3 = han .* bpf;
hamming3 = ham .* bpf;
black3 = blac .* bpf;

% Plot BPF
figure
subplot(2, 2, 1)
stem(n, rect3)
title('Rectangular Window BPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 2)
stem(n, hanning3)
title('Hanning Window BPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 3)
stem(n, hamming3)
title('Hamming Window BPF')
xlabel('n')
ylabel('Amplitude')

subplot(2, 2, 4)
stem(n, black3)
title('Blackman Window BPF')
xlabel('n')
ylabel('Amplitude')

% Frequency response for LPF
[L_rect1, w1] = freqz(rect1, 1);
[L_hanning1, w2] = freqz(hanning1, 1);
[L_hamming1, w3] = freqz(hamming1, 1);
[L_black1, w4] = freqz(black1, 1);

figure;
subplot(2, 2, 1);
plot(w1, abs(L_rect1))
title('Rectangular Window LPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

subplot(2, 2, 2);
plot(w2, abs(L_hanning1))
title('Hanning Window LPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

subplot(2, 2, 3);
plot(w3, abs(L_hamming1))
title('Hamming Window LPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

subplot(2, 2, 4);
plot(w4, abs(L_black1))
title('Blackman Window LPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

% Frequency response for HPF
[H_rect1, w5] = freqz(rect2, 1);
[H_hanning1, w6] = freqz(hanning2, 1);
[H_hamming1, w7] = freqz(hamming2, 1);
[H_black1, w8] = freqz(black2, 1);

figure;
subplot(2, 2, 1);
plot(w5, abs(H_rect1))
title('Rectangular Window HPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

subplot(2, 2, 2);
plot(w6, abs(H_hanning1))
title('Hanning Window HPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

subplot(2, 2, 3);
plot(w7, abs(H_hamming1))
title('Hamming Window HPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')

subplot(2, 2, 4);
plot(w8, abs(H_black1))
title('Blackman Window HPF Frequency Response')
xlabel('Frequency (rad/sample)')
ylabel('Magnitude')