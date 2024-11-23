% Get input sequences from the user
x = input('Enter the first sequence x[n] as a vector (e.g., [1 2 3 4]): ');
h = input('Enter the second sequence h[n] as a vector (e.g., [1 -1 2]): ');

% Determine the lengths of the input sequences
Nx = length(x);
Nh = length(h);

% Determine the length of the output sequence for circular convolution
N = max(Nx, Nh);

% Ensure both sequences have the same length by zero-padding the shorter one
if Nx < N
    x = [x, zeros(1, N - Nx)];
end

if Nh < N
    h = [h, zeros(1, N - Nh)];
end

% Initialize the output sequence y[n] with zeros
y = zeros(1, N);

% Perform the circular convolution manually
for n = 1:N
    for k = 1:N
        index = mod(n - k, N) + 1;
        y(n) = y(n) + x(k) * h(index);
    end
end

% Display the resulting circular convolution
disp('The resulting sequence after circular convolution y[n] is:');
disp(y);

% Plot the input and output sequences
subplot(3, 1, 1);
stem(0:N-1, x, 'filled');
title('Input Signal x[n]');
xlabel('n');
ylabel('x[n]');

subplot(3, 1, 2);
stem(0:N-1, h, 'filled');
title('Impulse Response h[n]');
xlabel('n');
ylabel('h[n]');

subplot(3, 1, 3);
stem(0:N-1, y, 'filled');
title('Circular Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');