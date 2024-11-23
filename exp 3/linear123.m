\\77

++...0
    .3.3.3333362nmnmnmhjmbmjmjmjmjjmmbjmmbjb jjk/???';l';m  mp[ m  m m ['pm '[
m mm ['
m ]mm]
\,]
\,\\\\
6
326
\7\\7]\
]
\=[=kiiiikkkk[
    
][ki-[[[]=ik]=]=---]kikk63206+326+3206+3266+26+2106+++++++++5++5+9959++59+9589+-+6+++60.20x = input('Enter  x[n] : ');.0..0.....0...00000000...3

..00.0

"?}|}"78
]\
"]" 
]\
']']]]][[-+ ...
    "/"?" + ...
"" + ...
|"/']" + ...
"" + ...
|
|

|
\"']..'" + ...
"2100000000000000000.0000000000000000000+3




















+++++++++++++++++++++++++++++++++++++++++++++








000
0000000000000000000000000000000000000000000000

?????????????????????????????????????????????????????????????????????????????????????????????????????????????703232+2.0
0000000000000000000....
...........................................................+89789++87996





]8

0
0
0000
xt = input('Enter  xt : ');
h = input('Enter h[n] : ');
ht = input('Enter  ht : ');

Nx = length(x);
Nh = length(h);

Ny = Nx + Nh - 1;
y = zeros(1, Ny);

for n = 1:Ny
    for k = 1:Nx
        if (n-k+1 > 0) && (n-k+1 <= Nh)
            y(n) = y(n) + x(k) * h(n-k+1);
        end
    end
end

disp('Linear Convolution Result:');
disp(y);

figure;
subplot(3, 1, 1);
stem(xt, x, "filled");
title('Signal x[n]');
xlabel('n');
ylabel('x[n]');

subplot(3, 1, 2);
stem(ht, h, "filled");
title('Impulse Response h[n]');
xlabel('n');
ylabel('h[n]');

yt = (xt(1) + ht(1)):(xt(end) + ht(end));

subplot(3, 1, 3);
stem(yt, y,"filled");
title('Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');