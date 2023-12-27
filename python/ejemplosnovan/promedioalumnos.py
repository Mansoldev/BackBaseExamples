candela = {
    "nombre": "Candela",
    "tareas": [90.0, 97.0, 75.0, 92.0],
    "pruebas": [88.0, 40.0, 94.0],
    "examenes": [75.0, 90.0]
}
milagros = {
    "nombre": "Milagros",
    "tareas": [100.0, 92.0, 98.0, 100.0],
    "pruebas": [82.0, 83.0, 91.0],
    "examenes": [89.0, 97.0]
}
ramiro = {
    "nombre": "Ramiro",
    "tareas": [0.0, 87.0, 75.0, 22.0],
    "pruebas": [0.0, 75.0, 78.0],
    "examenes": [100.0, 100.0]
}

# Nuestra funcion
def promedio(numeros):
    total = sum(numeros)
    total = float(total) / len(numeros)
    return total
    
def sacar_promedio(alumno):
    tareas = promedio(alumno["tareas"])
    pruebas = promedio(alumno["pruebas"])
    examenes = promedio(alumno["examenes"])
    return 0.1 * tareas + 0.3 * pruebas + 0.6 * examenes
    
def calificaciones_con_letras(resultado):
    if resultado >= 90:
        return "A"
    elif resultado >= 80:
        return "B"
    elif resultado >= 70:
        return "C"
    elif resultado >= 60:
        return "D"
    else:
        return "F"

calificaciones_con_letras(candela)
alumnos = [candela, milagros, ramiro]

def obtener_promedio_clase(alumnos):
    puntuajes = []
    for alumno in alumnos:
        puntuajes.append(sacar_promedio(alumno))
    promedio(puntuajes)
    
print obtener_promedio_clase(alumnos)
print calificaciones_con_letras(obtener_promedio_clase(alumnos))