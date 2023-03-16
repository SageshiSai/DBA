/*Devuelve el id del profesor de la asignatura 'Calulo' del alumno con el nif = '17105885A'*/
SELECT id_profesor FROM asignatura a, profesor p, persona pp, alumno_se_matricula_asignatura aa 
WHERE p.id_profesor = a.id_profesor AND a.id = aa.id_asignatura AND aa.id_alumno = pp.id AND pp.nif="17105885A" AND a.nombre ="Cálculo";
/*Devuelve el id, nombre, creditos, tipos y curso de las asignaturas que esta matriculado el alumno inma Lakin*/
SELECT aa.id, aa.nombre, aa.creditos, aa.tipo, aa.curso FROM persona p, alumno_se_matricula_asignatura a, asignatura aa, curso_escolar c 
WHERE p.id = a.id_alumno AND a.id_asignatura = aa.id AND a.id_curso_escolar = c.id AND p.nombre = "Inma" AND p.apellido1 = "Lakin";
/*Devuelve la cantidad de alumnos y profesores que hay en la universidad, añadiendole un alias a la cantidad(Cantidad)*/
SELECT COUNT(*) as CANTIDAD FROM persona GROUP BY tipo;
/*Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso 2018/2019. Agrupados por id*/
SELECT p.* FROM persona p, alumno_se_matricula_asignatura a, curso_escolar c WHERE p.id = a.id_alumno AND a.id_curso_escolar = c.id AND c.anyo_inicio = 2018 AND c.anyo_fin =2019 GROUP BY id;
/*Devuelve el numero total de alumnas que hay*/
SELECT COUNT(*) FROM persona WHERE tipo = "Alumno" AND sexo = "H";
/*Devuelve el nombte de las asignaturas que contenga programacion*/
SELECT nombre FROM asignatura WHERE nombre LIKE "%programacion%";
/*Devuelve distintos tipos de asignaturas*/
SELECT * FROM asignatura;
/*Delvuelve los profesores que nacieron en el año 1977*/
SELECT * FROM persona WHERE YEAR(fecha_nacimiento)=1977 AND tipo="profesor";
/*Devuelve los profesores que nacieron en el año 1977 y 1988*/
SELECT * FROM persona WHERE YEAR(fecha_nacimiento)=1977 OR  YEAR(fecha_nacimiento)=1988 AND tipo="profesor";
/*Lista el nombre y los apellidos de los alumnos en una misma tabla*/
SELECT CONCAT_WS(" ", nombre, apellido1, apellido2) FROM persona WHERE tipo = "alumno";
/*Lista el nombre de todos los profesores y en otra las 2 iniciales en mayusculas*/
SELECT nombre, UPPER(SUBSTRING(nombre,1,2)) FROM persona WHERE tipo="profesor";
/*Lista las asignaturas de el 2do quatrimestre con el nombre en ascendente y el curso en desc*/
SELECT * FROM asignatura WHERE cuatrimestre = 2 ORDER BY nombre, curso DESC
/*Lista el nombre de los profesores que no imparten ninguna asignatura*/
SELECT nombre FROM persona WHERE NOT id IN (SELECT id_profesor FROM asignatura WHERE NOT id_profesor IS NULL);
/*Devuelve un listado que muestre cuantos alumnos se han matriculado de alguna asignatura en cada una de los cursos*/
SELECT c.anyo_inicio, COUNT(*)
FROM curso_escolar c, alumno_se_matricula_asignatura a
WHERE c.id = a.id_curso_escolar
GROUP BY a.id_curso_escolar
/**/

/**/

/**/

/**/

/**/

/**/