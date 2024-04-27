USE envios_paquetes;

-- Vista: vista_paquetes_por_cliente
CREATE VIEW vista_paquetes_por_cliente AS
	SELECT C.COD_CLIENTE, C.NOMBRE, C.APELLIDO, P.COD_PAQUETE, P.FECHA_ENVIO, P.ESTADO, PR.NOMBRE AS PRODUCTO, PR.DESCRIPCION, PR.PESO, PR.PRECIO
	FROM CLIENTE C
	JOIN PAQUETE P ON C.COD_CLIENTE = P.COD_CLIENTE
	JOIN PRODUCTO PR ON P.COD_PAQUETE = PR.COD_PAQUETE;
    
SELECT * FROM vista_paquetes_por_cliente;

-- Vista: vista_empleados_por_sucursal
CREATE VIEW vista_empleados_por_sucursal AS
	SELECT S.COD_SUCURSAL, S.DIRECCION, E.COD_EMPLEADO, E.NOMBRE, E.APELLIDO, E.DOMICILIO, E.TELEFONOS
	FROM SUCURSAL S
	JOIN EMPLEADO E ON S.COD_SUCURSAL = E.COD_SUCURSAL;
    
SELECT * FROM vista_empleados_por_sucursal;

-- Vista: vista_envios_por_fecha
CREATE VIEW vista_envios_por_fecha AS
	SELECT P.COD_PAQUETE, P.FECHA_ENVIO, C.COD_CLIENTE, C.NOMBRE AS NOMBRE_CLIENTE, C.APELLIDO AS APELLIDO_CLIENTE, E.COD_EMPLEADO, E.NOMBRE AS NOMBRE_EMPLEADO, E.APELLIDO AS APELLIDO_EMPLEADO, PR.NOMBRE AS PRODUCTO, PR.DESCRIPCION, PR.PESO, PR.PRECIO
	FROM PAQUETE P
	JOIN CLIENTE C ON P.COD_CLIENTE = C.COD_CLIENTE
	JOIN EMPLEADO E ON P.COD_EMPLEADO = E.COD_EMPLEADO
	JOIN PRODUCTO PR ON P.COD_PAQUETE = PR.COD_PAQUETE;

SELECT * FROM vista_envios_por_fecha;