-- FAZENDO TODOS OS RELATORIOS DO BANCO DE DADOS -- 

USE editora;

 /* Relatório 01 - Lista de pessoa, funcionários, funcionário_departamentos e ocupação
 ** trazendo as colunas (cpf, salário, cbo, função) 
 ** ordenado por cpf */ 

SELECT p.CPF_Pessoas "CPF funcionários", fu.salario "Salário funcionários", o.CBO "CBO", o.funcao "Ocupação"
	FROM pessoas AS p 
		JOIN funcionarios AS fu ON p.CPF_Pessoas = fu.CPF_Pessoas_Funcionarios
        JOIN funcionarios_departamentos AS fd ON fu.CPF_Pessoas_Funcionarios = fd.CPF_Pessoas_Funcionarios
        JOIN ocupacao AS o ON fd.ocupacao_CBO = o.cbo
			ORDER BY p.CPF_Pessoas; 

 /* Relatório 02 - Lista de autores e seus exemplares 
 ** trazendo as colunas (nome do autor, cpf do autor, nome do exemplar, cod do exemplar, genero do exempla) 
 ** ordenado por nome do autor */
 
 SELECT p.nome "Nome autor", p.CPF_pessoas "CPF autor", e.titulo "Titulo", e.Id_Exemplar "Id exemplar", e.genero "Genero exemplar"
	FROM pessoas AS p 
		JOIN autores AS au ON p.CPF_pessoas = au.CPF_Pessoas_Autores 
        JOIN exemplares_autores AS exa ON au.CPF_Pessoas_Autores = exa.CPF_Pessoas_Autores
        JOIN exemplares AS e ON exa.Id_Exemplar = e.Id_Exemplar 
			ORDER BY p.nome;
            
 /* Relatório 03 - Lista de livrarias e endereços 
 ** trazendo as colunas (nome da livraria, cnpj da livraria, telefone da livraria, idEndereço, CEP, UF, Cidade) 
 ** ordenado por nome da livraria */
 
 SELECT li.nome "Nome", li.CNPJ_Livrarias "CNPJ", li.telefone "Telefone", e.Id_Endereco "Id endereco", e.CEP "CEP", e.UF "UF", e.cidade "Cidade"
	FROM livrarias AS li
		JOIN enderecos AS e ON li.Id_Endereco = e.Id_Endereco
			ORDER BY li.nome;
            
 /* Relatório 04 - Lista de informacoes de cada departamento  
 ** trazendo as colunas (nome do gerente, cpf do gerente, ocupacao do gerente, nome do departamento, id do departamento,  quantidade de funcionarios por departamento) 
 ** ordenado por nome do departamento */
 
 SELECT p.nome "Nome gerente", g.CPF_Pessoas_Funcionarios "CPF gerente", o.funcao "Ocupação", d.nome_Departamento "Departamento", COUNT(f.CPF_Pessoas_Funcionarios)
	FROM ocupacao AS o 
		JOIN funcionarios_departamentos AS fd ON o.CBO = fd.ocupacao_CBO
        JOIN departamentos AS d ON fd.Id_Departamento = d.Id_Departamento 
        JOIN gerentes AS g ON d.Id_Gerente = g.Id_Gerente 
        JOIN funcionarios AS f ON g.CPF_Pessoas_Funcionarios = f.CPF_Pessoas_Funcionarios
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			GROUP BY d.nome_Departamento
            ORDER BY d.nome_Departamento; 
 
 /* Relatório 05  - Lista de livrarias e departamentos 
 ** trazendo as colunas (nome livraria, CPNJ livrarias,  idDepartamento, nome departamento) 
 ** ordenado por nome livraria */
 
 SELECT li.nome "Nome Livraria", li.CNPJ_Livrarias "CNPJ Livraria", d.Id_Departamento "Id Departamento", d.nome_Departamento "Departamento"
	FROM livrarias AS li
		JOIN departamentos AS d ON li.Id_Departamento = d.Id_Departamento
			ORDER BY li.nome; 
 
 /* Relatório 06 - Lista de detalhes dos funcionarios
 ** trazendo as colunas (nome, cpf, telefone, email, ocupacao, p que departamento ele trabalha) 
 ** ordenado por nome do funcionario */
 
 SELECT DISTINCT p.nome "Nome", f.CPF_Pessoas_Funcionarios "CPF", p.telefone "Telefone", p.email "Email", o.funcao "Ocupação", d.nome_Departamento "Departamento"
	FROM ocupacao AS o 
		JOIN funcionarios_departamentos AS fd ON o.CBO = fd.ocupacao_CBO
        JOIN departamentos AS d ON fd.Id_Departamento = d.Id_Departamento
        JOIN funcionarios_departamentos ON d.Id_Departamento = fd.Id_Departamento
        JOIN funcionarios AS f ON fd.CPF_Pessoas_Funcionarios = f.CPF_Pessoas_Funcionarios
		JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY p.nome; 
 
 /* Relatório 07 - Lista de pessoa, funcionário e departamento 
 ** trazendo as colunas (nome funcionario,  cpf pessoas, salario, dataAdmissao, dataDemissao, nome departamento, idDepartamento) 
 ** ordenado por nome departamento */
 
 SELECT p.nome "Nome", f.CPF_Pessoas_Funcionarios "CPF", f.salario "Salario", f.data_Admissao "Data Admissão", f.data_Demissao "Data Demissão", d.nome_Departamento"Departamento", d.Id_Departamento"Id_Departamento"
	FROM pessoas AS p 
		JOIN funcionarios AS f ON p.CPF_Pessoas = f.CPF_Pessoas_Funcionarios
        JOIN funcionarios_departamentos AS fd ON f.CPF_Pessoas_Funcionarios = fd.CPF_Pessoas_Funcionarios 
        JOIN departamentos AS d ON fd.Id_Departamento = d.Id_Departamento
			ORDER BY d.nome_Departamento; 
  
 /* Relatório 08 - Lista de livrarias que fazem negocio c a editora 
 ** trazendo as colunas (nome da livraria, cnpj da livraria, nome do departamento, id do departamento, quantos exemplares cada livraria tem) 
 ** ordenado por nome da livraria */
 
 SELECT li.nome "Nome", li.CNPJ_Livrarias "CNPJ", d.nome_Departamento "Nome Departamento", d.Id_Departamento "ID departamento", COUNT(ex.Id_Exemplar) "Quantidade exemplares"
	FROM livrarias AS li         
		JOIN departamentos AS d ON li.Id_Departamento = d.Id_Departamento
        JOIN editora AS e ON d.Id_Departamento = e.Id_Departamentos
        JOIN exemplares AS ex ON e.CNPJ_Editora = ex.CNPJ_Editora
			GROUP BY li.nome
			ORDER BY li.nome; 

 /* Relatório 09 - Lista de gerente e departamento 
 ** trazendo as colunas (idGerente, idDepartamento, nome departamento) 
 ** ordenado por nome departamento */
