/*1*/
create database 1aw3_alumnos;
use 1aw3_alumnos;

/*2*/
create table alumnos(
ID_Alumno INT(11) NOT NULL PRIMARY KEY,
Nombre VARCHAR(20) NOT NULL,
Apellidos VARCHAR(50),
Edad INT(2) NOT NULL);

/*3*/
Insert into alumnos values (1,'Aitor','Leon',19);
Insert into alumnos values (2,'Iker','Elorrieta',19);
Insert into alumnos values (3,'Asier','Aldekoa',18);

/*4*/
Insert into alumnos (ID_Alumno,Nombre,Edad) values (4,'Ugaitz',19);
Insert into alumnos (ID_Alumno,Nombre,Edad) values (5,'Ander',20);
Insert into alumnos (ID_Alumno,Nombre,Edad) values (6,'Kaiet',19);

/*6*/
update alumnos set edad=edad+1

/*7*/
update alumnos set edad=edad-2 where edad>=40

/*8*/
delete from alumnos where nombre like '%min%'