-------------------------------------1-----------------------------------
SELECT codigo_oficina, ciudad FROM oficina;
-------------------------------------2-----------------------------------
SELECT ciudad, telefono FROM oficina WHERE pais = "España";
-------------------------------------3-----------------------------------
SELECT nombre, apellido1, apellido2, email FROM empleado WHERE codigo_jefe = 7;
-------------------------------------4-----------------------------------
SELECT puesto, nombre, apellido1, apellido2, email FROM empleado WHERE codigo_jefe IS NULL;
-------------------------------------5-----------------------------------
SELECT nombre, apellido1, apellido2, puesto FROM empleado WHERE NOT puesto = "Representante Ventas";
SELECT nombre, apellido1, apellido2, puesto FROM empleado WHERE puesto != "Representante Ventas";
SELECT nombre, apellido1, apellido2, puesto FROM empleado WHERE puesto <> "Representante Ventas";
-------------------------------------6-----------------------------------
SELECT nombre_cliente FROM cliente WHERE pais = "Spain";
-------------------------------------7-----------------------------------
SELECT DISTINCT estado FROM pedido;
-------------------------------------8-----------------------------------
SELECT DISTINCT codigo_cliente FROM  pago WHERE YEAR(p.fecha_pago)=2008;
SELECT DISTINCT codigo_cliente FROM  pago WHERE DATE_FORMAT(p.fecha_pago, "%Y")=2008;
SELECT DISTINCT codigo_cliente FROM  pago WHERE fecha_pago LIKE "%2008%";
SELECT DISTINCT codigo_cliente FROM  pago WHERE fecha_pago BETWEEN "2008-01-01" AND "2008-12-31";
-------------------------------------9-----------------------------------
SELECT codigo_pedido, codigo_cliente,fecha_esperada, fecha_entrega FROM pedido WHERE fecha_entrega>fecha_esperada;
-------------------------------------10----------------------------------
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega FROM pedido WHERE fecha_esperada>=(ADDDATE(fecha_entrega, INTERVAL 2 DAY));
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega FROM pedido WHERE fecha_esperada>=(ADDDATE(fecha_entrega,2));
/*Calcular la diferencia entre las 2 fechas*/
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega FROM pedido WHERE DATEDIFF(fecha_esperada, fecha_entrega)>=2;
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega FROM pedido WHERE (fecha_esperada-fecha_entrega)>=2;
-------------------------------------11----------------------------------
SELECT * FROM pedido WHERE estado ="Rechazado" AND YEAR(fecha_pedido)=2009;
-------------------------------------12----------------------------------
SELECT * FROM pedido WHERE estado ="Entregado" AND MONTH(fecha_entrega)=01;
-------------------------------------13----------------------------------
SELECT * FROM pago WHERE YEAR(fecha_pago)=2008 AND forma_pago ="PayPal" ORDER BY total DESC;
-------------------------------------14----------------------------------
SELECT DISTINCT forma_pago FROM pago;
-------------------------------------15----------------------------------
SELECT * FROM producto WHERE gama ="Ornamentales" AND cantidad_en_stock > 100 ORDER BY precio_venta DESC;
-------------------------------------16----------------------------------
SELECT * FROM cliente WHERE ciudad = "Madrid" AND codigo_empleado_rep_ventas IN (11,30);