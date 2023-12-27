import random

tablero = []

for x in range(0,5):
    tablero.append(["O"] * 5)

def print_tablero(tablero):
   for fila in tablero:
      print " ".join(fila)

print "Juguemos a la batalla naval!"
print_tablero(tablero)

def fila_aleatoria(tablero):
   return random.randint(0,len(tablero)-1)

def columna_aleatoria(tablero):
   return random.randint(0,len(tablero[0])-1)

barco_fila = fila_aleatoria(tablero)
barco_columna = columna_aleatoria(tablero)
print barco_fila
print barco_columna

#Ejecución del Juego
for turno in range(4):
   adivina_fila = input("Adivina fila: ")
   adivina_columna = input("Adivina columna: ")
if adivina_fila == barco_fila and adivina_columna == barco_columna:
  print "Felicitaciones! Hundiste mi barco!"
else:
    if adivina_fila not in range(5) or adivina_columna not in range(5):
        print "Huy, eso ni siquiera esta en el oceano."
    elif (tablero[adivina_fila][adivina_columna] == "X"):
        print "Ya dijiste esa."
        turno=turno+1
        restantes=4-turno
        print "Turno Ejecutado: %i  Turnos Restantes:%i" % (turno,restantes)
if turno==3:
    print "Fin del Juego"
else:
    print "No tocaste mi barco!"
tablero[adivina_fila][adivina_columna] = "X"
turno=turno+1
restantes=4-turno
print "Turno Ejecutado: %i  Turnos Restantes:%i" % (turno,restantes)

print_tablero(tablero)