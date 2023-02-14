-------------------------------------1-----------------------------------
SELECT * FROM empleado e, departamento d
-------------------------------------2-----------------------------------
SELECT * FROM empleado e, departamento d  ORDER BY d.nombre, e.apellido1, e.apellido2, e.nombre;
-------------------------------------3-----------------------------------
SELECT d.codigo, d.nombre FROM departamento d, empleado e WHERE d.codigo = e.codigo_departamento;
-------------------------------------4-----------------------------------
SELECT d.codigo, d.nombre, (d.presupuesto - d.gastos) as Presupuesto_Actual FROM departamento d, empleado e WHERE d.codigo = e.codigo_departamento;
-------------------------------------5-----------------------------------
SELECT d.nombre FROM departamento d, empleado e WHERE e.nif = "38382980M" AND d.codigo = e.codigo_departamento;
-------------------------------------6-----------------------------------
SELECT d.nombre FROM departamento d, empleado e WHERE e.nombre = "Pepe" AND e.apellido1= "Ruiz" AND e.apellido2 = "Santana" AND d.codigo=e.codigo_departamento;
-------------------------------------7-----------------------------------
SELECT e.* FROM departamento d, empleado e WHERE d.nombre = "I+D" AND d.codigo=e.codigo_departamento ORDER BY e.nombre;
-------------------------------------8-----------------------------------
SELECT e.* FROM departamento d, empleado e WHERE (d.nombre = "Sistemas" OR d.nombre= "Contabilidad" OR d.nombre="I+D") AND d.codigo=e.codigo_departamento ORDER BY e.nombre;
SELECT e.* FROM departamento d, empleado e WHERE d.nombre IN("Sistemas", "Contabilidad", "I+D") AND d.codigo=e.codigo_departamento ORDER BY e.nombre;
-------------------------------------9-----------------------------------
SELECT e.nombre FROM departamento d, empleado e WHERE d.presupuesto not BETWEEN 100000 AND 200000 AND d.codigo=e.codigo_departamento; 
-------------------------------------10----------------------------------
SELECT DISTINCT d.nombre FROM departamento d, empleado e WHERE e.apellido2 IS NULL AND d.codigo=e.codigo_departamento;