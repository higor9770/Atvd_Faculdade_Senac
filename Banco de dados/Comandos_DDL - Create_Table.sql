CREATE DATABASE editora;

DROP DATABASE editora; -- Não executar esse! Apenas se for necessário --

USE editora;

-- Comandos DDL  (Data Definition Language) --

-- CREATE TABLE --

CREATE TABLE editora (
	CNPJ_Editora VARCHAR(18) NOT NULL,
    nome VARCHAR (45) NOT NULL,
    Id_Endereco TINYINT NOT NULL,
    Id_Departamentos TINYINT NOT NULL,
    PRIMARY KEY (CNPJ_Editora)    
);

DESCRIBE editora;

CREATE TABLE departamentos (
	Id_Departamento TINYINT NOT NULL AUTO_INCREMENT,
	nome_Departamento VARCHAR  (45) NOT NULL,
    Id_Gerente TINYINT NOT NULL,
	PRIMARY KEY (Id_Departamento)
); 

DESCRIBE departamentos;

-- TABELA QUE TEM APENAS FOREING KEY --

CREATE TABLE funcionarios_departamentos (
	Id_Departamento TINYINT NOT NULL,
    Id_Gerente TINYINT NOT NULL ,
    CPF_Pessoas_Funcionarios VARCHAR (14) NOT NULL,
    ocupacao_CBO INT (5) NOT NULL
);
-- ------------------------------------ --
-- OBS: CRIAR PRIMEIRO A TABELA PESSOAS PARA DEPOIS CRIAR AUTORES E FUNCIONARIOS E PODER CRIAR GERENTES --

DESCRIBE funcionarios_departamentos; 

CREATE TABLE gerentes (
	funcao_Gratificada DECIMAL (6,2) NOT NULL,
    Id_Gerente TINYINT NOT NULL AUTO_INCREMENT,
    CPF_Pessoas_Funcionarios VARCHAR (14) NOT NULL REFERENCES funcionarios (CPF_Pessoas_Funcionarios),
    PRIMARY KEY (Id_Gerente)
);

DESCRIBE gerentes;

CREATE TABLE ocupacao (
	CBO INT (5) NOT NULL,
    funcao VARCHAR (45) NOT NULL,
    PRIMARY KEY (CBO)
); 

DESCRIBE ocupacao;

CREATE TABLE funcionarios (
	salario DECIMAL (6,2) NOT NULL,
    data_Admissao DATETIME NOT NULL,
    data_Demissao DATETIME,
    data_Nascimento DATE,
    CPF_Pessoas_Funcionarios VARCHAR (14) NOT NULL REFERENCES pessoas (CPF_pessoas),
    Id_Enderecos TINYINT NOT NULL,
    PRIMARY KEY (CPF_Pessoas_Funcionarios)
);

DESCRIBE funcionarios;

CREATE TABLE pessoas (
	nome VARCHAR (60) NOT NULL,
    CPF_pessoas VARCHAR (14) NOT NULL,
    telefone VARCHAR (11),
    email VARCHAR (45) NOT NULL,
    sexo CHAR (2),
    nome_Social VARCHAR (60),
    PRIMARY KEY (CPF_pessoas)
);

DESCRIBE pessoas;

CREATE TABLE autores (
	area_Literaria VARCHAR (45),
    CPF_Pessoas_Autores VARCHAR (14) NOT NULL REFERENCES pessoas (CPF_pessoas),
    PRIMARY KEY (CPF_Pessoas_Autores)
); 

DESCRIBE autores;

CREATE TABLE livrarias (
	nome VARCHAR (45) NOT NULL,
    CNPJ_Livrarias VARCHAR (18) NOT NULL,
    telefone VARCHAR (11) NOT NULL,
    Id_Departamento TINYINT NOT NULL ,
    Id_Endereco TINYINT NOT NULL ,
    PRIMARY KEY (CNPJ_Livrarias)
);

DESCRIBE livrarias;

CREATE TABLE exemplares (
	titulo VARCHAR (60) NOT NULL,
	Id_Exemplar INT NOT NULL AUTO_INCREMENT,
    genero VARCHAR (45) NOT NULL,
    tipo VARCHAR (45) NOT NULL,
    numero_Paginas INT NOT NULL,
    CNPJ_Editora VARCHAR (18) NOT NULL,
	Id_Endereco TINYINT NOT NULL,
    PRIMARY KEY (Id_Exemplar)
);

DESCRIBE exemplares;

CREATE TABLE enderecos (
	CEP VARCHAR (9) NOT NULL,
    UF CHAR (2) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    bairro VARCHAR (45) NOT NULL,
    logradouro VARCHAR(60) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR (45),
	Id_Endereco TINYINT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Id_Endereco)
);

DESCRIBE enderecos;

-- TABELA QUE TEM APENAS FOREING KEY --

CREATE TABLE exemplares_autores (
	CPF_Pessoas_Autores VARCHAR (14) NOT NULL,
    Id_Exemplar TINYINT NOT NULL,
    CNPJ_Editora VARCHAR (18) NOT NULL,
    Id_Endereco TINYINT NOT NULL
);
-- ------------------------------------ --

DESCRIBE exemplares_autores;