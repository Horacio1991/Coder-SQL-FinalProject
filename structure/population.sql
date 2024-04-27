USE envios_paquetes;

INSERT INTO SUCURSAL (COD_SUCURSAL, DIRECCION, TELEFONOS) VALUES
(1, 'Calle 123, Ciudad X', '123456789'),
(2, 'Avenida Principal, Ciudad Y', '987654321'),
(3, 'Calle Central, Ciudad Z', '111222333');

INSERT INTO EMPLEADO (COD_SUCURSAL, NOMBRE, APELLIDO, DOMICILIO, TELEFONOS) VALUES
(1, 'Juan', 'Perez', 'Calle 456, Ciudad X', '987654321'),
(1, 'Maria', 'Gomez', 'Calle 789, Ciudad X', '123456789'),
(2, 'Pedro', 'Martinez', 'Avenida Secundaria, Ciudad Y', '654987321'),
(2, 'Laura', 'Lopez', 'Calle 567, Ciudad Y', '789123456'),
(3, 'Ana', 'Garcia', 'Calle 890, Ciudad Z', '456789123');

INSERT INTO AUTOMOVIL (COD_SUCURSAL, PATENTE, MODELO) VALUES
(1, 'ABC123', 'Toyota Corolla'),
(1, 'XYZ789', 'Ford Fiesta'),
(2, 'DEF456', 'Chevrolet Aveo'),
(3, 'GHI789', 'Nissan Sentra');

INSERT INTO CLIENTE (COD_CLIENTE, NOMBRE, APELLIDO, DOMICILIO, TELEFONOS) VALUES
(1, 'Carlos', 'Lopez', 'Calle Principal, Ciudad Z', '987654321'),
(2, 'Ana', 'Garcia', 'Avenida Central, Ciudad W', '123456789'),
(3, 'Roberto', 'Martinez', 'Avenida Sur, Ciudad X', '789456123');

INSERT INTO PAQUETE (COD_PAQUETE, COD_CLIENTE, COD_EMPLEADO, FECHA_ENVIO, ESTADO) VALUES
(1, 1, 1, '2024-03-01', 1),
(2, 2, 2, '2024-03-02', 1),
(3, 3, 3, '2024-03-03', 1);

INSERT INTO PRODUCTO (COD_PRODUCTO, COD_PAQUETE, NOMBRE, DESCRIPCION, PESO, PRECIO) VALUES
(1, 1, 'Libro', 'Novela de ficción', 0.5, 20.99),
(2, 1, 'Camiseta', 'Talla M, color rojo', 0.3, 15.50),
(3, 2, 'Zapatos', 'Zapatos deportivos, talla 8', 0.7, 50.00),
(4, 3, 'Teléfono', 'Smartphone de última generación', 0.4, 600.00);
