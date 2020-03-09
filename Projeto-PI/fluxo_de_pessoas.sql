create database fluxo_de_pessoas;
use fluxo_de_pessoas;

create table Empresa (
id_Empresa int primary key,
cnpj char (18),
endereco varchar (100),
telefone char (15),
email varchar (40),
codigo_verificacao char (7)
);

create table Usuario (
id_Usuario int primary key,
email varchar (40),
senha varchar (20)
);

create table Representante (
id_Representante int primary key,
nome varchar (50),
email varchar (40),
telefone char (15)

);

create table Sensor (
id_Sensor int primary key,
localizacao varchar (20)
);

create table Eventos (
sequencial int primary key,
data_hora datetime
);

select * from Empresa;
select * from Usuario;
select * from Representante;
select * from Sensor;
select * from Eventos;

insert into Empresa values
(1,'89.879.123/9705-78','RUA CASA DO ATOR, 275, VILA OLÍMPIA, 04546-001'   ,'(11) 2523-9878','arc2435'),
(2,'32.395.395/3854-95','RUA GEORGE HOM, 230, BROOKLIN NOVO, 04576-020'    ,'(11) 4683-9365','ghn3853'),
(3,'29.284.295/2053-02','RUA CINCINATO BRAGA, 306, VILA MARIANA, 01333-010','(11) 9362-2963','jkf3946');

insert into Usuario values
(1,'OtavioPereiraBarbosa@gmail.com' ,'IraGh5hoh0a'),
(2,'LucasGomesAraujo@hotmail.com'   ,'Tohl6yor1o'),
(3,'CamilaCarvalhoPereira@gmail.com','Zee7Iech8u');

insert into Representante values
(1,'Fábio Barros Rodrigues','FabioBarrosRodrigues@gmail.com','(11) 92320-7462'),
(2,'Livia Alves Almeida'   ,'LiviaAlvesAlmeida@gmail.com'   ,'(11) 93917-4260'),
(3,'Fábio Rocha Cunha'     ,'FabioRochaCunha@gmai.com'      ,'(11) 98239-4278');

insert into Sensor values
(1, 'corredor 1'),
(2, 'corredor 2'),
(3, 'corredor 3'),
(4, 'corredor 1'),
(5, 'corredor 2'),
(6, 'corredor 3'),
(7, 'corredor 1'),
(8, 'corredor 2'),
(9, 'corredor 3');

insert into Eventos values
(1,'2020-03-05 09:05'),
(2,'2020-03-05 12:20'),
(3,'2020-03-05 14:16'),
(4,'2020-03-05 10:34'),
(5,'2020-03-05 13:09'),
(6,'2020-03-05 18:59'),
(7,'2020-03-05 07:35'),
(8,'2020-03-05 09:42'),
(9,'2020-03-05 15:30'),
(10,'2020-03-05 08:23'),
(11,'2020-03-05 11:10'),
(12,'2020-03-05 13:45'),
(13,'2020-03-05 13:28'),
(14,'2020-03-05 16:15'),
(15,'2020-03-05 18:34'),
(16,'2020-03-05 12:14'),
(17,'2020-03-05 16:49'),
(18,'2020-03-05 17:36'),
(19,'2020-03-06 09:05'),
(20,'2020-03-06 13:50'),
(21,'2020-03-06 17:38'),
(22,'2020-03-06 08:47'),
(23,'2020-03-06 10:25'),
(24,'2020-03-06 12:49'),
(25,'2020-03-06 10:05'),
(26,'2020-03-06 16:30'),
(27,'2020-03-06 18:00');


alter table Empresa add id_Representante int;
alter table Empresa add foreign key(id_Representante) references Representante(id_Representante);

alter table Usuario add codigo_de_verificacao char;

alter table Representante add id_Empresa int;
alter table Representante add foreign key(id_Empresa) references Empresa(id_Empresa);

alter table Sensor add id_Empresa int;
alter table Sensor add foreign key(id_Empresa) references Empresa(id_Empresa);

alter table Eventos add id_Sensor int;
alter table Eventos add foreign key(id_Sensor) references Sensor(id_Sensor);

select * from Empresa;
select * from Usuario;
select * from Representante;
select * from Sensor;
select * from Eventos;

