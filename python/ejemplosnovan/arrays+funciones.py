precios  = {
   "banana": 4,
"manzana": 2,
"naranja": 1.5,
"pera": 3
}


inventario = {
    "banana" : 6,
    "manzana" : 0,
    "naranja" : 32,
    "pera" : 15
}
    
total = 0

for key in precios:
    print key
    print "precio: %s" % precios[key]
    print "inventario: %s" % inventario[key]
    print precios[key] * inventario[key]
    total = total + (precios[key] * inventario[key])

print total