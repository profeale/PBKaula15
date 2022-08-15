"""Ejercicio Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores: 8520, 9510, 7530, 3570, 1590"""

def gastoToto (mes):
    return {
        "Julio": 8520,
        "Agosto": 9510,
        "Octubre": 7530,
        "Diciembre": 1590
    }[mes]

meses = ["Julio", "Agosto", "Octubre", "Diciembre"]
print(max(meses, key=gastoToto))   

"""Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811” que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)""" 
Dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"]
ArrayLen = len (Dueno2)
for i in range (o, ArrayLen)
if i != 0 and i != 2:
    print (Dueno2[i])