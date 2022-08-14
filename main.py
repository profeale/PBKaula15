
# 3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

#   13,  Puppy,  12/12/2012 , Macho, 123

# Que se corresponde con los datos de un perro de nuestra base de datos
#  (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). 
# Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .

from utils import *

perro = []
perro.append({
    'id': 13,
    'nombre': 'Puppy',
    'fecha_de_nacimiento': '12/12/2012',
    'sexo': 'Macho',
    'dni': '123'
})


# perro[0].update({'fecha_de_nacimiento': '13/12/2012', 'dni': '28957346'})
print(f"{perro}")

# Escribir en la base de datos el object con los valores de arriba:

write_data()

# Leer los valores y mostrarlos por consola:

read_data()

# Actualizar los valores solicitados:

update_data()
