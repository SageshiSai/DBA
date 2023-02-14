---------------------------1---------------------------
SELECT * FROM jugador WHERE equipo = 3 ORDER BY apellido;
---------------------------2---------------------------
SELECT * FROM jugador WHERE posicion = "pivot" ORDER BY id_jugador;
---------------------------3---------------------------
SELECT * FROM jugador WHERE altura >= 2 AND salario_bruto < 60000;
---------------------------4---------------------------
SELECT * FROM partido WHERE MONTH(fecha) = 02;
---------------------------5---------------------------
SELECT * FROM jugador WHERE equipo IN (1,2) AND salario_bruto > 80000;
---------------------------6---------------------------
SELECT * FROM equipo WHERE web_oficial LIKE "%www%";
---------------------------7---------------------------
SELECT * FROM equipo WHERE web_oficial LIKE "html%";