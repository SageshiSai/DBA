-------------------------------------1-----------------------------------
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = "Lenovo");
-------------------------------------2-----------------------------------
select * from producto where precio= (select max(precio) from producto 
where codigo_fabricante= (select codigo from fabricante where nombre="Lenovo"));
-------------------------------------3-----------------------------------
select nombre from producto where precio=(select max(precio)from producto 
where codigo_fabricante=(select codigo from fabricante where nombre="Lenovo"))
and codigo_fabricante=(select codigo from fabricante where nombre="Lenovo");
-------------------------------------4-----------------------------------
select nombre from producto where precio=(select min(precio)from producto 
where codigo_fabricante=(select codigo from fabricante 
where nombre="Hawlett-Packard"))and codigo_fabricante=
(select codigo from fabricante where nombre="Hawlett-Packard");
-------------------------------------5-----------------------------------
select *  from producto  where precio>=(select max(precio)from producto 
where codigo_fabricante=(select codigo from fabricante where nombre="Lenovo"));
-------------------------------------6-----------------------------------
select * from producto where precio>(select avg(precio)from producto 
where codigo_fabricante=(select codigo from fabricante where nombre="Asus"))
and codigo_fabricante=(select codigo from fabricante where nombre="Asus");

