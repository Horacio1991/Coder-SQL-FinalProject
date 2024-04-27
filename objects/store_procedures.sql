USE envios_paquetes;

-- Stored Procedure: sp_actualizar_estado_paquete
DELIMITER //
CREATE PROCEDURE sp_actualizar_estado_paquete(
    IN p_cod_paquete INT,
    IN p_estado BOOLEAN
)
BEGIN
    UPDATE PAQUETE SET ESTADO = p_estado WHERE COD_PAQUETE = p_cod_paquete;
END //
DELIMITER ;

CALL sp_actualizar_estado_paquete(1, FALSE);
SELECT * FROM PAQUETE WHERE COD_PAQUETE = 1;


-- Stored Procedure: sp_obtener_envios_por_fecha
DELIMITER //
CREATE PROCEDURE sp_obtener_envios_por_fecha(
    IN p_fecha_inicio DATE,
    IN p_fecha_fin DATE
)
BEGIN
    SELECT P.COD_PAQUETE, P.FECHA_ENVIO, C.COD_CLIENTE, C.NOMBRE AS NOMBRE_CLIENTE, C.APELLIDO AS APELLIDO_CLIENTE, E.COD_EMPLEADO, E.NOMBRE AS NOMBRE_EMPLEADO, E.APELLIDO AS APELLIDO_EMPLEADO, PR.NOMBRE AS PRODUCTO, PR.DESCRIPCION, PR.PESO, PR.PRECIO 
    FROM PAQUETE P 
    JOIN CLIENTE C ON P.COD_CLIENTE = C.COD_CLIENTE 
    JOIN EMPLEADO E ON P.COD_EMPLEADO = E.COD_EMPLEADO 
    JOIN PRODUCTO PR ON P.COD_PAQUETE = PR.COD_PAQUETE 
    WHERE P.FECHA_ENVIO BETWEEN p_fecha_inicio AND p_fecha_fin;
END //
DELIMITER ;

CALL sp_obtener_envios_por_fecha('2024-01-01', '2024-03-31');