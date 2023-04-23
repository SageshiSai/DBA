DELIMITER $$
DROP FUNCTION IF EXISTS obtener_email$$
CREATE FUNCTION obtener_email (vNombre VARCHAR (50)) RETURNS VARCHAR(100)
BEGIN 
DECLARE EMAIL VARCHAR(100);
SET EMAIL = (SELECT alumnos2.email FROM alumnos2 WHERE alumnos2.nombre = vNombre);
RETURN EMAIL;
END$$
SELECT obtener_email("Kevin")$$
DELIMITER $$
DROP FUNCTION IF EXISTS obtener_email$$
CREATE FUNCTION obtener_email (vid INT)
RETURNS VARCHAR(100)
BEGIN
  DECLARE EMAIL VARCHAR(100);
  
  SET EMAIL = (SELECT alumnos2.email FROM alumnos2 WHERE vid = alumnos2.id);
  
  RETURN EMAIL  ;
END$$
SELECT obtener_email(1)$$