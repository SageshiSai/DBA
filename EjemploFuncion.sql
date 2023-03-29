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

--PROCEDIMIENTO
DELIMITER $$
DROP PROCEDURE IF EXISTS get_infocliente$$
CREATE PROCEDURE get_infocliente()
BEGIN
SELECT * FROM cliente;
END$$
CALL get_infocliente();

DELIMITER ;;
DROP PROCEDURE IF EXISTS inserta_pago;;
CREATE PROCEDURE inserta_pago(IN vcodigo_cliente INT,IN vforma_pago VARCHAR(50),IN vtotal INT)
BEGIN
IF vtotal > 10000 THEN
    SET vtotal = vtotal * 0.9;
END IF;
INSERT INTO pago (codigo_cliente, forma_pago,total)
VALUES(vcodigo_cliente,vforma_pago,vtotal);
END;;
DELIMITER ;;
CALL inserta_pago(1,"PayPal",15000);;

DELIMITER ;;
DROP PROCEDURE IF EXISTS inserta_alumno;;
CREATE PROCEDURE inserta_alumno(IN vnombre VARCHAR(20), IN vapellido1 VARCHAR(20), IN vapellido2 VARCHAR(20), IN vnota FLOAT, IN vedad INT)
BEGIN
DECLARE tipoedad VARCHAR(30);
IF (vedad >= 60) THEN
    SET tipoedad = "JUBILADO";
ELSEIF (vedad >= 25 AND vedad < 60) THEN
    SET tipoedad = "ADULTO";
ELSEIF (vedad >= 12 AND vedad < 25) THEN
    SET tipoedad = "JOVEN";
ELSEIF (vedad < 12) THEN
    SET tipoedad = "NIÑO";
END IF;
INSERT INTO alumnos (nombre, apellido1, apellido2, nota, edad) VALUES (vnombre, vapellido1, vapellido2, vnota, tipoedad);
END;;
DELIMITER ;;
CALL inserta_alumno("Kevin", "Patiño", "Sanchez", 10, 19);;
