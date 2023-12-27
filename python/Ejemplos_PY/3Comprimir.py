#formato zip
import zipfile
from zipfile import ZipFile

with zipfile.ZipFile('archivo.zip','w') as fzip:
    #fzip.write('ruta\archivo.docx')
    fzip.write('python.docx')
    fzip.write('python1.jpg')
    fzip.printdir()
    fzip.extractall()

#formato gzip
import gzip

with open('python.docx','rb') as original:
    with gzip.open('archivo.txt.gzip','wb') as archivo1:
        archivo1.writelines(original)

#formato bz2
import bz2

cadena=b"Cadena Cadena Cadena Cadena"
cadena_c=bz2.compress(cadena)

print(cadena_c)
print(bz2.decompress(cadena_c))

#formato tarball
import tarfile

archivo_tar=tarfile.open('primer.tar.gz','w:gz')
archivo_tar.add('python.docx')
archivo_tar.add('datos.txt')
archivo_tar.close()
