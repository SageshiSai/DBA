-------------------------------------1-----------------------------------
SELECT round(sum(total),2) FROM pedido;
TRUNCATE(AVG(total),2)
-------------------------------------2-----------------------------------
SELECT AVG(total) FROM pedido;
-------------------------------------3-----------------------------------
SELECT COUNT(DISTINCT (id_comercial)) FROM pedido;
-------------------------------------4-----------------------------------
SELECT COUNT(id) FROM cliente;
-------------------------------------5-----------------------------------
SELECT MAX(total) FROM pedido;
SELECT id, total FROM pedido WHERE total = (SELECT MAX(total) FROM pedido);
SELECT id, total FROM pedido ORDER BY total DESC LIMIT 1;
-------------------------------------6-----------------------------------
SELECT MIN(total) FROM pedido;
SELECT id, total FROM pedido WHERE total = (SELECT MIN(total) FROM pedido);
SELECT id, total FROM pedido ORDER BY total ASC LIMIT 1;
-------------------------------------7-----------------------------------
SELECT id, MAX(categoria) FROM cliente GROUP BY ciudad;
-------------------------------------8-----------------------------------
SELECT c.id, nombre, apellido1, apellido2, fecha, MAX(total) FROM pedido p, cliente c WHERE p.id_cliente = c.id GROUP BY fecha;
-------------------------------------9-----------------------------------
SELECT max(total) from pedido Where total>2000 GROUP BY id_cliente, fecha;
-------------------------------------10----------------------------------
SELECT id_comercial, c.nombre, c.apellido1, c.apellido2, p.total, max(total) FROM pedido p, comercial c WHERE p.id_comercial = c.id AND fecha = "2016-06-17" GROUP BY id_comercial;
-------------------------------------11----------------------------------
SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.total, COUNT(*) FROM pedido p, cliente c WHERE YEAR(fecha) = 2017 GROUP BY p.id_cliente;
-------------------------------------12----------------------------------
SELECT YEAR(fecha), MAX(total) FROM pedido GROUP BY YEAR(fecha);
-------------------------------------13----------------------------------
SELECT YEAR(fecha), COUNT(*) FROM pedido GROUP BY YEAR(fecha)
