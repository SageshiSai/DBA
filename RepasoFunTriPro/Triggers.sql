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
ON alumnos FOR a*1.10;
END IF;EACH ROW
BEGIN
IF NEW.nota > OLD.nota THEN
SET NEW.nota=NEW.not
END$$
DELIMITER $$
DROP TRIGGER IF EXISTS crear_email$$
CREATE TRIGGER crear_email
BEFORE INSERT
ON alumnos2
FOR EACH ROW
BEGIN 
    SET NEW.email = LOWER(CONCAT(NEW.nombre,".",NEW.apellido1, ".", NEW.apellido2, "SageshiSai.com"));
END$$

INSERT INTO alumnos2 (nombre, apellido1, apellido2)
VALUES("Kevin", "Patiño", "Sanchez");