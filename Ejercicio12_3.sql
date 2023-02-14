-------------------------------------1-----------------------------------
SELECT * FROM pedido WHERE id_cliente = (SELECT id FROM cliente WHERE nombre = "Adela" AND apellido1 = "Salas" AND apellido2="Díaz");
-------------------------------------2-----------------------------------
SELECT COUNT(*) from pedido WHERE id_comercial = (SELECT id FROM comercial WHERE nombre = "Daniel" AND apellido1 = "Sáez" AND apellido2="Vega");
-------------------------------------3-----------------------------------
SELECT * FROM cliente WHERE id = (SELECT id_cliente FROM pedido WHERE total = (SELECT max(total)FROM pedido WHERE YEAR(fecha)=2019));
SELECT * FROM cliente WHERE id = (SELECT id_cliente FROM pedido WHERE YEAR(fecha)=2019) ORDER BY total desc LIMIT 1;
-------------------------------------4-----------------------------------
SELECT fecha, MIN(total) as cantidad FROM pedido WHERE id_cliente = 
(SELECT id FROM cliente WHERE nombre = "Pepe" AND apellido1 = "Ruiz" AND apellido2 = "Santana");
-------------------------------------5-----------------------------------
SELECT c.* FROM cliente c, pedido p WHERE c.id = p.id_cliente AND p.total >= 
(SELECT AVG(total) FROM pedido WHERE YEAR(fecha)=2017) AND YEAR(fecha)=2017;
-------------------------------------9-----------------------------------
SELECT * FROM cliente WHERE id not in (SELECT id_cliente FROM pedido);
-------------------------------------10----------------------------------
SELECT * FROM comercial WHERE id not in (SELECT id_comercial FROM pedido);
-------------------------------------11----------------------------------
SELECT * FROM cliente 
WHERE NOT EXISTS (SELECT id_cliente FROM pedido WHERE cliente.id = pedido.id_cliente);
-------------------------------------12----------------------------------
SELECT * FROM comercial 
WHERE NOT EXISTS (SELECT id_comercial FROM pedido WHERE comercial.id = pedido.id_comercial);
-------------------------------------13----------------------------------
SELECT sum(total) as "total de pedidos" FROM pedido o, cliente c WHERE c.id = p.id_cliente and c.nombre="Marcos" AND apellido1="Loyola";
SELECT sum(total) as "Total de pedidos" From pedido INNER JOIN cliente on pedido.id_cliente=cliente.id WHERE nombre="Marcos" AND apellido1="Loyola";
