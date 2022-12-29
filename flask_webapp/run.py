from flask import Flask, render_template, request
import os

def get_results():
    d = {}
    f = open("result.txt", "r")
    lines = f.readlines()
    key_val = True
    for line in lines:
        if key_val:
            key = line.strip("\n")
        else:
            val = line.strip("\n")
            if val.startswith("["):
                val = "nessuno"
            d.update({key : val})
        key_val = not key_val
    return d

app = Flask(__name__)

@app.route('/fdt')
def fdt():
   return render_template('index.html')

@app.route('/fdt/result',methods = ['POST', 'GET'])
def result():
   if request.method == 'POST':
    fdt = request.form['transfer_function']
    os.system("echo '"+fdt+"' | octave generate_result.m")
    ris = get_results()
    print(ris)
    return render_template('result.html', transfer_function=fdt, numeric_result = ris)

if __name__ == '__main__':
    app.run("127.0.0.1", 5000, True)

