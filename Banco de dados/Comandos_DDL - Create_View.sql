-- CRIANDO TODAS AS VIEWS DO NOSSO BANCO DE DADOS --

USE editora;

CREATE VIEW exemplaresdosAutores AS
SELECT p.nome "Nome autor", p.CPF_pessoas "CPF autor", e.titulo "Titulo", e.Id_Exemplar "Id exemplar", e.genero "Genero exemplar"
	FROM pessoas AS p 
		JOIN autores AS au ON p.CPF_pessoas = au.CPF_Pessoas_Autores 
        JOIN exemplares_autores AS exa ON au.CPF_Pessoas_Autores = exa.CPF_Pessoas_Autores
        JOIN exemplares AS e ON exa.Id_Exemplar = e.Id_Exemplar 
			ORDER BY p.nome;
            
SELECT * FROM exemplaresdosAutores;
            
CREATE VIEW infosDepartamentos AS 
SELECT p.nome "Nome gerente", g.CPF_Pessoas_Funcionarios "CPF gerente", o.funcao "Ocupação", d.nome_Departamento "Departamento", COUNT(f.CPF_Pessoas_Funcionarios)
	FROM ocupacao AS o 
		JOIN funcionarios_departamentos AS fd ON o.CBO = fd.ocupacao_CBO
        JOIN departamentos AS d ON fd.Id_Departamento = d.Id_Departamento 
        JOIN gerentes AS g ON d.Id_Gerente = g.Id_Gerente 
        JOIN funcionarios AS f ON g.CPF_Pessoas_Funcionarios = f.CPF_Pessoas_Funcionarios
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			GROUP BY d.nome_Departamento
            ORDER BY d.nome_Departamento; 
            
SELECT * FROM infosDepartamentos;
            
CREATE VIEW detalhesFuncionarios As 
 SELECT DISTINCT p.nome "Nome", f.CPF_Pessoas_Funcionarios "CPF", p.telefone "Telefone", p.email "Email", o.funcao "Ocupação", d.nome_Departamento "Departamento"
	FROM ocupacao AS o 
		JOIN funcionarios_departamentos AS fd ON o.CBO = fd.ocupacao_CBO
        JOIN departamentos AS d ON fd.Id_Departamento = d.Id_Departamento
        JOIN funcionarios_departamentos ON d.Id_Departamento = fd.Id_Departamento
        JOIN funcionarios AS f ON fd.CPF_Pessoas_Funcionarios = f.CPF_Pessoas_Funcionarios
		JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY p.nome; 
            
SELECT * FROM detalhesFuncionarios;

CREATE VIEW listaFuncionarios AS
SELECT p.nome 'nome funcionário', f.CPF_Pessoas_Funcionarios 'cpf funcionário', p.email 'email funcionário', f.data_Admissao 'dataAdmissao', f.data_Demissao 'dataDemissao', f.salario 'salario'
	FROM pessoas AS p 
		JOIN funcionarios AS f ON p.CPF_Pessoas = f.CPF_Pessoas_Funcionarios
			ORDER BY p.nome;
            
SELECT * FROM listaFuncionarios;

CREATE VIEW enderecosFuncionarios AS
SELECT p.nome "nome funcionario", f.CPF_Pessoas_Funcionarios "cpf funcionário", en.Id_Endereco "IdEndereço", en.UF "UF", en.CEP "CEP", en.cidade "cidade"
	FROM enderecos AS en
		JOIN funcionarios AS f ON en.Id_Endereco = f.Id_Enderecos
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY en.cidade;
            
SELECT * FROM enderecosFuncionarios;

CREATE VIEW pessoaFuncionarioDepartamento AS
 SELECT p.nome "Nome", f.CPF_Pessoas_Funcionarios "CPF", f.salario "Salario", f.data_Admissao "Data Admissão", f.data_Demissao "Data Demissão", d.nome_Departamento"Departamento", d.Id_Departamento"Id_Departamento"
	FROM pessoas AS p 
		JOIN funcionarios AS f ON p.CPF_Pessoas = f.CPF_Pessoas_Funcionarios
        JOIN funcionarios_departamentos AS fd ON f.CPF_Pessoas_Funcionarios = fd.CPF_Pessoas_Funcionarios 
        JOIN departamentos AS d ON fd.Id_Departamento = d.Id_Departamento
			ORDER BY d.nome_Departamento; 
            
SELECT * FROM pessoaFuncionarioDepartamento;

CREATE VIEW livrariasEnderecos AS 
 SELECT li.nome "Nome", li.CNPJ_Livrarias "CNPJ", li.telefone "Telefone", e.Id_Endereco "Id endereco", e.CEP "CEP", e.UF "UF", e.logradouro "Cidade"
	FROM livrarias AS li
		JOIN enderecos AS e ON li.Id_Endereco = e.Id_Endereco
			ORDER BY li.nome;
            
SELECT * FROM livrariasEnderecos;

CREATE VIEW codigoExemplar AS 
SELECT p.nome 'Nome', a.CPF_Pessoas_Autores 'CPF', e.titulo 'Exemplar', e.Id_Exemplar 'Código' 
	FROM pessoas AS p 
		JOIN autores AS a ON p.CPF_Pessoas = a.CPF_Pessoas_Autores 
        JOIN exemplares_autores AS ea ON a.CPF_Pessoas_Autores = ea.CPF_Pessoas_Autores
        JOIN exemplares AS e ON ea.Id_Exemplar = e.Id_Exemplar
			ORDER BY e.titulo DESC;
            
SELECT * FROM codigoExemplar;

CREATE VIEW funcionarioEmail AS 
SELECT p.nome 'Nome', f.CPF_Pessoas_Funcionarios 'CPF', p.email 'Email', f.salario 'Salário' 
	FROM pessoas AS p 
		JOIN funcionarios AS f ON p.CPF_Pessoas = f.CPF_Pessoas_Funcionarios
			ORDER BY f.salario DESC;
            
SELECT * FROM funcionarioEmail;

CREATE VIEW funcionariosLogradouros AS
SELECT p.nome "nome", f.CPF_Pessoas_Funcionarios "cpf", en.Id_Endereco "IdEndereço", en.cidade "cidade", en.logradouro "logradouro"
	FROM enderecos AS en
		JOIN funcionarios AS f ON en.Id_Endereco = f.Id_Enderecos
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY p.nome;

SELECT * FROM funcionariosLogradouros;
