---------------------------1---------------------------
SELECT marca, count(*) FROM tblusuarios GROUP BY marca;
---------------------------2---------------------------
SELECT nombre, telefono FROM tblusuarios WHERE NOT marca = "LG";
--WHERE marca != "LG";
---------------------------3---------------------------
SELECT DISTINCT compañia FROM tblusuarios ORDER BY compañia;
---------------------------4---------------------------
SELECT SUM(saldo) FROM tblusuarios WHERE compañia = "UNEFON";
---------------------------5---------------------------
SELECT email FROM tblusuarios WHERE email LIKE "%hotmail%";
---------------------------6---------------------------
SELECT nombre FROM tblusuarios WHERE saldo = 0 OR activo = 0;
---------------------------7---------------------------
SELECT usuario, telefono FROM tblusuarios WHERE compañia IN ("IUSACELL", "TELCEL");
---------------------------8---------------------------
SELECT DISTINCT marca FROM tblusuarios ORDER BY marca;
---------------------------9---------------------------
SELECT DISTINCT marca FROM tblusuarios ORDER BY marca;
---------------------------10--------------------------
SELECT usuario, telefono FROM tblusuarios WHERE compañia IN ("IUSACELL", "UNEFON");
---------------------------11--------------------------
SELECT nombre, telefono FROM tblusuarios WHERE NOT marca IN ("MOTOROLA", "NOKIA");
---------------------------12--------------------------
SELECT SUM(saldo) FROM tblusuarios WHERE compañia = "TELCEL"