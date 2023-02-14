----------------------------------------1-----------------------------------------
SELECT p.id_profesor as "id del profesor"
FROM profesor p, alumno_se_matricula_asignatura a, asignatura aa, persona pe 
WHERE (aa.id_profesor = p.id_profesor AND id_asignatura = aa.id AND id_alumno = pe.id) AND aa.nombre = "Cálculo" AND nif = "17105885A";
----------------------------------------2-----------------------------------------
SELECT aa.id,aa.nombre, creditos, aa.tipo, curso
FROM asignatura aa, alumno_se_matricula_asignatura a, persona p 
WHERE (id_asignatura = aa.id AND id_alumno = p.id) AND p.nombre = "Inma" AND apellido1 = "Lakin";
----------------------------------------3-----------------------------------------
----------------------------------------4-----------------------------------------
SELECT p.* as "Alumnos 18/19" FROM asignatura aa, alumno_se_matricula_asignatura a, curso_escolar c, persona p WHERE (id_asignatura = aa.id AND id_alumno = p.id) AND c.anyo_inicio = 2018 AND c.anyo_fin = 2019 GROUP BY id_alumno; 
----------------------------------------5-----------------------------------------
SELECT COUNT(*) as "Alumnas" FROM alumno_se_matricula_asignatura a, persona p WHERE id_alumno = p.id AND p.sexo = "H";
----------------------------------------6-----------------------------------------
SELECT COUNT(*) as "programacion asignaturas" FROM asignatura WHERE nombre LIKE ("%programacion%");
----------------------------------------7-----------------------------------------
SELECT DISTINCT tipo FROM asignatura;
----------------------------------------8-----------------------------------------
SELECT nombre,apellido1, apellido2 FROM persona p, asignatura a, profesor pp FROM (pp.id_profesor = p.id AND pp.id_profesor = a.id_profesor) AND id_profesor IS NULL;
----------------------------------------9-----------------------------------------
SELECT  FROM
----------------------------------------10----------------------------------------
SELECT  FROM
----------------------------------------11----------------------------------------
SELECT LOWER(CONCAT_WS(" ", nombre, apellido1, apellido2)) FROM persona p, alumno_se_matricula_asignatura a WHERE p.id = id_alumno;
----------------------------------------12----------------------------------------
SELECT CONCAT_WS(" ", nombre, apellido1, apellido2) as "Nombre Profesor", UPPER(SUBSTRING(nombre,1, 2)) as "2 Caracteres" FROM persona p, profesor pp WHERE p.id = id_profesor;
----------------------------------------13----------------------------------------
SELECT * FROM asignatura WHERE cuatrimestre = 2 ORDER BY nombre, curso DESC;
----------------------------------------14----------------------------------------
SELECT * FROM asignatura WHERE id_profesor IS NULL;
----------------------------------------15----------------------------------------
SELECT  FROM
----------------------------------------16----------------------------------------
SELECT a.nombre, anyo_inicio, anyo_fin
FROM asignatura a, curso_escolar c, persona p, alumno_se_matricula_asignatura aa
WHERE nif = "26902806M" AND a.id = id_asignatura AND id_alumno = p.id AND id_curso_escolar= c.id;
----------------------------------------17----------------------------------------
SELECT nombre, apellido1, apellido2 FROM persona p, alumno_se_matricula_asignatura a WHERE id_alumno = p.id AND telefono IS NULL ORDER BY apellido1, apellido2;
----------------------------------------18----------------------------------------
SELECT  FROM
----------------------------------------19----------------------------------------
SELECT nombre, apellido1 FROM persona WHERE MONTH(fecha_nacimiento)=08 OR direccion = "C/ Mercurio" ORDER BY apellido1;
----------------------------------------20----------------------------------------
SELECT  FROM

