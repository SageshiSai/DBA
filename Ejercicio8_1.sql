-----------------------------------------1--------------------------------------------
INSERT INTO departamento (codigo, nombre, presupuesto) VALUES (8,"LAHACA", 150000);
-----------------------------------------2--------------------------------------------
INSERT INTO departamento (nombre, presupuesto) VALUES ("HACATAKA", 250000);
-----------------------------------------3--------------------------------------------
INSERT INTO departamento (codigo, nombre, presupuesto, gastos) VALUES ( 10,"TIKTUK", 2000000, 3000000);
-----------------------------------------4--------------------------------------------
INSERT INTO empleado (codigo, nif, nombre, apellido1, apellido2, codigo_departamento) VALUES (14, "12345678A", "Lafuka", "Rastafari", "Ratuka", 8);
-----------------------------------------5--------------------------------------------
INSERT INTO empleado (nif, nombre, apellido1, apellido2, codigo_departamento) VALUES ("12345678B", "Futuka", "Rastafari", "Rakun", 9);
-----------------------------------------6--------------------------------------------
CREATE TABLE departamento_backup AS (SELECT * FROM departamento);
-----------------------------------------7--------------------------------------------
DELETE FROM departamento WHERE lower(nombre) = "proyectos";
/*ha sido eliminado correctamente*/
-----------------------------------------8--------------------------------------------
DELETE FROM departamento WHERE lower(nombre) = "desarrollo";
/*No se ha podido eliminar porque esta vinculado a un empleado. Eliminando las claves foraneas que contienen*/
-----------------------------------------9--------------------------------------------
UPDATE departamento SET codigo = 30 WHERE upper(nombre) = "RECURSOS HUMANOS";
/*No se ha podido eliminar porque esta vinculado a un empleado. Eliminando las claves foraneas que contienen*/
-----------------------------------------10-------------------------------------------

-----------------------------------------11-------------------------------------------