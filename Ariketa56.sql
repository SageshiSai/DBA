-----------------------------1----------------------------
SELECT * FROM equipo ;
-----------------------------2----------------------------
SELECT nombre, apellido, posicion AS "Puesto" FROM jugador ORDER BY posicion ASC;
-----------------------------3----------------------------
SELECT nombre, apellido, posicion AS "Puesto" FROM jugador ORDER BY posicion, apellido ;
-----------------------------4----------------------------
SELECT DISTINCT posicion AS "Puesto" FROM jugador;
-----------------------------5----------------------------
SELECT nombre, apellido, salario_bruto AS "Salario" FROM jugador ORDER BY salario_bruto DESC LIMIT 3;
-----------------------------6----------------------------
SELECT nombre, apellido, salario_bruto, salario_bruto*0.82 AS "Salario_Neto" FROM jugador ORDER BY salario_bruto DESC LIMIT 3;
-----------------------------7----------------------------
SELECT * FROM jugador WHERE equipo = 3;
-----------------------------8----------------------------
SELECT * FROM jugador WHERE id_capitan != "NULL";
--Where id_capitan IS NOT NULL
--Where not capitan = NULL
-----------------------------9----------------------------
SELECT * FROM jugador WHERE posicion IN ("alero", "pivot");
--= "alero" OR pivot
-----------------------------10---------------------------
SELECT * FROM jugador WHERE fecha_alta BETWEEN  "2010-01-01" AND "2010-12-31";
-----------------------------11---------------------------
SELECT * FROM jugador WHERE nombre LIKE 'A%';
-----------------------------12---------------------------
SELECT * FROM jugador WHERE nombre LIKE '%a';
-----------------------------13---------------------------
SELECT * FROM jugador WHERE nombre LIKE '%v%' OR nombre LIKE 'V%';
-----------------------------14---------------------------
SELECT nombre, apellido FROM jugador WHERE equipo IN (1,2) AND posicion = "pivot"; 
