-------------------------------------1------------------------------------
SELECT nombre_cliente FROM cliente WHERE limite_credito = (SELECT MAX(limite_credito) FROM cliente);
-------------------------------------2------------------------------------
SELECT nombre FROM producto WHERE precio_venta = (SELECT MAX(precio_venta) FROM producto);
-------------------------------------3------------------------------------
SELECT p.nombre FROM producto p, detalle_pedido d WHERE p.codigo_producto = d.codigo_producto AND d.cantidad =(SELECT MAX(cantidad) FROM detalle_pedido);
-------------------------------------5------------------------------------
SELECT nombre FROM producto WHERE cantidad_en_stock = (SELECT MAX(cantidad_en_stock) FROM producto);
-------------------------------------6------------------------------------
SELECT nombre FROM producto WHERE cantidad_en_stock = (SELECT MIN(cantidad_en_stock) FROM producto);
-------------------------------------7------------------------------------
SELECT nombre, apellido1, apellido2, email FROM empleado WHERE codigo_jefe = (SELECT codigo_empleado FROM empleado WHERE nombre = "Alberto" AND apellido1 = "Soria");
-------------------------------------8------------------------------------
SELECT nombre FROM cliente WHERE limite_credito = ANY (SELECT MAX(limite_credito) FROM cliente);
-------------------------------------9------------------------------------
SELECT nombre FROM producto WHERE precio_venta = ANY (SELECT MAX(precio_venta) FROM producto);
-------------------------------------10-----------------------------------
SELECT nombre FROM producto WHERE cantidad_en_stock = ALL (SELECT MAX(cantidad_en_stock) FROM producto);
-------------------------------------11-----------------------------------
SELECT nombre, apellido1, puesto FROM empleado WHERE codigo_empleado IN (SELECT codigo_empleado_rep_ventas FROM cliente);
-------------------------------------12-----------------------------------
SELECT * FROM cliente WHERE codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
-------------------------------------13-----------------------------------
SELECT * FROM cliente WHERE codigo_cliente IN (SELECT codigo_cliente FROM pago);
-------------------------------------14-----------------------------------
SELECT * FROM producto WHERE codigo_producto NOT IN (SELECT codigo_producto FROM detalle_pedido);
-------------------------------------15-----------------------------------
SELECT nombre, apellido1, apellido2, puesto, o.telefono FROM empleado e, oficina o WHERE e.codigo_oficina = o.codigo_oficina AND codigo_empleado NOT IN (SELECT codigo_empleado_rep_ventas FROM cliente);
-------------------------------------17-----------------------------------
SELECT * FROM cliente WHERE codigo_cliente IN (SELECT codigo_cliente FROM pedido) AND codigo_cliente NOT IN (SELECT codigo_cliente FROM pago);
-------------------------------------18-----------------------------------
SELECT * FROM cliente WHERE NOT EXISTS ( SELECT codigo_cliente FROM pago WHERE pago.codigo_cliente = cliente.codigo_cliente);
-------------------------------------19-----------------------------------
SELECT * FROM cliente WHERE EXISTS ( SELECT codigo_cliente FROM pago WHERE pago.codigo_cliente = cliente.codigo_cliente);
-------------------------------------20-----------------------------------
SELECT * FROM producto WHERE NOT EXISTS (SELECT codigo_producto FROM detalle_pedido WHERE detalle_pedido.codigo_producto = producto.codigo_producto);
-------------------------------------21-----------------------------------
SELECT * FROM producto WHERE EXISTS (SELECT codigo_producto FROM detalle_pedido WHERE detalle_pedido.codigo_producto = producto.codigo_producto);