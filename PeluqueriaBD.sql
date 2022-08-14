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
 VALUES (6562983, 'Pablo', 'Perez', 3426567296, '9 de julio 654'),
(31562983, 'Marta', 'Juarez', 3543897296, 'Neruda 654'),
(42562983, 'Juana', 'Gimenez', 3516897296, 'Juan b justo 654'),
(2062983, 'David', 'Pereyra', 3512467295, 'San Martin 654'),
(1562983, 'Marcelo', 'Pol', 3515897897, 'Otra calle 654');

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
 VALUES ('Lolo', '25/05/2022', 'macho', 2563983),
('Umma', '05/05/2020', 'hembra', 2563983),
('Olivia', '10/02/2019', 'hembra', 6562983),
('Shelvy', '24/12/2016', 'macho', 1562983),
('Rocco', '12/03/2022', 'macho', 2062983);

SELECT Nombre_perro FROM Perro inner join Dueno on Perro.DNI_dueno = Dueno.DNI
WHERE Nombre = 'Pedro';
