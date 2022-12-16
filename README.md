# Automatica feat. Octave
Un piccolo aiuto per risolvere esercizi di Fondamenti di Automatica (Ingegneria Informatica, Unipi) e per capire meglio ciò che viene studiato.

## Installazione
git clone 

(Sviluppato e testato su Ubuntu 22.04)

Requisiti:
- Ambiente Linux
- python3
- octave
- package control di octave

## Octave
GNU Octave è un'applicazione software per l'analisi numerica in gran parte compatibile con MATLAB distribuito con GNU GPL v3+ (licenza libera).
https://octave.org per maggiori informazioni

        sudo apt-get install octave
        octave
Sul terminale octave installare il package control con:

        pkg install -forge control

## Struttura del codice
- automatica.py
Programma python che fa da frontend, esegue a seconda dei comandi impartiti i comandi octave in ambiente Linux:
- *.m
I programmi .m sono programmi eseguiti con octave (uno per ogni comando)
- risolvi_esercizi.py
Scritte n FDT nel file fdt.in scrive in soluzioni.out il risultato dell'esecuzione del 4° comando (risolvi.m)

## Esecuzione
- Aprire un terminale su questa cartella e lanciare il comando:

        python3 automatica.py
- Il programma chiederà in input la FDT

        Scrivi la FDT che vuoi esaminare:
        G(s) = 1/(s+1)
- Viene mostrato un menù con i possibili studi che si possono fare della FDT data precedentemente, scegliere il numero associato e scriverlo

        Cosa vuoi calcolare?
        1) Luogo delle radici e K critico
        2) Diagramma di Bode e margini di stabilità
        3) Diagramma di Nyquist
        4) Stampa: K critico, margini, poli, zeri, errori a regime, stabilità
        altri numeri per cambiare FDT
        4
- Se si vuole cambiare FDT basta scrivere un numero non presente nelle opzioni

        5
- Inserito il numero il programma darà un risultato da terminale oppure un grafico

        poli = -1
        zeri = [](0x1)
        k critico:
        [](0x1)
        GM e PM:
        180
        Inf
        errori a regime (gradino, rampa, impulso):
        NaN
        NaN
        0
        Sistema asintoticamente stabile

- Nel caso del grafico una volta visionato chiudere la finestra del grafico e sul terminale premere Ctrl+C per continuare

        *****************************
        Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
        G(s) = [](0x1)
        ^C*****************************

- Quel messaggio di Warning è perfettamente normale durante l'esecuzione dei programmi octave (bug da risolvere)

## Link utili
vscode-octave package for code highlights

https://octave.sourceforge.io/control/overview.html

## Per errori o bug contattatemi o aprite una pull request