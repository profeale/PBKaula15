CREATE DATABASE Peluqueria;
USE Peluqueria;
CREATE TABLE Dueno(
DNI int PRIMARY KEY NOT NULL,
Nombre varchar(25) NOT NULL,
Apellido varchar(25) NOT NULL,
Telefono varchar(10) NOT NULL,
Direccion varchar(100) NOT NULL
);
ALTER TABLE Dueno MODIFY Telefono BIGINT;

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
 VALUES (15522283, "Alejandro", "Lopez", 3515567296, "25 de mayo 1810"),
(27145222, "Maria", "Gerez", 35473897296, "Ombu 1274"),
(30152365, "Jose", "Garcia", 3516897296, "Colon 1294"),
(20629283, "Dalila", "Perez", 3512467295, "Santo Tome 2323"),
(44623983, "Juan", "Battaglino", 3515897897, "Peron 1945");

SELECT * FROM Dueno;

CREATE TABLE Perro (
ID_Perro int auto_increment primary key,
Nombre varchar(25) NOT NULL,
Fecha_nac date NOT NULL,
Sexo varchar(1) NOT NULL,
DNI_dueno int NOT NULL,
FOREIGN KEY (DNI_dueno) references Dueno(DNI)
);
ALTER TABLE Perro MODIFY Fecha_nac varchar(25);
ALTER TABLE Perro MODIFY Sexo varchar(10);
ALTER TABLE Perro RENAME COLUMN Nombre TO Nombre_perro;
SELECT * FROM Perro;

INSERT INTO Perro(Nombre_perro, Fecha_nac, Sexo, DNI_dueno)
 VALUES ("Titi", "20/08/2020", "hembra", 15522283),
("Toto", "05/03/2022", "macho", 27145222),
("Kilmes", "14/11/2021", "macho", 30152365),
("Mancha", "20/01/2018", "hembra", 20629283),
("Mentiras", "14/08/2019", "macho", 44623983);

"""Ejercicio Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123"""
UPDATE dueno
SET Direccion = "Libertad 123"
WHERE DNI_dueno = "30152365";