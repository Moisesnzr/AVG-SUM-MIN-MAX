-- Moises Nunez del Rosario | 2020-10457

-- Tarea ejercicio de AVG, sum, Min, max.

drop table empleados;

create table empleados(
    nombre varchar2(30),
    documento char(8),
    domicilio varchar2(30),
    seccion varchar2(20),
    sueldo number(6,2),
    cantidadhijos number(2),
    fechaingreso date,
    primary key(documento)
);

insert into empleados values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'10/10/1980');
insert into empleados values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'15/08/1998');
insert into empleados values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,null);
insert into empleados values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,null);
insert into empleados values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'26/08/2000');
insert into empleados values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'25/09/2001');
insert into empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,null);
insert into empleados values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'14/12/2000');
insert into empleados values('Andres Costa','28444555',default,'Secretaria',null,null,'08/08/1990');

select count(*) from empleados;

select count(fechaingreso) from empleados;

select count(sueldo) from empleados;

select count(sueldo) from empleados where seccion = 'Secretaria';

select max(sueldo) as "Sueldo mas alto", min(sueldo) as "Sueldo mas bajo" from empleados; 

select max(cantidadhijos) from empleados where nombre like '%Perez%';

select max(fechaingreso) as "Fecha mas reciente", min(fechaingreso) as "Fecha mas lejana" from empleados;

select min(documento) from empleados;

select avg(sueldo) from empleados where seccion = 'Secretaria';

select avg(cantidadhijos) from empleados where seccion = 'Sistemas'; 

select count(*) as "Cantidad empleados", count(domicilio) as "empleados con domicilio", sum(cantidadhijos) as "suma de los hijos", 
avg(sueldo) as "Promedio sueldo", min(fechaingreso) as "Fecha mas antigua", max(fechaingreso) as "Fecha mas reciente" from empleados;

select count(*) as "Cantidad empleados", count(domicilio) as "empleados con domicilio", sum(cantidadhijos) as "suma de los hijos", 
avg(sueldo) as "Promedio sueldo", min(fechaingreso) as "Fecha mas antigua", max(fechaingreso) as "Fecha mas reciente" from empleados
    where seccion = 'Recursos';

