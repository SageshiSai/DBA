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

DELIMITER $$
DROP PROCEDURE IF EXISTS crear_email$$
CREATE PROCEDURE crear_email (IN vnombre VARCHAR(50), vapellido1 VARCHAR(50), vapellido2 VARCHAR(50), dominio VARCHAR(50))
BEGIN
SELECT * FROM 
