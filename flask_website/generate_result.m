pkg load control
warning('off', 'all');

s = tf('s');
G = input("G(s) = ");

% calcolo margini di stabilità
[fase, modulo, w_fase, w_modulo] = margin(G);  % stability margins

% salvo bode plot
hf = figure ();
margin(G);
print -djpg "static/bode_plot.jpg"

% salvo nyquist plot
hf = figure ();
nyquist(G);
print -djpg "static/nyquist_plot.jpg"

% luogo delle radici
[rldata, k_critico] = rlocus(G);
hf = figure ();
rlocus(G);  
print -djpg "static/rlocus_plot.jpg"

% altri risultati numerici
[poli, zeri] = pzmap (G)

fid = fopen ("result.txt", "w");
fdisp (fid, "poli");
fdisp (fid, poli);
fdisp (fid, "zeri");
fdisp (fid, zeri);
fdisp (fid, "k critico");
fdisp (fid, k_critico);
fdisp (fid, "margine di modulo");
fdisp (fid, modulo);
fdisp (fid, "margine di fase");
fdisp (fid, fase);
fclose (fid);
%save result.txt poli zeri k_critico modulo fase 
