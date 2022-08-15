CREATE DATABASE Peluqueria_Canina_MondoCane;

USE Peluqueria_canina_mondocane;

CREATE TABLE Dueno (
    DNI INT NOT NULL,
    Nombre VARCHAR (40) NOT NULL,
    Apellido VARCHAR (40) NOT NULL,
    Telefono INT NOT NULL,
    Dirección VARCHAR (60) NOT NULL,
    PRIMARY KEY (DNI)
);

CREATE TABLE Perro (
    ID_Perro INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (40) NOT NULL,
    Fecha_nacimiento DATE NOT NULL,
    Sexo CHAR NOT NULL,
    DNI_Dueno INT NOT NULL,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial (
    ID_Historial INT NOT NULL AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Perro INT NOT NULL,
    Descripción VARCHAR (100) NOT NULL,
    Monto DECIMAL NOT NULL,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Dirección) VALUES ('43997671', 'Lucia', 'Sanchez', '3512493012', 'Benito Graña 80');

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Dirección) VALUES ('41645852', 'Mauro', 'Lopez', '3512105687', 'Sarmiento  2171');

INSERT INTO Perro (Nombre, Fecha_nacimiento, Sexo, DNI_dueno) VALUES ('Carlos', '2020-05-06', 'M', '43997671');

INSERT INTO Perro (Nombre, Fecha_nacimiento, Sexo, DNI_dueno) VALUES ('Pedro', '2018-10-11', 'F', '41645852');

SELECT * FROM dueno;

SELECT * FROM perro;

-- EJERCICIO 9 --

UPDATE Dueno SET Dirección = 'Libertad 123' WHERE DNI = 41645852;