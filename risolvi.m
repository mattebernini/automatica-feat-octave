pkg load control
warning('off', 'all');

s = tf('s');
g = input("");

% trovo poli e zeri
[poli, zeri] = pzmap (g)

% trovo il K critico
[rldata, k_critico] = rlocus(g);
disp("k critico:");
disp(k_critico);

% trovo i margini di stabilità
[fase, modulo, w_fase, w_modulo] = margin(g); 
disp("GM e PM:");
disp(modulo);
disp(fase);

% trovo errore a regime
disp("errori a regime (gradino, rampa, impulso):")
% gradino
u = 1/s;
err_fun = g * u * s; 
epsilon = err_fun(0);
disp(epsilon)
% rampa
u = 1/(s^2);
err_fun = g * u * s; 
epsilon = err_fun(0);
disp(epsilon)
% impulso
u = 1;
err_fun = g * u * s; 
epsilon = err_fun(0);
disp(epsilon)

% stabilità
% Asintoticamente stabile se tutti i poli hanno parte reale negativa.
if (isstable(g) == 1)
    disp("Sistema asintoticamente stabile")
% Stabile se tutti i poli hanno parte reale negativa tranne
% alcuni, a molteplicità unitaria, con parte reale pari a 0.
elseif (modulo > 0 & fase > 0)
    disp("Sistema stabile")
% Instabile altrimenti.
else
    disp("Sistema instabile")
endif

