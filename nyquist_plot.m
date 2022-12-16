pkg load control
warning('off', 'all');

s = tf('s');
g = input("G(s) = ");
nyquist(g);
pause