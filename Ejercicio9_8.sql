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
BEFORE INSERT
ON alumnos2 
FOR EACH ROW
BEGIN
	IF NEW.nombre IS NOT NULL AND NEW.apellido1 IS NOT NULL AND NEW.apellido2 IS NOT NULL THEN
    SET NEW.email = LOWER(CONCAT(nombre, '.', apellido1, '.', apellido2, '@', "fpzornotza.com"));
    END IF;
END$$
