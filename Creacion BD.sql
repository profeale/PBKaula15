##PREPRARACION DE LA ESTRUCTURA DE LA BASE DE DATOS

create database tp_integrador;
use tp_integrador;


CREATE TABLE `Dueno` (
  `dni` int NOT NULL PRIMARY KEY,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `telefono` bigint NOT NULL,
  `direccion` varchar(200) NULL
);

CREATE TABLE `Historial` (
  `id_historial` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fecha` datetime NOT NULL,
  `perro` int NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `monto` float NOT NULL
);

-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.


CREATE TABLE `Perro` (
  `id_perro` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(150) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `dni_dueno` int NOT NULL
);


ALTER TABLE `Perro`
ADD FOREIGN KEY (`dni_dueno`) REFERENCES `Dueno` (`dni`) ON DELETE CASCADE;

ALTER TABLE `Historial`
ADD FOREIGN KEY (`perro`) REFERENCES `Perro` (`id_perro`) ON DELETE CASCADE;