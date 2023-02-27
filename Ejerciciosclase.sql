SQL CRUZAR TABLAS

1- Lista el ID y nombre de los alumnos que están matriculados en la asignatura “ESTADÍSTICA”.
SELECT id_alumno, p.nombre FROM alumno_se_matricula_asignatura a, persona p, asignatura aa 
WHERE aa.id = a.id_asignatura AND a.id_alumno = p.id AND aa.nombre = "Estadística";

2- Listar el nombre, apellidos y teléfono de los profesores hombres que imparten Sistemas Operativos.
SELECT p.nombre, apellido1, apellido2, telefono FROM persona p, asignatura a 
WHERE p.id=a.id_profesor AND sexo="H" AND tipo ="profesor" AND a.nombre="Sistemas Operativos";

3-Listar nombre y apellidos de alumnos que han cursado entre los años 2014 y 2015.
SELECT DISTINCT nombre, apellido1, apellido2 FROM alumno_se_matricula_asignatura a, persona p, curso_escolar c 
WHERE p.id= id_alumno AND id_curso_escolar = c.id AND anyo_inicio = "2014" AND anyo_fin="2015";

4-Contar los profesores que están en el departamento de Educación
SELECT COUNT(*) AS "profesores Educación" FROM profesor p, persona pp, departamento d 
WHERE pp.id = p.id_profesor AND p.id_departamento=d.id AND d.nombre = "Educación";

INNER JOIN

1.Lista el nombre de los departamentos y los identificadores de los profesores que trabajan en ellos.
SELECT nombre, id_profesor 
FROM departamento 
INNER JOIN profesor 
ON departamento.id = profesor.id_profesor;

2. Lista el dni de las personas y las asignaturas que cursan.
SELECT nif, asignatura.nombre 
FROM asignatura 
INNER JOIN alumno_se_matricula_asignatura 
ON asignatura.id = alumno_se_matricula_asignatura.id_asignatura
INNER JOIN persona 
ON alumno_se_matricula_asignatura.id_alumno = persona.id;

3. Devuelve el nombre del departamento de la profesora que se llama Francesca
SELECT departamento.nombre 
FROM departamento 
INNER JOIN profesor 
ON profesor.id_departamento = departamento.id 
INNER JOIN persona 
ON profesor.id_profesor=persona.id 
WHERE persona.nombre = "Francesca";

4.Lista el nombre de los departamentos y la cantidad de profesores que hay en cada departamento
SELECT d.nombre, COUNT(*) as "Cantidad Profesores"
FROM profesor p 
INNER JOIN departamento d 
ON p.id_departamento = d.id 
GROUP BY d.nombre;

RIGHT JOIN

1- Muestra las asignaturas y sus profesores. Debe estar ordenado descendentemente según el profesor
SELECT asignatura.nombre, persona.nombre FROM asignatura RIGHT JOIN persona ON persona.id = asignatura.id_profesor ORDER BY id_profesor DESC;

2- Muestra los alumnos matriculados en todos los cursos
SELECT DISTINCT persona.nombre FROM persona 
RIGHT JOIN alumno_se_matricula_asignatura ON alumno_se_matricula_asignatura.id_alumno = persona.id
RIGHT JOIN curso_escolar ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id;

3- Muestra todos los departamentos y sus profesores
SELECT departamento.nombre, persona.nombre FROM departamento 
RIGHT JOIN profesor ON profesor.id_departamento = departamento.id 
RIGHT JOIN persona ON profesor.id_profesor = persona.id;

4- Mostrar a qué grado pertenece cada asignatura que empiece por a
SELECT asignatura.nombre, grado.* FROM asignatura RIGHT JOIN grado ON grado.id = asignatura.id_grado WHERE asignatura.nombre LIKE "A%"

LEFT JOIN

1- Devuelve la id del departamento y la id del profesor, dando prioridad a departamento

2- Devuelve el nombre apellidos y id del departamento del los profesores junto a la asignatura que imparte

3- Devuelve el nombre, apellidos y id del departamento de los profesores

4- Devuelve el nombre, apellidos y id alumno y el año en el que empezo y termino el curso

ALL/ANY/EXISTS

1- Devuelve el listado del nombre y apellido de las personas matriculadas en asignaturas (ANY)

2- Devuleve el nombre y los apellidos de la gente cuyo ID alumno sea igual a 19 (ALL)

3- Devuelve los nombres de los fabricantes que tienen productos asociados.

4- Devuelve un listado de los clientes que no han realizado ningún pedido. 

