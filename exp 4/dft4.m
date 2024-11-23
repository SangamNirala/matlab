% Define the 4-point sequence
x = input('Enter a 4-point sequence as a vector (e.g., [x0 x1 x2 x3]): ');

% Check if the input sequence has exactly 4 points
if length(x) ~= 4
    error('The input sequence must be a 4-point vector.');
end

% Number of points in the sequence
N = length(x);

% Initialize the DFT result
X = zeros(1, N);

% Compute the DFT
for k = 0:N-1
    X(k+1) = sum(x .* exp(-1j * 2 * pi * k * (0:N-1) / N));
end

% Display the result
disp('The DFT of the sequence is:');
disp(X);

subplot(3,1,1);
stem(0:N-1, x, 'filled');
title('Sequence x(n)');
xlabel('n');
ylabel('x(n)');
grid on;

% Plot magnitude and phase of X(k)
subplot(3,1,2);
stem(0:N-1, abs(X), 'b', 'filled'); % Magnitude

title('DFT of x(n)');
xlabel('k');
ylabel('|X(k)|');
grid on;

subplot(3,1,3);
stem(0:N-1, angle(X), 'r', 'filled'); % Phase
title('DFT of x(n)');
xlabel('k');
ylabel('\angleX(k)');
grid on;


