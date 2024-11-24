
numerator = [1 2 -2 -1];  
denominator = [1]; 

sys = tf(numerator, denominator, 1); 

poles = pole(sys);
zeros = zero(sys);

figure;
zplane(zeros, poles);
grid on;
title('Pole-Zero Plot in Z-Plane');

disp('Poles:');
disp(poles);
disp('Zeros:');
disp(zeros);
