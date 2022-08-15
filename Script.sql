CREATE DATABASE valoracion_final;
USE valoracion_final;

CREATE TABLE dueno (
DNI varchar(8) PRIMARY KEY NOT NULL,
Nombre varchar(25) NOT NULL,
Apellido varchar(25) NOT NULL,
Telefono varchar(15) NOT NULL,
Direccion varchar(50) NOT NULL
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES ("23546987", "Rodolfo", "Paez", "1123457865", "Calle Sin Nombre 1234");

CREATE TABLE perro (
ID_perro int PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre varchar(25) NOT NULL,
Fecha_nac date,
Sexo char(10) NOT NULL,
DNI_dueno varchar(8) NOT NULL,
FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
);

INSERT INTO perro (Nombre, Fecha_nac, Sexo, DNI_dueno)
VALUES ("Fido", "2012-12-12", "Macho", "23546987");

CREATE TABLE historial (
ID_Historial int PRIMARY KEY AUTO_INCREMENT NOT NULL,
Fecha date,
Perro int NOT NULL,
FOREIGN KEY (Perro) REFERENCES perro(ID_perro),
Descripcion text(250),
monto double(5,2) NOT NULL
);

/* ejercicio 4 base de datos (Actualice la fecha de nacimiento de algún animal (perro) que usted considere.) */

UPDATE perro
SET Fecha_nac = "2015-08-09"
WHERE DNI_dueno = "23546987";
