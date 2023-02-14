-------------------------------------1-----------------------------------
SELECT p.* FROM cliente c, pedido p, comercial co WHERE c.id = p.id_cliente AND p.id_comercial = co.id ORDER BY fecha;
-------------------------------------2-----------------------------------
SELECT p.* FROM cliente c, pedido p, comercial co WHERE c.id = p.id_cliente AND p.id_comercial = co.id ORDER BY total DESC LIMIT 2;
-------------------------------------3-----------------------------------
SELECT DISTINCT id_cliente FROM pedido WHERE id_cliente IN (SELECT id FROM cliente);
SELECT DISTINCT id_cliente FROM pedido
-------------------------------------4-----------------------------------
SELECT * FROM pedido WHERE YEAR(fecha) = 2017 AND total > 500;
-------------------------------------5-----------------------------------
SELECT nombre, apellido1, apellido2, comisión FROM comercial WHERE comisión >= 0.05 AND comisión <= 0.11;
SELECT nombre, apellido1, apellido2, comisión FROM comercial WHERE comisión BETWEEN 0.05 AND  0.11;
-------------------------------------6-----------------------------------
SELECT max(comisión) FROM comercial;

SELECT comisión FROM comercial ORDER BY comisión DESC LIMIT 1;
-------------------------------------7-----------------------------------
SELECT id, nombre, apellido1 FROM cliente WHERE NOT apellido2 = "NULL" ORDER BY apellido1, nombre;
SELECT id, nombre, apellido1 FROM cliente WHERE apellido2 IS NOT NULL ORDER BY apellido1, nombre;
-------------------------------------8-----------------------------------
SELECT nombre FROM cliente WHERE UPPER(nombre) LIKE "A%N" OR UPPER(nombre) LIKE "P%" ORDER BY nombre;
-------------------------------------9-----------------------------------
SELECT nombre FROM cliente WHERE NOT UPPER(nombre) LIKE "A%" ORDER BY nombre;
-------------------------------------10----------------------------------
SELECT DISTINCT nombre FROM comercial WHERE LOWER(nombre) LIKE "%el" OR LOWER(nombre) LIKE "%o";