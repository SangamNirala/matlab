
N = 8;  
%wc = pi/3;
wc1 = pi/6;
wc2 = pi/3;

H = zeros(1,N); 
k = 0:N-1;
wk = (2*pi*k)/N;

%H = (wk<wc | wk>2*pi-wc);         %LPF
%H = (wk>wc & wk<2*pi-wc);         %HPF
H = ((wk>wc1 & wk<wc2) | (wk>2*pi-wc2 & wk<2*pi-wc1));  %BPF

h = ifft(H, 'symmetric');

disp(H);
disp(h);

figure;
subplot(3,1,1);
stem(0:N-1, H);
xlabel("K");
ylabel("H(K)");
title("H(K)");
grid on;

subplot(3,1,2);
stem(0:N-1, h);
xlabel("n");
ylabel("h(n)");
title("h(n)");
grid on;

subplot(3,1,3);
[y,w] = freqz(h,1);
plot(w, abs(y));
xlabel("w");
ylabel("|H(w)|");
title("Amplitude response of h[n]");
grid on;



