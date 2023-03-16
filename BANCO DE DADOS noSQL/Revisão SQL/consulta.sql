create database consultas;

use consultas;

create table Funcionarios (

IdCod tinyint not null auto_increment unique,
CPF varchar(15) not null unique,
PrimeiroNome varchar(30) not null,
SegundoNome varchar(30) not null,
UltimoNome varchar(30) not null,
RG varchar(12) not null, 
Endereco varchar(30) not null, 
CEP varchar(14) not null, 
Cidade varchar(30) not null, 
Fone varchar(15) not null, 
CodigoDepartamento smallint not null, 
Funcao varchar(30) not null,
Salario decimal(7,2),
DataNascimento date not null,
Primary Key (IdCod, CPF)
);

insert into Funcionarios values 
	(01,'363.950.544-14','Tiago','mota','silva','50.377.088-7','Rua Antonina','52171-900','Recife','(81)98901-2331','009','administração','3000.00','2008-05-12'),
    (02,'976.919.594-43','lucas','pottes','duarte','44.999.715-7','Rua Tapes','50920-240','Paulista','(81)98801-3412','009','administração','3000.00','2008-04-21'),
	(03,'628.878.834-10','raul','matias','farias','30.427.146-9','Rua borba','52081-029','Recife','(81)98233-5413','009','administração','3000.00','2008-01-10'),
	(04,'335.123.354-03','pedro','lucas','alves','34.836.637-1','Rua gatos','50740-030','Olinda','(81)98431-5614','008','contábeis','2000.00','2008-11-07'),
	(05,'740.293.284-23','gilmar','adrian','almeida','32.687.685-6','Rua Lua','51340-440','Recife','(81)98681-6715','004','Atendimento','1500.00','2008-02-11'),
    (06,'376.704.594-09','erika','santos','real','17.497.317-2','Rua real','50730-620','Jaboatão','(81 98974-7816','008','contábeis','2000.00','2008-05-14'),
	(07,'130.569.874-66','karol','menezes','silva','26.599.249-7','Avenida marechal','52090-600','Recife','(81)98864-8917','002','T.I','5000.00','2008-05-15'),
	(08,'555.227.294-30','maiara','evellyn','lima','19.792.448-7','Avenida Brasil','52070-092','Olinda','(81)98738-9018','002','T.I','5000.00','2008-07-16'),
	(09,'709.380.424-16','sara','lopes','rayane','49.211.927-2','Rua 13 de maio','50050-215','Recife','(81)99862-0119','002','T.I','5000.00','2008-11-11'),
	(10,'852.267.384-55','livia','ferrer','alves','32.812.490-4','Rua 7 de setembro','52171-900','Recife','(81)92345-0210','001','Marketing','3500.00','2008-08-22'),
	(11,'635.354.404-91','apollo','nickollas','luna','38.909.744-5','Rua da torre','50940-690','Recife','(81)98423-0311','001','Marketing','3500.00','2008-06-09'),
    (12,'956.083.494-07','ronaldo','david','silva','33.182.246-5','Rua da norte','50020-170','Recife','(81)97765-4457','002','T.I','5000.00','2008-03-02'),
    (13,'900.893.224-52','danilo','cabral','mina','43.999.501-2','Rua da sul','52120-611','Recife','(81)98234-5742','009','administração','3000.00','2008-02-03'),
    (14,'721.958.574-80','debora','yres','ariel','45.931.447-6','Rua da leste','51020-974','Recife','(81)98726-8890','001','Marketing','3500.00','2008-12-07');
    
    
SELECT PrimeiroNome, SegundoNome from Funcionarios order by SegundoNome; -- 1

SELECT IdCod, CPF, PrimeiroNome, SegundoNome, UltimoNome, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario, DataNascimento From Funcionarios order by Cidade; -- 2

SELECT PrimeiroNome, SegundoNome, UltimoNome, Salario FROM Funcionarios WHERE Salario > 1000 order by PrimeiroNome, SegundoNome, UltimoNome; -- 3

SELECT DataNascimento, PrimeiroNome FROM Funcionarios ORDER BY DataNascimento ASC; -- 4

SELECT PrimeiroNome, SegundoNome, UltimoNome, Endereco, Cidade FROM Funcionarios; -- 5

SELECT PrimeiroNome, SegundoNome, UltimoNome, CodigoDepartamento FROM Funcionarios WHERE CodigoDepartamento = '2'; -- 8

SELECT CodigoDepartamento, Funcao, Salario FROM Funcionarios WHERE Salario > 2000; -- 9