def costo_hotel(noches):
    return 140 * noches
    
def costo_del_vuelo(ciudad):
    cities = {
        "Córdoba": 821,
        "Iguazú": 941,
        "Ushuaia": 1280,
        "Bariloche": 1848,
    }
    return cities[ciudad]


def alquiler_de_auto(dias):
    costo = dias * 338
    if dias >= 7:
        costo = costo - 100
    elif dias >= 3:
        costo = costo - 50
    return costo
    
def costo_viaje(ciudad,dias,otros_gastos):
    return alquiler_de_auto(dias) + costo_hotel(dias) + costo_del_vuelo(ciudad) + otros_gastos

print costo_viaje("Bariloche",5,600)