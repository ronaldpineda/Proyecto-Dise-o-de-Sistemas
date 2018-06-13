create database Sistema
use Sistema


--Tabla 1
create table Usuarios(IDusuario int identity(100,1), nombre varchar(50) not null unique, 
                      password varchar (30) not null, tipo int not null)


Insert into Usuarios (nombre, password, tipo) values ('administrador', 'administrador', 1)
Insert into Usuarios (nombre, password, tipo) values ('tecnico', 'tecnico', 2)
Insert into Usuarios (nombre, password, tipo) values ('usuario', 'usuario', 3)


--Tabla 2
create table Tipos (IDtipo int identity, nombreT varchar(20) not null)

Insert into Tipos (nombreT) values ('Administrador')
Insert into Tipos (nombreT) values ('Tecnico')
Insert into Tipos (nombreT) values ('Usuario')

--Tabla 3
create table Clientes (IDCliente int primary key identity (1000,1),
                       nombrecliente varchar(50) not null, 
                       telefono varchar(30) not null, 
                       mail varchar(50) not null, 
                       direccion varchar (100) not null,)

insert into Clientes (nombrecliente, telefono, mail, direccion) values ('Ernesto Perez', '5564732812', 'neto376@hotmail.com', 'Bosque de Chapultepec')
insert into Clientes (nombrecliente, telefono, mail, direccion) values ('Carlos Suarez', '3423122032', 'calitos@hotmail.com', 'Avenida del monte')

--Tabla 4           /*IDClientes int references Clientes (IDCliente) identity (1000,1)*/  
create table Equipos (ID int identity (1000,1),
                      nombre int not null, 
                      diaEntrada int not null,
                      mesEntrada int not null,
                      anoEntrada int not null,
                      serie varchar (30) not null,
                      marca varchar (50) not null,
                      modelo varchar (30) not null, 
                      diaSalida int not null,
                      mesSalida int not null,
                      anoSalida int not null,
                      Observaciones varchar (200) not null)


insert into Equipos (nombre, diaEntrada, mesEntrada, anoEntrada, serie, marca, modelo, diaSalida, mesSalida, anoSalida, Observaciones) values (1, 21, 09, 1, 'FFCC9812', 'Brother', 'J220', 01, 10, 1, 'No sirve')
insert into Equipos (nombre, diaEntrada, mesEntrada, anoEntrada, serie, marca, modelo, diaSalida, mesSalida, anoSalida, Observaciones) values (2, 12, 12, 1, 'KKHJS877', 'Brother', 'MFC8890', 03, 11, 1, 'Se ve poca luz en la lampara')


--Tabla 5
create table Estado (IDEstado int identity (1000,1),                      
                      status varchar (30) not null,                      
                      Observaciones varchar (200) not null)

insert into Estado (status, Observaciones) values ('Reparado', 'Se cambio refacción de chasis')
insert into Estado (status, Observaciones) values ('No Reparado', 'No ha llegado la refaccion')


Select * from Usuarios
Select * from Tipos
select * from CLientes
select * from Equipos
select * from Estado

drop table Usuarios
drop table tipos
drop table Clientes
drop table Equipos
drop table Estado

select * from Clientes, Equipos where IDCliente = 1001 and ID = 1001
select * from Clientes where IDCliente = 1000



select status,count(status)as numero_reparados
from estado
group by status