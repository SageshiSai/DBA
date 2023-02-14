/*****************************1*****************************/
select count(nombre) from producto

/*****************************2*****************************/
select count(nombre) from fabricante

/*****************************3*****************************/
select count(distinct codigo_fabricante) from producto

/*****************************4*****************************/
select avg(precio) as media_precio from producto

/*****************************5*****************************/
select min(precio) as min_precio from producto

select precio from producto order by precio asc limit 1

/*****************************6*****************************/
select max(precio) as max_precio from producto

select precio from producto order by precio desc limit 1

/*****************************7*****************************/
select nombre,precio from producto where precio= (select min(precio) from producto)

select nombre,precio from producto order by precio limit 1

/*****************************8*****************************/
select nombre,precio from producto order by precio desc limit 1

select nombre,precio from producto 
where precio= (select max(precio) from producto)

/*****************************9*****************************/
select sum(precio) as precio_total from producto

/*****************************10*****************************/
select count(*) as "Numero de productos ASUS" from producto p, fabricante f 
where p.codigo_fabricante=f.codigo and f.nombre="Asus"

select count(*) as "Numero de productos ASUS" 
from producto where codigo_fabricante=(select codigo from fabricante where nombre="Asus") 


/*****************************11*****************************/
select avg(p.precio) as "Media de precio de productos ASUS" from producto p, fabricante f 
where p.codigo_fabricante=f.codigo and f.nombre="Asus"

select avg(precio) as "Media de precio de productos ASUS" 
from producto 
where codigo_fabricante=(select codigo from fabricante where nombre="Asus") 

/*****************************12*****************************/
select p.precio as "Min. precio de productos ASUS" from producto p, fabricante f 
where p.codigo_fabricante=f.codigo and f.nombre="Asus" order by precio

select min(precio) as "Min precio de productos ASUS" 
from producto where codigo_fabricante=(select codigo from fabricante where nombre="Asus") 

/*****************************13*****************************/
select p.precio as "Max. precio de productos ASUS" 
from producto p, fabricante f where p.codigo_fabricante=f.codigo and f.nombre="Asus" order by precio desc

select max(precio) as "Max precio de productos Asus" 
from producto where codigo_fabricante=(select codigo from fabricante where nombre="Asus") 

/*****************************14*****************************/
select sum(p.precio) as "Precio maximo de productos ASUS" 
from producto p, fabricante f where p.codigo_fabricante=f.codigo and f.nombre="Asus"

select sum(precio) as "Precio total de productos Asus" 
from producto where codigo_fabricante=(select codigo from fabricante where nombre="Asus") 

/*****************************15*****************************/
select max(precio)as"Precio Maximo",min(precio)as"Precio minimo",avg(precio)as"Precio medio",count(*)as"Cantidad de productos"
from producto p, fabricante f where p.codigo_fabricante=f.codigo and f.nombre="Crucial"

select max(precio)as"Precio Maximo",min(precio)as"Precio minimo",avg(precio)as"Precio medio",count(*)as"Cantidad de productos"
from producto where codigo_fabricante=(select codigo from fabricante where nombre="Crucial")

/*****************************17*****************************/
select f.nombre as"Nombre Fabricante",max(precio)as"Precio Maximo",min(precio)as"Precio minimo",avg(precio)as"Precio medio",count(*)as"Cantidad de productos"
from producto p, fabricante f  where p.codigo_fabricante=f.codigo  group by p.codigo_fabricante

/*****************************18*****************************/
select codigo_fabricante as"Codigo Fabricante",max(precio)as"Precio Maximo",min(precio)as"Precio minimo",avg(precio)as"Precio medio",count(*)as"Cantidad de productos"
from producto  group by codigo_fabricante having avg(precio)>=200

/*****************************19*****************************/
select f.nombre as"Nombre Fabricante",max(precio)as"Precio Maximo",min(precio)as"Precio minimo",avg(precio)as"Precio medio",count(*)as"Cantidad de productos"
from producto p, fabricante f where p.codigo_fabricante=f.codigo group by p.codigo_fabricante having avg(precio)>200

/*****************************20*****************************/
select count(*) as"Numero de productos mayor que 180"
from producto where precio >=180

/*****************************21*****************************/
select codigo_fabricante,count(*) "Cantidad" from producto where precio >=180 group by codigo_fabricante

/*****************************22*****************************/
select codigo_fabricante as "Codigo Fabricante", avg(precio) as "Precio promedio"
from producto group by codigo_fabricante

/*****************************23*****************************/
select f.nombre,avg(precio) from producto p, fabricante f 
where p.codigo_fabricante=f.codigo group by codigo_fabricante

/*****************************24*****************************/
select f.nombre,avg(precio) from producto p, fabricante f
where p.codigo_fabricante=f.codigo group by codigo_fabricante having avg(precio)>150

/*****************************25*****************************/
select f.nombre,count(*) from producto p, fabricante f
where p.codigo_fabricante=f.codigo group by codigo_fabricante having count(*)>=2

/*****************************26*****************************/
select f.nombre,count(*) from producto p, fabricante f where p.codigo_fabricante=f.codigo and p.precio>=200
group by p.codigo_fabricante // order by f.codigo
