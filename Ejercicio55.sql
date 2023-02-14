------------------------------------1------------------------------------
INSERT INTO tblusuarios (usuario, nombre, sexo, nivel, email, telefono, marca, compañia, saldo, activo)
VALUES("FFF1212", "Ane", "M", 3, "ane@gmail.com", 6551116517, "XIAOMI", "EUSKALTEL", 100, 1);
------------------------------------2------------------------------------
INSERT INTO tblusuarios (usuario, nombre, sexo, nivel)
VALUES("FFF1213", "Jon", "H", 0);
------------------------------------3------------------------------------
INSERT INTO tblusuarios (usuario, nombre, sexo, nivel, email, telefono, marca, compañia, saldo, activo)
VALUES("FFF1214", "Maider", "M", 3, " " , 6551116518, "XIAOMI", "LOWI", 100, 1);
------------------------------------4------------------------------------
UPDATE tblusuarios
SET compañia="ATT"
WHERE compañia="AT&T";
------------------------------------5------------------------------------
UPDATE tblusuarios
SET compañia="EUSKALTEL"
WHERE compañia="AXEL";
------------------------------------6------------------------------------
UPDATE tblusuarios
SET compañia="LOWI"
WHERE compañia="IUSACELL";
------------------------------------7------------------------------------
UPDATE tblusuarios
SET saldo=saldo*1.05;
UPDATE tblusuarios
SET saldo=saldo+(saldo*0.05);
------------------------------------8------------------------------------
UPDATE tblusuarios SET nivel = 01 WHERE nivel = 1;
UPDATE tblusuarios SET nivel = 02 WHERE nivel = 2;
UPDATE tblusuarios SET nivel = 03 WHERE nivel = 3;
------------------------------------9------------------------------------
UPDATE tblusuarios SET telefono " 655-111-0202" 
WHERE usuario "JUA2337";
------------------------------------10------------------------------------

 