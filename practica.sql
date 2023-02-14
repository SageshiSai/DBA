/*Para seleccionar todas las columnas de una tabla*/
SELECT *
/*Para seleccionar uno en expesifico*/
SELECT {nombre de la columna}
/*Para seleccionar la tabla de la que sacaremos esa columna se utilizara "FROM"*/
FROM libros
/*Especificar que muestre solo al autor "STEPHEN KING" y los libros que ha hecho*/
SELECT titulo, autor FROM libros WHERE autor = 'STEPHEN KING';
/*Aumentar numero de paginas en un 5%*/
SELECT numpag * 1.05 FROM libros;
/*Poner el nombre que quieras a la columna con AS ''*/
SELECT id, numPag * 1.05 AS 'Numero de Paginas' FROM libros;
/*Where es usado para extraer la informacion especifica de una tabla*/
SELECT * FROM // WHERE numPag<=20;
/*Poner una seleccion en especifico*/
WHERE numPag>=400;
AND numPag<=500;
/*AND OR NOT, Usados para definir que condiciones necesita cumplir, And para que sea
una condicion y obligatorio otra. Or para que se cumpla uno o otra condicion y Not 
para que no se muestre la consulta añadida*/
AND
NOT
OR
/*ORDER BY, Usado para ordenor por ascendente o Descendente usando ASC o DESC, 
aunque ASC no hace falta ya que viene predefinido*/
ORDER BY
/*MIN MAX, Devuelven una consulta con la numero más alto o más bajo, usado mucho 
para ordenar precios y pocisiones, Lo que tenga numeros basicamente*/
MIN()
MAX()
/*NULL, usamos este comando para poder encontrar en las tablas las las lineas que contengan NULL*/
NULL
"NULL"
/*AVG, COUNT, SUM, AVG= SACAR LA MEDIA, COUNT = Contar cuantas consultas hay en la tabla de una columna, 
SUM para sumar todo los recultados, unicamente numeros*/
AVG()
COUNT()
SUM()
/*seleccionar el maximo de la columna*/
SELECT max(numPag) FROM libros;
/*Selecciona solo los que empiezen por e*/
SELECT * FROM libros WHERE titulo LIKE "e%";
/*Selecciona solo los que terminen por 0*/
SELECT * FROM libros WHERE titulo LIKE "%o";
/*Selecciona solo los que contengan e Y d*/
SELECT * FROM libros WHERE titulo LIKE "%e%d%";
/*Selecciona los libros que empiezen los e y terminen por d*/
SELECT * FROM libros WHERE titulo LIKE "e%d";
/*Selecciona los libros que sean de Stephen King y Robin Cook*/
SELECT * FROM libros WHERE autor= "STEPHEN KING" OR autor="ROBIN COOK"
SELECT * FROM libros WHERE autor IN ("STEPHEN KING","ROBIN COOK");
/*Selecciona los libros que esten entre las 200 y 600*/
SELECT * FROM libros WHERE numPag BETWEEN 200 AND 600;
SELECT * FROM libros WHERE numPag >= 200 AND numpag<= 600;
/*Hacer una consulta en la que este todo en descendente y no se repitan nombres CON DISTINCT*/
SELECT distinct marca FROM tblusuarios ORDER BY marca DESC;
/*Limite de consultas*/
LIMIT x;
/*Contar por grupos*/
SELECT marca, count(*) FROM tblusuarios GROUP BY marca
/* CONCATENAR COLUMNAS*/
SELECT CONCAT(nombre,' ', apellido) AS "Jugador" FROM jugador WHERE equipo IN (1,2) AND posicion = "pivot"; 
/*SUBCONSULTA + ENLACE DE TABLAS*/
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo and precio = (SELECT max(precio) from producto);
/*IN recomandable cuando son varias variantes/consultas provenientes de la subconsulta*/
SELECT p.nombre, p.precio, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo and precio IN (SELECT max(precio) from producto);
/*Having, Clausula usada para buscar con palabras claves*/
SELECT * FROM producto HAVING codigo_fabricante = 5;
/*ROUND, para redondear un numero real*/
ROUND(precio);
/*UPPER LOWER, para decir que el texto sea todo mayusculas o minusculas.*/
UPPER()
LOWER()
/*Para coger las consultas de x a x, Unicamente se enseñara desde el numero añadido menos ese numero y hasta el limite*/
SELECT * FROM fabricante LIMIT 3,2; 
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
/*Enseñara solo 4 y 5 en este caso, comienza a enseñar despues de 3 con un limite ed 2 consultas*/
/*YEAR, MONTH, DAY. Usador para buscar consulas con el dia o el año o el mes que se condicione*/
YEAR()
MONTH()
DAY()
SELECT DATE_FORMAT("2017-06-15", "%Y"); 
/*Practicamente para mostar el año o le mes o el dia */