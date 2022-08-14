CREATE DATABASE IF NOT EXISTS peluqueria;

USE peluqueria;
CREATE TABLE IF NOT EXISTS Perro(
    id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre varchar(50) NULL,
    fecha_de_nacimiento varchar(50) NULL,
    sexo varchar(10) NULL,
    dni varchar(15) NULL
);
DESCRIBE peluqueria;