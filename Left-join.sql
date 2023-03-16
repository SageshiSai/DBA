/*Devuelve la id del departamento y la id del profesor, dando prioridad a departamento*/
SELECT d.id, p.id_profesor 
FROM departamento d
LEFT JOIN profesor p
ON d.id = p.id_departamento;

/*Devuelve el nombre apellidos y id del departamento del los profesores junto a la asignatura que imparte*/
SELECT persona.nombre, persona.apellido1, persona.apellido2, profesor.id_departamento, asignatura.nombre 
FROM persona 
LEFT JOIN profesor 
ON persona.id = profesor.id_profesor 
LEFT JOIN asignatura 
ON asignatura.id_profesor = profesor.id_profesor;

/*Devulve el nombre, apellidos y id del departamento de los profesores*/
SELECT persona.nombre, persona.apellido1, persona.apellido2, profesor.id_departamento
FROM persona 
LEFT JOIN profesor 
ON persona.id = profesor.id_profesor;

/*Delvuelve el nombre, apellidos y id alumno y el año en el que empezo y termino el curso*/
SELECT persona.nombre, persona.apellido1, persona.apellido2, alumno_se_matricula_asignatura.id_alumno, curso_escolar.anyo_inicio, curso_escolar.anyo_fin 
FROM alumno_se_matricula_asignatura 
LEFT JOIN persona 
ON alumno_se_matricula_asignatura.id_alumno = persona.id 
LEFT JOIN curso_escolar 
ON alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id;

