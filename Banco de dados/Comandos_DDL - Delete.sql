-- DELETANDO OS DADOS DE TUDO PRESENTE NO BANCO DE DADOS -- 

USE editora;

DELETE FROM autores;
DELETE FROM departamentos;
DELETE FROM editora;
DELETE FROM enderecos;
DELETE FROM exemplares;
DELETE FROM exemplares_autores;
DELETE FROM funcionarios;
DELETE FROM funcionarios_departamentos;
DELETE FROM gerentes;
DELETE FROM livrarias;
DELETE FROM ocupacao;
DELETE FROM pessoas;

DROP TABLE autores;
DROP TABLE departamentos;
DROP TABLE editora;
DROP TABLE enderecos;
DROP TABLE exemplares;
DROP TABLE exemplares_autores;
DROP TABLE funcionarios;
DROP TABLE funcionarios_departamentos;
DROP TABLE gerentes;
DROP TABLE livrarias;
DROP TABLE ocupacao;
DROP TABLE pessoas;

DROP VIEW exemplaresdosAutores;
DROP VIEW infosDepartamentos;
DROP VIEW detalhesFuncionarios;
DROP VIEW listaFuncionarios;
DROP VIEW enderecosFuncionarios;
DROP VIEW pessoaFuncionarioDepartamento;
DROP VIEW livrariasEnderecos;
DROP VIEW codigoExemplar;
DROP VIEW funcionarioEmail;
DROP VIEW funcionariosLogradouros;

