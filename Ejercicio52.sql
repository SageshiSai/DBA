------------------------1------------------------
SELECT nombre, telefono FROM tblusuarios WHERE marca != 'LG' AND marca != 'SAMSUNG'
SELECT nombre, telefono FROM tblusuarios WHERE marca NOT IN ('LG','SAMSUNG')
------------------------2------------------------
SELECT usuario, telefono FROM tblusuarios WHERE compañia = 'IUSACELL'
SELECT usuario, telefono FROM tblusuarios WHERE compañia LIKE 'IUSACELL'
------------------------3------------------------
SELECT usuario, telefono FROM tblusuarios WHERE compañia != 'TELCEL'
SELECT usuario, telefono FROM tblusuarios WHERE not compañia ='TELCEL'
------------------------4------------------------
SELECT AVG(saldo) FROM tblusuarios WHERE marca = "NOKIA"
------------------------5------------------------
SELECT usuario, telefono FROM tblusuarios WHERE compañia in ("IUSACELL", "AXEL")
'IUSACELL'
OR 'AXEL'
------------------------6------------------------
SELECT email FROM tblusuarios WHERE email NOT LIKE '%yahoo%'
------------------------7------------------------
SELECT email, telefono FROM tblusuarios WHERE compañia != "TELCEL" AND compañia != "IUSALCELL"
SELECT email, telefono FROM tblusuarios WHERE not compañia = "TELCEL" AND not compañia = "IUSALCELL"
SELECT email, telefono FROM tblusuarios WHERE  compañia not in ("TELCEL","IUSACELL")
SELECT email, telefono FROM tblusuarios WHERE  not compañia in ("TELCEL","IUSACELL")
------------------------8------------------------
SELECT usuario, telefono FROM tblusuarios WHERE compañia = "UNEFON"
------------------------9------------------------
SELECT distinct marca FROM tblusuarios ORDER BY marca DESC
------------------------10-----------------------
SELECT distinct compañia FROM tblusuarios ORDER BY compañia DESC
------------------------11-----------------------
SELECT usuario FROM tblusuarios WHERE nivel in(0,2)
0
OR 2
------------------------12-----------------------
SELECT AVG(saldo) FROM tblusuarios WHERE marca = "LG"