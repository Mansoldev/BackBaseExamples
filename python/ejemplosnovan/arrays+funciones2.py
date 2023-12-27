compras = ["banana", "naranja", "manzana"]

inventario = {
    "banana": 6,
    "manzana": 0,
    "naranja": 32,
    "pera": 15
}
    
precios = {
   'naranaja': 1.5, 'pera': 3, 'banana': 4, 'manzana': 2
}

# Escribí tu código acá.
def calcular_factura(comida):
    total = 0
    for c in comida:
        if inventario[c] != 0:
            total = total + comida[c]
            inventario[c] = inventario[c] - 1