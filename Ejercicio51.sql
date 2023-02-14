------------------------1------------------------
SELECT nombre FROM tblusuarios;
------------------------2------------------------
SELECT nombre,max(saldo) FROM tblusuarios WHERE sexo LIKE 'M';
------------------------3------------------------
SELECT nombre, telefono FROM tblusuarios WHERE marca in ('NOKIA', 'BLACKBERRY', 'SONY')
OR marca = 'NOKIA'
OR marca = 'BLACKBERRY'
OR marca = 'SONY';
------------------------4------------------------
SELECT count(usuario) FROM tblusuarios WHERE saldo = 0 OR activo = 0;
------------------------5------------------------
SELECT usuario, email   FROM tblusuarios WHERE nivel in (1,2,3)
nivel = 1
OR nivel = 2
OR nivel = 3;
------------------------6------------------------
SELECT telefono FROM tblusuarios WHERE saldo <=300;
------------------------7------------------------
SELECT sum(saldo) FROM tblusuarios WHERE compañia = 'NEXTEL'
compañia LIKE 'NEXTEL';
------------------------8------------------------
SELECT compañia, count(*) FROM tblusuarios GROUP BY compañia
SELECT distinct compañia FROM tblusuarios /*Para ver los grupos que hay*/;
------------------------9------------------------
SELECT nivel, count(*) FROM tblusuarios GROUP BY nivel;
------------------------10-----------------------
SELECT usuario FROM tblusuarios WHERE nivel = 2;
------------------------11-----------------------
SELECT email FROM tblusuarios WHERE email LIKE "%gmail%";
------------------------12-----------------------
SELECT nombre, telefono FROM tblusuarios WHERE marca in ('LG', 'SAMSUMG', 'MOTOROLA')
marca = "LG"
OR marca = "SAMSUMG"
OR marca = "MOTOROLA";
-------------------------------------------------
SELECT marca, count(*) FROM tblusuarios GROUP BY marca