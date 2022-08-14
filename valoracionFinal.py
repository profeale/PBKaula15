#Ejercicio 5

Historial = (2350, 5960, 23000, 1000, 8900)
montoTotal = 0

for monto in Historial:
    montoTotal += monto

if montoTotal < 30000:
    print(montoTotal)
else:
    print("Gastos por encima de lo presupuestado")
