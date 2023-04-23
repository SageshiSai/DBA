--CREA UN PROCEDIMIENTO PARA CREAR EMAILS CON LOS DOS PRIMEROS DIGITGOS DEL NOMBRE, APELLIDO, SEGUNDO APELLIDO y DETRAS DEL @ EL DOMINIO
DELIMITER $$
DROP PROCEDURE IF EXISTS emails$$
CREATE PROCEDURE emails (IN Nombre VARCHAR(20), IN Apellido1 VARCHAR(20), IN Apellido2 VARCHAR(20), IN Dominio VARCHAR(20))
BEGIN
DECLARE email VARCHAR(100);
SET email = LOWER(CONCAT(SUBSTRING(Nombre, 1,2), SUBSTRING(Apellido1, 1,2), SUBSTRING(Apellido2, 1,2), "@", Dominio, ".com"));
SELECT email AS nuevo_email;
END$$

CALL emails("Kevin", "Patiño", "Sanchez", "SageshiSai");

DELIMITER $$
DROP PROCEDURE IF EXISTS crear_email$$
CREATE PROCEDURE crear_email (IN nombre VARCHAR(50),IN apellido1 VARCHAR(50),IN apellido2 VARCHAR(50),IN dominio VARCHAR(50), OUT email VARCHAR(100))
BEGIN
SET email = LOWER(CONCAT(SUBSTRING(nombre,1,1),SUBSTRING(apellido1,1,3),SUBSTRING(apellido2,1,3),"@",dominio,".com"));
END$$
/*LLAMADA*/
CALL crear_email ("Kevin", "Leonardo","Patiño","FPZornotza",@email);
SELECT @email AS nuevo_email;

