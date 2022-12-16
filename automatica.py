import os

menu = """Cosa vuoi calcolare?
1) Luogo delle radici e K critico
2) Diagramma di Bode e margini di stabilità
3) Diagramma di Nyquist
4) Stampa: K critico, margini, poli, zeri, errori a regime, stabilità
altri numeri per cambiare FDT
"""

while 1:
    fdt = input("Scrivi la FDT che vuoi esaminare:\nG(s) = ")
    while 1:
        choice = input(menu)
        choice = int(choice)
        print("*****************************")
        match choice:
            case 1:
                os.system("echo '"+fdt+"' | octave LDR.m")
            case 2:
                os.system("echo '"+fdt+"' | octave bode_plot.m")
            case 3:
                os.system("echo '"+fdt+"' | octave nyquist_plot.m")
            case 4:
                os.system("echo '"+fdt+"' | octave risolvi.m")
            case default:
                break
        print("*****************************")
