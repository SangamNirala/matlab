% Prompt user for the 8-point DFT sequence X(k)
X = input('Enter an 8-point DFT sequence as a vector (e.g., [X0 X1 X2 X3 X4 X5 X6 X7]): ');

% Check if the input DFT sequence has exactly 8 points
if length(X) ~= 8
    error('The input DFT sequence must be an 8-point vector.');
end

% Number of points in the sequence
N = length(X);

% Initialize the IDFT result
x = zeros(1, N);

% Compute the IDFT
for n = 0:N-1
    x(n+1) = (1/N) * sum(X .* exp(1j * 2 * pi * n * (0:N-1) / N));
end


disp('The IDFT of the sequence is:');
disp(x);

subplot(3,1,1);
stem(0:N-1, X, 'filled');
title('8-point DFT X(k)');
xlabel('k');
ylabel('X(k)');
grid on;

% Plot x(n)
subplot(3,1,2);
stem(0:N-1, abs(x), 'filled');
title('Reconstructed 8-point Sequence x(n) from IDFT');
xlabel('n');
ylabel('x(n)');


subplot(3,1,3);
stem(0:N-1, angle(x), 'r','filled');
title('Reconstructed 8-point Sequence x(n) from IDFT');
xlabel('n');
ylabel('x(n)');
grid on;