-- Usar left join --
 
 SELECT g.Id_Gerente "Id Gerente", d.Id_Departamento "Id Departamento", d.nome_Departamento "Nome departamento"
	FROM departamentos AS d 
		JOIN gerentes As g ON d.Id_Gerente = g.Id_Gerente 
			ORDER BY d.nome_Departamento; 

 /* Relatório 10 - Lista das cidades de enderecos de cada entidade do nosso banco 
 ** trazendo as colunas (nome da editora, endereco da editora, nome do funcionario, endereco do funcionario, nome da livraria, endereco da livraria) 
 ** ordenado por nome da editora */
 
 SELECT e.nome "nome editora", en.cidade "endereco editora", p.nome "nome funcionario", en.cidade "endereco funcionario", li.nome "nome livraria", en.cidade "endereco livraria"
	FROM enderecos AS en
		JOIN livrarias AS li ON en.Id_Endereco = li.Id_Endereco
        JOIN departamentos AS d ON li.Id_Departamento = d.Id_Departamento
        JOIN editora AS e ON d.Id_Departamento = e.Id_Departamentos
        JOIN enderecos ON e.Id_Endereco = en.Id_Endereco
        JOIN funcionarios AS f ON en.Id_Endereco = f.Id_Enderecos
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY e.nome; 
 
 /* Relatório 11 - Lista de editora e endereço 
 ** trazendo as colunas (CNPJ editora, nome editora,  idEndereço, CEP, UF, Cidade) 
 ** ordenado por nome da editora */
 
 SELECT e.CNPJ_Editora "CNPJ editora", e.nome "Nome editora", en.Id_Endereco "IdEndereço", en.CEP "CEP", en.UF "UF", en.cidade "Cidade"
	FROM editora AS e 
		JOIN enderecos AS en ON e.Id_Endereco = en.Id_endereco
			ORDER BY e.nome; 

 /* Relatório 12 - Lista de quantos exemplares sao de cada livraria
 ** trazendo as colunas (nome da editora, endereco da editora, nome da livraria, cnpj das livrarias, endereco das livrarias, qntd de exemplares) 
 ** ordenado por nome da livraria */ 
 
 SELECT e.nome 'nome da editora', en.logradouro 'endereco da editora', li.nome 'nome da livraria', li.CNPJ_Livrarias 'cnpj das livrarias', en.logradouro 'endereco das livrarias', COUNT(ex.Id_Exemplar)'Quantidade de exemplares'
	FROM enderecos AS en 
		JOIN livrarias AS li ON en.Id_Endereco = li.Id_endereco
        JOIN departamentos AS d ON li.Id_Departamento = d.Id_Departamento
        JOIN editora AS e ON d.Id_Departamento = e.Id_Departamentos
        JOIN exemplares AS ex ON e.CNPJ_Editora = ex.CNPJ_Editora
			GROUP BY ex.Id_Exemplar 
			ORDER BY li.nome;
 
