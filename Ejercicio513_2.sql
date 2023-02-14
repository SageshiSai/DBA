-------------------------------------1-----------------------------------
SELECT c.nombre_cliente, e.nombre, e.apellido1, e.apellido2 FROM cliente c, empleado e WHERE c.codigo_empleado_rep_ventas = e.codigo_empleado;
-------------------------------------2-----------------------------------
SELECT DISTINCT c.nombre_cliente, e.nombre, e.apellido1, e.apellido2 FROM cliente c, empleado e, pago p WHERE c.codigo_cliente = p.codigo_cliente AND c.codigo_empleado_rep_ventas = e.codigo_empleado;
-------------------------------------3-----------------------------------
SELECT DISTINCT c.nombre_cliente, e.nombre, e.apellido1, e.apellido2 FROM cliente c, empleado e, pago p WHERE not p.codigo_cliente != c.codigo_cliente AND c.codigo_empleado_rep_ventas = e.codigo_empleado;
-------------------------------------4-----------------------------------
SELECT DISTINCT c.nombre_cliente, e.nombre, e.apellido1, o.ciudad FROM cliente c, empleado e, pago p, oficina o WHERE c.codigo_cliente = p.codigo_cliente AND c.codigo_empleado_rep_ventas = e.codigo_empleado AND e.codigo_oficina=o.codigo_oficina;
-------------------------------------5-----------------------------------
SELECT DISTINCT c.nombre_cliente, e.nombre, e.apellido1, o.ciudad FROM cliente c, empleado e, pago p, oficina o WHERE not c.codigo_cliente = p.codigo_cliente AND c.codigo_empleado_rep_ventas = e.codigo_empleado AND e.codigo_oficina=o.codigo_oficina;
-------------------------------------6-----------------------------------
SELECT DISTINCT o.linea_direccion1 FROM cliente c, oficina o, empleado e WHERE c.codigo_empleado_rep_ventas = e.codigo_empleado AND e.codigo_oficina = o.codigo_oficina AND c.ciudad = "Fuenlabrada";
-------------------------------------7-----------------------------------
SELECT c.nombre_cliente, e.nombre_empleado, o.ciudad FROM cliente c, oficina o, oficina o WHERE c.codigo_empleado_rep_ventas=e.codigo_empleado and o.codigo_oficina=e.codigo_oficina;
-------------------------------------8-----------------------------------
SELECT e1.nombre as "Nombre empleado" e2.nombre as "Nombre Jefe" FROM empleado e1, empleado e2 WHERE e1.codigo_empleado=e2.codigo_jefe;
-------------------------------------9-----------------------------------

-------------------------------------10----------------------------------
SELECT c.nombre_cliente FROM cliente c, pedido p WHERE p.fecha_entrega>p.fecha_esperada AND c.codigo_cliente=p.codigo_cliente;
-------------------------------------11----------------------------------
SELECT DISTINCT pr.gama, c.nombre_cliente FROM pedido p, cliente c, producto pr, detalle_pedido pd WHERE c.codigo_cliente=p.codigo_cliente AND p.codigo_pedido=pd.codigo_pedido AND pd.codigo_producto=pr.codigo_producto;