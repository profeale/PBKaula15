## INSERTAR REGISTROS EN TABLA DUEÑO Y PERRO 

INSERT INTO `Dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`)
VALUES 
('27365693', 'Esteban ', 'Perez', '3541968425', 'Urquiza 385, Cosquin, Cordoba'),
('48365823', 'Agustina ', 'Estevez', '3541698752','Pio X 426, Cosquin, Cordoba'),
('35426986', 'Pablo', 'Gonzalezz', '3541952364', 'Santa Fe 797, Cosquin, Cordoba');

INSERT INTO `Perro` (`nombre`, `fecha_nac`, `sexo`, `dni_dueno`)
VALUES 
('Pepe', '2021-06-15', 'H', '27365693'),
('Nemo', '2022-8-12', 'H', '27365693'),
('Luli', '2022-01-12', 'M', '48365823'),
('Roky', '2020-07-23', 'H', '35426986'),
('Mumi', '2016-07-23', 'M', '35426986');

INSERT INTO `Historial` (`fecha`, `perro`, `descripcion`, `monto`)
VALUES 
('2022-03-15 15:35:00', '1', 'Peluqueria', '1000'),
('2021-04-07 15:35:00', '1', 'Peluqueria', '500'),
('2020-10-20 15:35:00', '3', 'Peluqueria', '1000'),
('2022-01-15 15:35:00', '3', 'Peluqueria', '1000'),
('1995-12-20 15:35:00', '3', 'Peluqueria', '5000'),
('1990-03-15 15:35:00', '2', 'Clinica', '4000'),
('1990-03-15 15:35:00', '2', 'Clinica', '4000'),
('2021-08-29 15:35:00', '1', 'Clinica', '5000'),
('2022-07-07 15:35:00', '1', 'Peluqueria', '1500'),
('2022-07-01 15:35:00', '3', 'Peluqueria', '1500'),
('2018-07-07 20:35:00', '4', 'Clinica', '3500'),
('2020-07-01 09:35:00', '5', 'Clinica', '7000');