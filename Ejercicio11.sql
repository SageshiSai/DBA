-------------------------------------1-----------------------------------
SELECT nombre FROM producto;
-------------------------------------2-----------------------------------
SELECT nombre, precio FROM producto; 
-------------------------------------3-----------------------------------
SELECT * FROM producto;
-------------------------------------4-----------------------------------
SELECT nombre, precio AS precio_Euros, (precio*1.08) AS Dolares  FROM producto;
-------------------------------------5-----------------------------------
SELECT nombre AS nombre_de_producto,precio AS precio_Euros, (precio*1.08) AS Dolares FROM producto;
-------------------------------------6-----------------------------------
SELECT UPPER(nombre), precio FROM producto;
-------------------------------------7-----------------------------------
SELECT LOWER(nombre), precio FROM producto;
-------------------------------------8-----------------------------------
SELECT nombre, UPPER(SUBSTRING(nombre, 1,2)) AS INICIALES FROM fabricante;
-------------------------------------9-----------------------------------
SELECT nombre, ROUND(precio) FROM producto;
-------------------------------------10----------------------------------
SELECT nombre, TRUNCATE(precio, 0) FROM producto;
-------------------------------------11----------------------------------
SELECT f.codigo FROM producto p, fabricante f WHERE f.codigo = p.codigo_fabricante;
-------------------------------------12----------------------------------
SELECT DISTINCT f.codigo FROM producto p, fabricante f WHERE f.codigo = p.codigo_fabricante;
-------------------------------------13----------------------------------
SELECT nombre FROM fabricante ORDER BY nombre ASC;
-------------------------------------14----------------------------------
SELECT nombre FROM fabricante ORDER BY nombre DESC;
-------------------------------------15----------------------------------
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
-------------------------------------16----------------------------------
SELECT * FROM fabricante LIMIT 5;
-------------------------------------17----------------------------------
SELECT * FROM fabricante LIMIT 3,2;
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
-------------------------------------18----------------------------------
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
-------------------------------------19----------------------------------
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
-------------------------------------20----------------------------------
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
-------------------------------------21----------------------------------
SELECT nombre FROM producto WHERE precio <= 120;
-------------------------------------22----------------------------------
SELECT nombre FROM producto WHERE precio >= 400;
-------------------------------------23----------------------------------
SELECT nombre FROM producto WHERE not precio >= 400;
-------------------------------------24----------------------------------
SELECT nombre, precio FROM producto WHERE precio >= 80 AND precio <=300;
-------------------------------------25----------------------------------
SELECT nombre, precio FROM producto WHERE precio BETWEEN 60 AND 200;
-------------------------------------26----------------------------------
SELECT nombre, precio FROM producto WHERE precio >=200 AND codigo_fabricante = 6;
-------------------------------------27----------------------------------
SELECT * FROM producto WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;
-------------------------------------28----------------------------------
SELECT * FROM producto WHERE codigo_fabricante IN(1,3,5);
-------------------------------------29----------------------------------
SELECT nombre, ROUND(precio) * 100 AS centimos FROM producto;
-------------------------------------30----------------------------------
SELECT nombre FROM fabricante WHERE nombre LIKE "S%";
-------------------------------------31----------------------------------
SELECT nombre FROM fabricante WHERE nombre LIKE "%e";
-------------------------------------32----------------------------------
SELECT nombre FROM fabricante WHERE nombre LIKE "%w%" OR nombre LIKE "W%";
-------------------------------------33----------------------------------
SELECT nombre FROM fabricante WHERE nombre LIKE "????";
SELECT nombre FROM fabricante WHERE LENGTH(nombre)=4;
-------------------------------------34----------------------------------
SELECT nombre FROM producto WHERE nombre LIKE "Portátil%";
-------------------------------------35----------------------------------
SELECT nombre FROM producto WHERE nombre LIKE "Monitor%" AND precio <215;
-------------------------------------36----------------------------------
SELECT nombre, precio FROM producto WHERE precio >= 180;
