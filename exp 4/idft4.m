% Prompt user for the 4-point DFT sequence X(k)
X = input('Enter a 4-point DFT sequence as a vector (e.g., [X0 X1 X2 X3]): ');

% Check if the input DFT sequence has exactly 4 points
if length(X) ~= 4
    error('The input DFT sequence must be a 4-point vector.');
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

% Plot X(k)
subplot(3,1,1);
stem(0:N-1, X, 'filled');
title('4-point DFT X(k)');
xlabel('k');
ylabel('X(k)');
grid on;

% Plot x(n)
subplot(3,1,2);
stem(0:N-1, abs(x), 'filled');
title('Reconstructed 4-point Sequence x(n) from IDFT');
xlabel('n');
ylabel('x(n)');


subplot(3,1,3);
stem(0:N-1, angle(x), 'r','filled');
title('Reconstructed 4-point Sequence x(n) from IDFT');
xlabel('n');
ylabel('x(n)');
grid on;
