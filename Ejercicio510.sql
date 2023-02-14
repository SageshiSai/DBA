-------------------------------------1-----------------------------------
SELECT apellido1 FROM empleado;
-------------------------------------2-----------------------------------
SELECT DISTINCT apellido1 FROM empleado;
-------------------------------------3-----------------------------------
SELECT * FROM empleado;
-------------------------------------4-----------------------------------
SELECT nombre, apellido1, apellido2 FROM empleado;
-------------------------------------5-----------------------------------
SELECT codigo_departamento FROM empleado;
-------------------------------------6-----------------------------------
SELECT DISTINCT codigo_departamento FROM empleado;
-------------------------------------7-----------------------------------
SELECT concat(nombre," ",apellido1, apellido2) as NombreApellido FROM empleado;
SELECT concat_ws(" ", nombre,apellido1, apellido2) as NombreApellido FROM empleado;
-------------------------------------8-----------------------------------
SELECT UPPER(concat(nombre," ",apellido1, apellido2)) as NombreApellido FROM empleado;
SELECT UPPER(concat_ws(" ",nombre,apellido1, apellido2)) as NombreApellido FROM empleado;
-------------------------------------9-----------------------------------
SELECT LOWER(concat(nombre," ",apellido1, apellido2)) as NombreApellido FROM empleado;
SELECT LOWER(concat_ws(" ",nombre, apellido1, apellido2)) as NombreApellido FROM empleado;
-------------------------------------10----------------------------------
SELECT codigo SUBSTRING(nif, 1,8), SUBSTRING(nif, 9,1) FROM empleado;
-------------------------------------11----------------------------------
SELECT nombre, (presupuesto - gastos) as Presupuesto_Actual FROM departamento;
-------------------------------------12----------------------------------
SELECT nombre, (presupuesto - gastos) as Presupuesto_Actual FROM departamento ORDER BY Presupuesto_Actual;
-------------------------------------13----------------------------------
SELECT nombre FROM departamento ORDER BY nombre;
-------------------------------------14----------------------------------
SELECT nombre FROM departamento ORDER BY nombre DESC;
-------------------------------------15----------------------------------
SELECT nombre, apellido1, apellido2 FROM empleado ORDER BY apellido1, apellido2, nombre;
-------------------------------------16----------------------------------
SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 3;
-------------------------------------17----------------------------------
SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto LIMIT 3;
-------------------------------------18----------------------------------
SELECT nombre, gastos FROM departamento ORDER BY gastos DESC LIMIT 2;
-------------------------------------19----------------------------------
SELECT nombre, gastos FROM departamento ORDER BY gastos LIMIT 2;
-------------------------------------20----------------------------------
SELECT * FROM empleado LIMIT 5 OFFSET 2;
SELECT * FROM empleado LIMIT 2,5;
-------------------------------------21----------------------------------
SELECT nombre, presupuesto FROM departamento WHERE presupuesto >= 150000;
-------------------------------------22----------------------------------
SELECT nombre, gastos FROM departamento WHERE gastos < 5000;
-------------------------------------23----------------------------------
SELECT nombre, presupuesto FROM departamento WHERE presupuesto >= 100000 AND presupuesto <= 200000;
-------------------------------------24----------------------------------
SELECT nombre, presupuesto FROM departamento WHERE NOT (presupuesto >= 100000 AND presupuesto <= 200000);
-------------------------------------25----------------------------------
SELECT nombre FROM departamento WHERE presupuesto BETWEEN 100000 AND 200000;
-------------------------------------26----------------------------------
SELECT nombre FROM departamento WHERE NOT presupuesto BETWEEN 100000 AND 200000;
-------------------------------------27----------------------------------
SELECT nombre, gastos, presupuesto FROM departamento WHERE (presupuesto-gastos)<0;
-------------------------------------28----------------------------------
SELECT nombre, gastos, presupuesto FROM departamento WHERE (presupuesto-gastos)>0;
-------------------------------------29----------------------------------
SELECT nombre, gastos, presupuesto FROM departamento WHERE (presupuesto-gastos)=0;
-------------------------------------30----------------------------------
SELECT apellido2 FROM empleado WHERE apellido2 IS NULL;
-------------------------------------31----------------------------------
SELECT apellido2 FROM empleado WHERE apellido2 IS NOT NULL;
-------------------------------------32----------------------------------
SELECT apellido2 FROM empleado WHERE apellido2 = "López";
-------------------------------------33----------------------------------
SELECT apellido2 FROM empleado WHERE apellido2 = "Díaz" OR apellido2 = "Moreno";
-------------------------------------34----------------------------------
SELECT apellido2 FROM empleado WHERE apellido2 IN("Díaz", "Moreno");
-------------------------------------35----------------------------------
SELECT nombre, apellido1, apellido2, nif FROM empleado WHERE codigo_departamento = 3;
-------------------------------------36----------------------------------
SELECT nombre, apellido1, apellido2, nif FROM empleado WHERE codigo_departamento IN(2,4,5);
