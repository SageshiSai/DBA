-------------------------------------1-----------------------------------
SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2, p.id, p.total FROM pedido p, cliente c WHERE c.id=p.id_cliente ORDER BY c.apellido1, c.apellido2,c.nombre;
-------------------------------------2-----------------------------------
SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.id, p.total FROM pedido p, cliente c WHERE c.id=p.id_cliente ORDER BY c.apellido1, c.apellido2,c.nombre;
-------------------------------------3-----------------------------------
SELECT co.id, co.nombre, co.apellido1, co.apellido2, p.id, p.total FROM pedido p, comercial co WHERE p.id_comercial=co.id ORDER BY co.apellido1, co.apellido2,co.nombre;
-------------------------------------4-----------------------------------
SELECT c.*, co.* FROM cliente c, comercial co, pedido p WHERE c.id=p.id_cliente AND p.id_comercial=co.id;
-------------------------------------5-----------------------------------
SELECT * FROM cliente WHERE id IN (SELECT id_cliente FROM pedido WHERE YEAR(fecha)=2017 AND total BETWEEN 300 AND 1000); 
-------------------------------------6-----------------------------------
SELECT DISTINCT co.nombre, co.apellido1, co.apellido2 FROM cliente c, comercial co, pedido p WHERE c.id=p.id_cliente AND p.id_comercial=co.id AND (c.nombre = "María" AND c.apellido1="Santana" AND c.apellido2="Moreno");
SELECT co.nombre, co.apellido1, co.apellido2 FROM cliente c, comercial co, pedido p WHERE c.id=p.id_cliente AND p.id_comercial=co.id AND (c.nombre = "María" AND c.apellido1="Santana" AND c.apellido2="Moreno") GROUP BY co,name, co.apellido1, co.apellido2;
-------------------------------------7-----------------------------------
SELECT DISTINCT c.nombre FROM cliente c, comercial co, pedido p WHERE c.id=p.id_cliente AND p.id_comercial=co.id AND (co.nombre = "Daniel" AND co.apellido1="Sáez" AND co.apellido2="Vega");
SELECT c.nombre FROM cliente c, comercial co, pedido p WHERE c.id=p.id_cliente AND p.id_comercial=co.id AND (co.nombre = "Daniel" AND co.apellido1="Sáez" AND co.apellido2="Vega") GROUP BY c.nombre;

