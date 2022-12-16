import os

print("""Scrivi nel file fdt.in le fdt che vuoi esaminare (una per riga), 
dopo premi invio e troverai i risultati nel file soluzioni.out""")
# input()

f = open("fdt.in", "r")
os.system("echo '' > soluzioni.out")

while 1:
    fdt = f.readline()
    fdt = fdt.strip("\n")
    if fdt == "":
        break
    os.system("echo '******************'* >> soluzioni.out")
    os.system("echo '"+fdt+"' >> soluzioni.out")
    os.system("echo '******************'* >> soluzioni.out")
    os.system("echo '"+fdt+"' | octave risolvi.m >> soluzioni.out")