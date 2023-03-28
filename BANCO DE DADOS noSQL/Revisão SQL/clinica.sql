CREATE DATABASE clinica;

USE clinica;

CREATE TABLE Ambulatorios(
	Nroa int primary key,
    Andar numeric(3) not null,
    Capacidade smallint
);

CREATE  TABLE Medicos(
	CodMed int primary key,
    NomeMed varchar(40) not null,
    Idade smallint not null,
    Especialidade char(20),
    CPF numeric(11) unique,
    Cidade varchar(30),
    FK_Nroa int,
    foreign key (FK_Nroa) references Ambulatorios (nroa)
);

CREATE TABLE Pacientes(
	CodPac int primary key,
    NomePes varchar(40) not null,
    Idade smallint not null,
	Cidade varchar(30),
    CPF numeric(11) unique,
    doenca varchar(40) not null
);

CREATE TABLE Funcionarios(
	CodFun int primary key,
    NomePes varchar(40) not null,
    Idade smallint not null,
    CPF numeric(11) unique,
	Cidade varchar(30),
    Salario numeric(10)
);



CREATE TABLE Consultas(
	FK_CodMed int,
    Fk_CodPac int,
	foreign key (FK_CodMed) references Medicos (CodMed),
    foreign key (FK_CodPac) references Pacientes (CodPac),
    datas date,
    hora time
);


describe Funcionarios;
describe Consultas;


insert into Ambulatorios values
( 1, 1, 30),
( 2, 1, 50),
( 3, 2, 40),
( 4, 2, 25),
( 5, 2, 55);

insert into Medicos values

( 1, "joão", 40, "ortopedia", 10000100000, "Florianopolis", 1 ),
( 2, "Maria", 42, "traumatologia", 10000110000, "Blumenau", 2 ),
( 3, "Pedro", 51, "pediatria", 11000100000, "São José", 2  ),
( 4, "Carlos", 28, "ortopedia", 11000110000, "Joinville", null ),
( 5, "Marcia", 33, "neurologia", 11000111000, "Biguacu", 3 );

insert into Pacientes values 
( 1 , "Ana" , 20 , "Florianopolis" , 20000200000, "gripe"),
( 2 , "Paulo" , 24 , "Palhoca" , 20000220000, "fratura" ),
( 3 , "Lucia" , 30 , "Biguacu" , 22000200000, "tendinite" ),
( 4 , "Carlos", 8 , "Joinville" , 11000110000, "sarampo" );


insert into Consultas values 
( 1, 1, '2006-06-12', '14:00'),
( 1, 4, '2006-06-13', '10:00'),
( 2, 1, '2006-06-13', '09:00'),
( 2, 2, '2006-06-13', '11:00'),
( 2, 3, '2006-06-14', '14:00'),
( 2, 4, '2006-06-14', '17:00'),
( 3, 1, '2006-06-19', '18:00'),
( 3, 3, '2006-06-12', '10:00'),
( 3, 4, '2006-06-19', '13:00'),
( 4, 4, '2006-06-20', '13:00'),
( 4, 4, '2006-06-22', '19:30');

insert into Funcionarios values
( 1, "Rita", 32 , 20000100000 , "Sao Jose", 1200),
( 2, "Maria", 55, 30000110000 , "Palhoca", 1220),
( 3, "Caio", 45, 41000100000 , "Florianopolis", 1100),
( 4, "Carlos", 44, 51000110000 , "Florianopolis", 1200),
( 5, "Paula", 33, 61000111000 , "Florianopolis", 2500);

select * from Pacientes;
select * from Funcionarios;
select * from Consultas;
select * from Medicos;
select * from Ambulatorios;

describe consultas;
describe Pacientes;

UPDATE Pacientes SET Cidade = 'ilhota' WHERE CodPac = 2; -- 1
UPDATE Consultas SET hora = '12:00' , datas = '2006-06-04' WHERE FK_CodMed = 1 AND FK_CodPac = 4; -- 2
UPDATE Pacientes SET Doenca = "cancer" WHERE CodPac = 1;
UPDATE Consultas SET hora = '13:00' WHERE FK_CodMed = 3 AND FK_CodPac = 4;
DELETE FROM Funcionarios WHERE CodFun = '4';
DELETE FROM Consultas WHERE hora > '19:00';
DELETE FROM Pacientes WHERE Doenca = 'cancer' and Idade < '10';
DELETE FROM Medicos WHERE Cidade = 'Biguacu' and Cidade = 'ilhota';
