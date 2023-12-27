def crearArchivo():
    archivo=open('datos.txt','w')
    archivo.close()

crearArchivo()

def escribirArchivo():
    archivo=open('datos.txt','a')
    archivo.write("Hola Jisus\n")
    archivo.write("667788990")
    archivo.close()

escribirArchivo()

def leerArchivo():
    archivo=open('datos.txt','r')
    linea=archivo.readline()
    while linea!="":
        print(linea)
        linea=archivo.readline()
    archivo.close()

leerArchivo()
