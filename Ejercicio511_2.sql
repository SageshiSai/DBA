-------------------------------------1-----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo;
-------------------------------------2-----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo ORDER BY f.nombre
-------------------------------------3-----------------------------------
SELECT p.codigo, p.nombre, f.codigo, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo;
-------------------------------------4-----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo ORDER BY precio LIMIT 1;
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo and precio in (SELECT min(precio) from producto);
-------------------------------------5-----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo ORDER BY precio DESC LIMIT 1;
/*Uno devuelve solo una consulta y el otro devuelve todas las consultas que tengan ese atributo*/
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo and precio in (SELECT max(precio) from producto);
-------------------------------------6-----------------------------------
SELECT p.* FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "Lenovo";
-------------------------------------7-----------------------------------
SELECT p.* FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = "Crucial" AND p.precio >= 200;
-------------------------------------8-----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND (f.nombre = "Asus" OR f.nombre = "Hewlett-Packard" OR f.nombre ="Seagate");
-------------------------------------9-----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE f.nombre IN("Asus","Hewlett-Packard","Seagate") AND p.codigo_fabricante = f.codigo;
-------------------------------------10----------------------------------
SELECT p.nombre, p.precio FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND LOWER(f.nombre) LIKE "%E"
-------------------------------------11----------------------------------
SELECT p.nombre, p.precio FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND (f.nombre LIKE "W%" OR f.nombre LIKE "%w%");
SELECT p.nombre, p.precio FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND UPPER(f.nombre) LIKE"%W%";
-------------------------------------12----------------------------------
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.precio >=180 ORDER BY  p.precio DESC, p.nombre ASC; 
-------------------------------------13----------------------------------
SELECT DISTINCT f.codigo, f.nombre FROM fabricante f, producto p WHERE f.codigo = p.codigo_fabricante;