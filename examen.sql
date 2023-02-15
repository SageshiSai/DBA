/*Devuelve el id del profesor de la asignatura 'Calulo' del alumno con el nif = '17105885A'*/
SELECT id_profesor FROM persona p, alumno_se_matricula_asignatura aa, asignatura a WHERE p.id=aa.id_alumno AND aa.id_asignatura=a.id AND a.nombre="Calculo" AND p.nif="17105885A";
/*Devuelve el id, nombre, creditos, tipos y curso de las asignaturas que esta matriculado el alumno inma Lakin*/
SELECT * FROM persona p, alumno_se_matricula_asignatura aa, asignatura a WHERE p.id=aa.id_alumno AND aa.id_asignatura=a.id AND a.nombre="Calculo" AND p.nif="17105885A";
/*Devuelve la cantidad de alumnos y profesores que hay en la universidad, añadiendole un alias a la cantidad(Cantidad)*/
SELECT tipo, COUNT(*) as CANTIDAD FROM persona GROUP BY tipo;
/*Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso 2018/2019. Agrupados por id*/
SELECT * FROM persona p, alumno_se_matricula_asignatura aa,curso_escolar c WHERE p.id=aa.id_alumno AND aa.id_curso_escolar=c.id AND c.anyo_inicio="2018" AND c.anyo_fin="2019" GROUP BY p.id; 
/*Devuelve el numero total de alumnas que hay*/
SELECT COUNT(*) as "Alumnas" FROM alumno_se_matricula_asignatura a, persona p WHERE id_alumno = p.id AND p.sexo = "H";
/*Devuelve el nombte de las asignaturas que contenga programacion*/
SELECT nombre FROM asignatura WHERE nombre LIKE "%programación%"
/*Devuelve distintos tipos de asignaturas*/
SELECT DISTINCT tipo FROM asignatura;
/*Delvuelve los profesores que nacieron en el año 1977*/
SELECT * FROM persona WHERE tipo = "profesor" and YEAR(fecha_nacimiento)=1977;
/*Devuelve los profesores que nacieron en el año 1977 y 1988*/
SELECT * FROM persona WHERE tipo="profesor" AND YEAR(fecha_nacimiento) BETWEEN 1977 AND 1988;
SELECT * FROM persona WHERE tipo="profesor" AND YEAR(fecha_nacimiento)>=1977 OR YEAR(fecha_nacimiento)<=1988;
/*Lista el nombre y los apellidos de los alumnos en una misma tabla*/
SELECT LOWER(CONCAT_WS(" ", nombre, apellido1, apellido2)) FROM persona p, alumno_se_matricula_asignatura a WHERE p.id = id_alumno;
/*Lista el nombre de todos los profesores y en otra las 2 iniciales en mayusculas*/
SELECT CONCAT_WS(" ", nombre, apellido1, apellido2) as "Nombre Profesor", UPPER(SUBSTRING(nombre,1, 2)) as "2 Caracteres" FROM persona p, profesor pp WHERE p.id = id_profesor;
/*Lista las asignaturas de el 2do quatrimestre con el nombre en ascendente y el curso en desc*/
SELECT * FROM asignatura WHERE cuatrimestre = 2 ORDER BY nombre, curso DESC;
/*Lista el nombre de los profesores que no imparten ninguna asignatura*/
SELECT * FROM asignatura WHERE id_profesor IS NULL;
/*Devuelve un listado que muestre cuantos alumnos se han matriculado de alguna asignatura en cada una de los cursos
*/
SELECT c.anyo_inicio, COUNT(*)
FROM curso_escolar c, alumno_se_matricula_asignatura a
WHERE c.id = a.id_curso_escolar
GROUP BY a.id_curso_escolar
/**/
SELECT a.nombre, c.anyo_inicio, c.anyo_fin
FROM asignatura a, alumno_se_matricula_asignatura aa, persona p, curso_escolar c
WHERE 
/**/
SELECT * FROM persona WHERE tipo="Alumno" AND telefono is null ORDER BY apellido1, apellido2;
/**/

/**/
SELECT * FROM departamento
/**/
SELECT nombre, apellido1 FROM persona WHERE MONTH(fecha_nacimiento)=08 OR direccion = "C/ Mercurio" ORDER BY apellido1;
/**/
