use ferreteria_local;
-- Insertar datos en la tabla tipo_documento
INSERT INTO tipo_documento (tipo_de_documento) VALUES 
('cedula de ciudadania'),
('cedula extranjera'),
('pasaporte de turista'),
('targeta de identidad');

-- Insertar datos en la tabla tipo_producto
INSERT INTO tipo_producto (tipo_de_producto) VALUES 
('Herramientas'),
('Materiales de Construcción'),
('Pinturas'),
('Electrodomésticos');

-- Insertar datos en la tabla productos
INSERT INTO productos (id_tipo_producto, nombre_producto, precio, cantidad, descripcion) VALUES 
(1, 'Martillo', 15000, 50, 'Martillo de acero'),
(1, 'Destornillador', 8000, 100, 'Destornillador de estrella'),
(2, 'Cemento', 25000, 200, 'Bolsa de cemento 50kg'),
(2, 'Ladrillo', 500, 1000, 'Ladrillo rojo'),
(3, 'Pintura Blanca', 30000, 30, 'Galón de pintura blanca'),
(3, 'Pintura Azul', 32000, 20, 'Galón de pintura azul'),
(4, 'Taladro', 120000, 15, 'Taladro eléctrico'),
(1, 'Sierra', 18000, 40, 'Sierra manual'),
(2, 'Arena', 10000, 300, 'Bolsa de arena 50kg'),
(3, 'Pintura Roja', 31000, 25, 'Galón de pintura roja'),
(4, 'Lijadora', 90000, 10, 'Lijadora eléctrica'),
(1, 'Alicate', 12000, 60, 'Alicate de corte'),
(2, 'Grava', 15000, 150, 'Bolsa de grava 50kg'),
(3, 'Pintura Verde', 32000, 20, 'Galón de pintura verde'),
(4, 'Taladro Inalámbrico', 150000, 12, 'Taladro inalámbrico');

-- Insertar datos en la tabla empleados
INSERT INTO empleados (numero_documento, id_tipo_documento, nombres, apellidos) VALUES 
('1234567890', 1, 'Juan', 'Pérez'),
('2345678901', 1, 'María', 'Gómez'),
('3456789012', 2, 'Carlos', 'Rodríguez'),
('4567890123', 1, 'Ana', 'Martínez'),
('5678901234', 1, 'Luis', 'Fernández'),
('6789012345', 1, 'Sofía', 'López'),
('7890123456', 2, 'Miguel', 'García'),
('8901234567', 1, 'Laura', 'Hernández'),
('9012345678', 1, 'Pedro', 'Ramírez'),
('0123456789', 2, 'Lucía', 'Torres'),
('1123456789', 1, 'Jorge', 'Mendoza'),
('2123456789', 1, 'Elena', 'Castro'),
('3123456789', 2, 'Andrés', 'Moreno'),
('4123456789', 1, 'Paula', 'Ríos'),
('5123456789', 1, 'Diego', 'Vargas');

-- Insertar datos en la tabla usuarios
INSERT INTO usuarios (numero_documento, id_tipo_documento, nombres, apellidos) VALUES 
('1234567890', 1, 'Juan', 'Pérez'),
('2345678901', 1, 'María', 'Gómez'),
('3456789012', 2, 'Carlos', 'Rodríguez'),
('4567890123', 1, 'Ana', 'Martínez'),
('5678901234', 3, 'Luis', 'Fernández'),
('6789012345', 4, 'Sofía', 'López'),
('7890123456', 2, 'Miguel', 'García'),
('8901234567', 1, 'Laura', 'Hernández'),
('9012345678', 1, 'Pedro', 'Ramírez'),
('0123456789', 2, 'Lucía', 'Torres'),
('1123456789', 1, 'Jorge', 'Mendoza'),
('2123456789', 1, 'Elena', 'Castro'),
('3123456789', 2, 'Andrés', 'Moreno'),
('4123456789', 1, 'Paula', 'Ríos'),
('5123456789', 1, 'Diego', 'Vargas');

-- Insertar datos en la tabla facturas
INSERT INTO facturas (id_usuarios, cantidad) VALUES 
(1, 5),
(2, 3),
(3, 7),
(4, 2),
(5, 4),
(6, 6),
(7, 8),
(8, 1),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Insertar datos en la tabla factura_productos
INSERT INTO factura_productos (id_facturas, id_productos) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);