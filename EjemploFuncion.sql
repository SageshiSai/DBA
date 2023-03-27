DELIMITER ;;
DROP FUNCTION IF EXISTS contar_productos;;
CREATE FUNCTION contar_productos (gama VARCHAR(50)) RETURNS INT
BEGIN
-- Paso 1. Declaramos una variable local

DECLARE total INT;

-- PASO 2. Contamos los productos

SET total = (
    SELECT COUNT(*) FROM producto
    WHERE producto.gama = gama
);
-- Paso 3. Devolvemos el resultado 
RETURN total;
END;;
DELIMITER ;;
SELECT contar_productos("Frutales");;

DELIMITER ;;
DROP FUNCTION IF EXISTS obtener_nombrecliente;;
CREATE FUNCTION obtener_nombrecliente (codigo INT) RETURNS VARCHAR(50)
BEGIN
DECLARE nombre VARCHAR(50);
SET nombre = (
    SELECT nombre_cliente FROM cliente WHERE cliente.codigo_cliente = codigo
);
RETURN nombre;
END;;
DELIMITER ;;
SELECT obtener_nombrecliente(1);;