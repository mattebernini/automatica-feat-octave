pkg load control
warning('off', 'all');

s = tf('s');
g = input("G(s) = ");

[rldata, k] = rlocus(g);
disp(k);

rlocus(g);  % oppure rlocusx(g);
pause