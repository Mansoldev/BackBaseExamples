import csv

doc=open("archivoWW.csv","w")
doc_csv_w=csv.writer(doc)

lista=[["Pedro",99836],["UNO",1000],["DOS",2000],["TRES",3000],["CUATRO",4000]]
#doc_csv_w.writerows(lista)
for x in lista:
    doc_csv_w.writerow(x)
    
doc.close()

doc=open("archivoWW.csv","r")
doc_csv=csv.reader(doc)

for(nombre,numero) in doc_csv:
    print (nombre,numero)

doc.close()
