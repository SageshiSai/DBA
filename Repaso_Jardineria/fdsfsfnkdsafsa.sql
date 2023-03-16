SELECT d.id, p.id_profesor
FROM departamento d 
LEFT JOIN profesor p 
ON d.id = p.id_profesor