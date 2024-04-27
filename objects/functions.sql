USE envios_paquetes;

-- Función: calcular_total_envios_por_cliente
DELIMITER //

CREATE FUNCTION calcular_total_envios_por_cliente(cod_cliente INT) RETURNS INT
READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM PAQUETE WHERE COD_CLIENTE = cod_cliente;
    RETURN total;
END //

DELIMITER ;

SELECT calcular_total_envios_por_cliente(1) AS total_envios;

-- Función: obtener_productos_por_paquete
DELIMITER //
CREATE FUNCTION obtener_productos_por_paquete(cod_paquete INT) RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE productos VARCHAR(255);
    SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') INTO productos FROM PRODUCTO WHERE COD_PAQUETE = cod_paquete;
    RETURN productos;
END //
DELIMITER ;


SELECT obtener_productos_por_paquete(1) AS productos_del_paquete;

-- Función: calcular_peso_total_paquete
DELIMITER //

CREATE FUNCTION calcular_peso_total_paquete(cod_paquete INT) RETURNS VARCHAR(20)
READS SQL DATA
BEGIN
    DECLARE peso_total DECIMAL(10,2);
    DECLARE peso_total_str VARCHAR(20);
    SELECT SUM(PESO) INTO peso_total FROM PRODUCTO WHERE COD_PAQUETE = cod_paquete;
    SET peso_total_str = CONCAT(peso_total, ' KG');
    RETURN peso_total_str;
END //

DELIMITER ;

SELECT calcular_peso_total_paquete(2) AS peso_total_del_paquete;

DELIMITER //
