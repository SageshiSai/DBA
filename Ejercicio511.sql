-------------------------------------1-----------------------------------
SELECT count(*) as Cantidad FROM producto;
-------------------------------------2-----------------------------------
SELECT count(*) FROM fabricante;
-------------------------------------3-----------------------------------
SELECT COUNT(DISTINCT codigo_fabricante) FROM producto;
-------------------------------------4-----------------------------------
SELECT AVG(precio) FROM producto;
-------------------------------------5-----------------------------------
SELECT MIN(precio) FROM producto;
-------------------------------------6-----------------------------------
SELECT MAX(precio) FROM producto;
-------------------------------------7-----------------------------------
SELECT nombre, precio FROM producto WHERE precio = (SELECT MIN(precio) FROM producto);
-------------------------------------8-----------------------------------
SELECT nombre, precio FROM producto WHERE precio = (SELECT MAX(precio) FROM producto);
-------------------------------------9-----------------------------------
SELECT SUM(precio) FROM producto;
-------------------------------------10----------------------------------
SELECT COUNT(*) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre="Asus");
-------------------------------------11----------------------------------
SELECT AVG(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre="Asus");
-------------------------------------12----------------------------------
SELECT MIN(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre="Asus");
-------------------------------------13----------------------------------
SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre="Asus");
-------------------------------------14----------------------------------
SELECT SUM(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre="Asus");
-------------------------------------15----------------------------------
SELECT MAX(precio), MIN(precio), AVG(precio), COUNT(*) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre="Crucial");
-------------------------------------16----------------------------------
SELECT f.nombre, COUNT(*) FROM producto p, fabricante f WHERE f.codigo = p.codigo_fabricante GROUP BY f.nombre;
-------------------------------------17----------------------------------
SELECT f.nombre, MAX(p.precio), MIN(p.precio), AVG(p.precio) FROM producto p, fabricante f WHERE f.codigo = p.codigo_fabricante GROUP BY f.nombre;
-------------------------------------18----------------------------------
SELECT MAX(p.precio), MIN(p.precio), AVG(p.precio), COUNT(*) FROM producto GROUP BY codigo_fabricante HAVING AVG(precio) > 200;
-------------------------------------19----------------------------------
SELECT f.nombre, MAX(p.precio), MIN(p.precio), AVG(p.precio), COUNT(*) FROM producto p, fabricante f WHERE f.codigo = p.codigo_fabricante GROUP BY f.nombre HAVING AVG(precio) > 200;
-------------------------------------20----------------------------------
SELECT COUNT(*) FROM producto WHERE precio >= 180;
-------------------------------------21----------------------------------
SELECT COUNT(*) FROM producto WHERE precio >= 180 GROUP BY codigo_fabricante;
-------------------------------------22----------------------------------
SELECT codigo_fabricante, AVG(precio) FROM producto GROUP BY codigo_fabricante;
-------------------------------------23----------------------------------
SELECT f.nombre, AVG(p.precio) FROM fabricante f, producto p  WHERE f.codigo = p.codigo_fabricante GROUP BY codigo_fabricante;
-------------------------------------24----------------------------------
SELECT f.nombre, AVG(p.precio) FROM fabricante f, producto p  WHERE f.codigo = p.codigo_fabricante GROUP BY codigo_fabricante HAVING AVG(precio)>=150;
-------------------------------------25----------------------------------
SELECT f.nombre, COUNT(*) FROM fabricante f, producto p WHERE f.codigo = codigo_fabricante GROUP BY codigo_fabricante HAVING COUNT(*)>=2;
-------------------------------------26----------------------------------
SELECT f.nombre, COUNT(*) FROM fabricante f, producto p WHERE f.codigo = codigo_fabricante AND p.precio >=200 GROUP BY codigo_fabricante;
-------------------------------------27----------------------------------
-------------------------------------28----------------------------------
-------------------------------------29----------------------------------