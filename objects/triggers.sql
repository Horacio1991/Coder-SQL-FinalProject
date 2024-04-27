USE envios_paquetes;

-- Trigger para registrar cambios en el estado de los paquetes
DELIMITER //

CREATE TRIGGER tr_estado_paquete AFTER UPDATE ON PAQUETE
FOR EACH ROW
BEGIN
    INSERT INTO LOG_CAMBIOS_PAQUETE (COD_PAQUETE, FECHA_CAMBIO, ESTADO_ANTERIOR, ESTADO_ACTUAL)
    VALUES (NEW.COD_PAQUETE, NOW(), OLD.ESTADO, NEW.ESTADO);
END //

DELIMITER ;

-- Actualizar el estado de un paquete
UPDATE PAQUETE SET ESTADO = TRUE WHERE COD_PAQUETE = 1;

-- Verificar el registro del cambio en la tabla LOG_CAMBIOS_PAQUETE
SELECT * FROM LOG_CAMBIOS_PAQUETE;