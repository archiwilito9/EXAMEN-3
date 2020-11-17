
use Master

create database EsquelasBDD

use EsquelasBDD



create table Fecha(
idFecha varchar(8) primary key,
numero_mes varchar(2),
annio varchar(4),
fecha_completa varchar(15)
)

select * from Fecha
order by idFecha


create table Falta(
idFalta varchar(12) primary key,
TipoFalta varchar(100)
)

select * from Falta



create table Estado(
idEstado varchar(10) primary key,
DescripcionEstado varchar(50)
)

select * from Estado



create table Esquela(
idEsquela int primary key identity,
NumeroEsquela varchar(10),
Departamento varchar(50),
Valor decimal(18,2),
interes decimal(18,2),
idFecha varchar(8),
idFalta varchar(12),
idEstado varchar(10)
)

Alter table Esquela add Foreign Key (idFecha) References Fecha(idFecha)
Alter table Esquela add Foreign Key (idFalta) References Falta(idFalta)
Alter table Esquela add Foreign Key (idEstado) References Estado(idEstado)


