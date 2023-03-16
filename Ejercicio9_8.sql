CREATE TABLE alumnos2 (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    nombre VARCHAR (50) NOT NULL ,
    apellido1 VARCHAR (50) NOT NULL ,
    apellido2 VARCHAR (50),
    email VARCHAR (50)
);
DELIMITER $$
DROP TRIGGER IF EXISTS crear_email$$
CREATE TRIGGER crear_email
AFTER INSERT
ON alumnos2 
FOR EACH ROW
BEGIN
    SET NEW.email = LOWER(CONCAT(NEW.nombre, '.', NEW.apellido1, '.', NEW.apellido2, "@fpzornotza.com"));
END$$
DELIMITER $$
DROP TRIGGER IF EXISTS AUMENTAR_NOTA$$
CREATE TRIGGER AUMENTAR_NOTA
BEFORE UPDATE
ON alumnos FOR EACH ROW
BEGIN
IF NEW.nota > OLD.nota THEN
SET NEW.nota=NEW.nota*1.10;
END IF;
END$$

DELIMITER $$
DROP PROCEDURE IF EXISTS listar_productos$$
CREATE PROCEDURE listar_productos (IN vgama VARCHAR(50))
BEGIN
SELECT * FROM producto
WHERE producto.gama=vgama;
END$$
--LLAMADA
CALL listar_productos ("Herramientas")
------------------------------------------------------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS crear_email$$
CREATE PROCEDURE crear_email (IN vnombre VARCHAR(50),IN vapellido1 VARCHAR(50),IN vapellido2 VARCHAR(50),IN dominio VARCHAR(50))
BEGIN
DECLARE email VARCHAR(100);
SET email = LOWER(CONCAT(SUBSTRING(vnombre,1,1),SUBSTRING(vapellido1,1,3),SUBSTRING(vapellido2,1,3),"@",dominio,".com"));
SELECT email AS nuevo_email;
END$$

CALL crear_email ("Kevin", "Leonardo","Patiño","FPZornotza")

DELIMITER $$
DROP PROCEDURE IF EXISTS crear_email$$
CREATE PROCEDURE crear_email (IN nombre VARCHAR(50),IN apellido1 VARCHAR(50),IN apellido2 VARCHAR(50),IN dominio VARCHAR(50), OUT email VARCHAR(100))
BEGIN
SET email = LOWER(CONCAT(SUBSTRING(nombre,1,1),SUBSTRING(apellido1,1,3),SUBSTRING(apellido2,1,3),"@",dominio,".com"));
END$$
/*LLAMADA*/
CALL crear_email ("Kevin", "Leonardo","Patiño","FPZornotza",@email);
SELECT @email AS nuevo_email;
-----------------------------------------------------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS get_cliente$$
CREATE PROCEDURE  get_cliente(IN codigocliente INT, OUT nombrecliente VARCHAR(50))
BEGIN
SELECT nombre_cliente FROM cliente WHERE codigo_cliente = codigocliente;
END$$

CALL get_cliente(1, @nombre);
SELECT @nombre AS "Nombre Cliente";

DELIMITER $$
DROP PROCEDURE IF EXISTS get_cliente$$
CREATE PROCEDURE  get_cliente(IN codigocliente INT)
BEGIN
DECLARE nombre VARCHAR(50);
nombre = SELECT nombre_cliente FROM cliente WHERE codigo_cliente = codigocliente;
SELECT nombre AS "Nombre Cliente";
END$$
--LLAMADA--
CALL get_cliente(1);


DELIMITER $$
DROP PROCEDURE IF EXISTS get_empleado$$
CREATE PROCEDURE get_empleado(OUT nombreempleado VARCHAR(50))
BEGIN
SELECT nombre FROM empleado;
END$$
CALL get_empleado(@nombre);
SELECT @nombre AS "Nombre Empleados";
----------------------------------------------------------------------------------------
DELIMITER $$
DROP TRIGGER IF EXISTS trigger_check_email$$
CREATE TRIGGER trigger_check_email
BEFORE INSERT
ON alumnos2 
FOR EACH ROW
BEGIN
IF NEW.email is null then
SET NEW.email = LOWER(CONCAT(NEW.nombre, NEW.apellido1, NEW.apellido2, "@fpzornotza.com"));
END IF;

END$$