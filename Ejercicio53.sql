--------------------------1-----------------------
select * from tblusuarios where nivel=1 or nivel=3;
--------------------------2-----------------------
select nombre,telefono from tblusuarios where marca !='BLACKBERRY';
--------------------------3-----------------------
select * from tblusuarios where nivel=3;
--------------------------4-----------------------
select * from tblusuarios where nivel=0;
--------------------------5-----------------------
select * from tblusuarios where nivel=1;
--------------------------6-----------------------
select sexo,count(*) from tblusuarios group by sexo;
--------------------------7-----------------------
select usuario,telefono from tblusuarios where compañia='AT&T';
--------------------------8-----------------------
select distinct compañia from tblusuarios order by compañia desc;
--------------------------9-----------------------
select usuario,activo from tblusuarios where activo=0;
--------------------------10----------------------
select telefono from tblusuarios where saldo=0;
--------------------------11----------------------
select MIN(saldo) from tblusuarios where sexo="H";
--------------------------12----------------------
select telefono from tblusuarios where saldo >=300;