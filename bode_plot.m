pkg load control
warning('off', 'all');

s = tf('s');
g = input("G(s) = ");

[fase, modulo, w_fase, w_modulo] = margin(g);  % stability margins
disp("GM e PM:")
disp(modulo)
disp(fase)

if (modulo > 0 & fase > 0)
    disp("Sistema ciclo chiuso: stabile")
elseif (modulo == 0 & fase == 0)
    disp("Sistema ciclo chiuso: stabile marginalmente")
elseif (modulo < 0 | fase < 0)
    disp("Sistema ciclo chiuso: instabile")
endif

margin(g);

pause