/* Relatório 13 - Lista de pessoas e autores 
** trazendo as colunas (nome do autor , cpf do autor, email do autor, área literária) 
** ordenado por nome do autor */

SELECT p.nome 'nome autor' , a.CPF_Pessoas_Autores 'cpf autor', p.email 'email autor', a.area_Literaria'área literária'
	FROM pessoas As p 
		JOIN autores AS a ON p.CPF_Pessoas = a.CPF_Pessoas_Autores
			ORDER BY p.nome; 

/* Relatório 14 - Lista de pessoas e funcionários 
** trazendo as colunas (nome do funcionário, cpf do funcionário, email do funcionário, salario) 
** ordenado por salário decrescente */

SELECT p.nome 'Nome', f.CPF_Pessoas_Funcionarios 'CPF', p.email 'Email', f.salario 'Salário' 
	FROM pessoas AS p 
		JOIN funcionarios AS f ON p.CPF_Pessoas = f.CPF_Pessoas_Funcionarios
			ORDER BY f.salario DESC;

/* Relatório 15 - Lista de pessoas e funcionários 
** trazendo as colunas (nome do funcionário, cpf do funcionário, email do funcionário, dataAdmissao, dataDemissao, salario) 
** ordenado por nome do funcionário */

SELECT p.nome 'nome funcionário', f.CPF_Pessoas_Funcionarios 'cpf funcionário', p.email 'email funcionário', f.data_Admissao 'dataAdmissao', f.data_Demissao 'dataDemissao', f.salario 'salario'
	FROM pessoas AS p 
		JOIN funcionarios AS f ON p.CPF_Pessoas = f.CPF_Pessoas_Funcionarios
			ORDER BY p.nome;
            
/* Relatório 16 - Lista de autores e seus exemplares 
** trazendo as colunas (nome do autor, cpf do autor, nome do exemplar, cod do exemplar) 
** ordenado por nome exemplar */

SELECT p.nome 'Nome', a.CPF_Pessoas_Autores 'CPF', e.titulo 'Exemplar', e.Id_Exemplar 'Código' 
	FROM pessoas AS p 
		JOIN autores AS a ON p.CPF_Pessoas = a.CPF_Pessoas_Autores 
        JOIN exemplares_autores AS ea ON a.CPF_Pessoas_Autores = ea.CPF_Pessoas_Autores
        JOIN exemplares AS e ON ea.Id_Exemplar = e.Id_Exemplar
			ORDER BY e.titulo;

/* Relatório 17 - Lista de editora e exemplares
** trazendo as colunas (cnpj editora, nome editora, idExemplar, titulo, gênero) 
** ordenado por “ ” */

SELECT e.CNPJ_Editora 'cnpj editora', e.nome 'nome editora', ex.Id_Exemplar 'idExemplar', ex.titulo 'titulo', ex.genero 'gênero'
	FROM editora AS e 
		JOIN exemplares AS ex ON e.CNPJ_Editora = ex.CNPJ_Editora
			ORDER BY ex.Id_Exemplar;

/* Relatório 18 - Lista de livrarias e endereços 
** trazendo as colunas (nome da livraria, idEndereço, CEP, UF, Cidade) 
** ordenado por cidade */

SELECT li.nome 'nome', en.Id_Endereco 'IdEndereço', en.CEP 'CEP', en.UF 'UF', en.cidade 'Cidade'
	FROM livrarias AS li 
		JOIN enderecos AS en ON li.Id_Endereco = en.Id_Endereco
			ORDER BY en.cidade;

/* Relatório 19 - Lista de Funcionários e endereços
** trazendo as colunas (nome do funcionario, cpf do funcionário, idEndereço, UF,  CEP, cidade) 
** ordenado por cidade do funcionário */

SELECT p.nome "nome funcionario", f.CPF_Pessoas_Funcionarios "cpf funcionário", en.Id_Endereco "IdEndereço", en.UF "UF", en.CEP "CEP", en.cidade "cidade"
	FROM enderecos AS en
		JOIN funcionarios AS f ON en.Id_Endereco = f.Id_Enderecos
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY en.cidade;

/* Relatório 20  - Lista de Funcionários e endereços
** trazendo as colunas (nome do funcionario, cpf do funcionário, idEndereço, cidade) 
** ordenado por nome do funcionário */

SELECT p.nome "nome", f.CPF_Pessoas_Funcionarios "cpf", en.Id_Endereco "IdEndereço", en.cidade "cidade", en.logradouro "logradouro"
	FROM enderecos AS en
		JOIN funcionarios AS f ON en.Id_Endereco = f.Id_Enderecos
        JOIN pessoas AS p ON f.CPF_Pessoas_Funcionarios = p.CPF_Pessoas
			ORDER BY p.nome;