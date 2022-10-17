-- ADCIONANDO DADOS PARA TODAS AS TABELAS 

USE editora;

-- TABELA EDITORA --
insert into editora (CNPJ_Editora, nome, Id_Endereco, Id_Departamentos) /* Id_Endereco, Id_Departamento */
values("87.965.921/0401-16", "Di Luna", '40', '5');

SELECT * FROM editora;
DELETE FROM editora;

-- TABELA DEPARTAMENTOS --
INSERT INTO departamentos(Id_Departamento, nome_Departamento) /*,Id_Gerente */
VALUES	(DEFAULT, "Financeiro" ), -- 1
		(DEFAULT, "RH"), -- 2
		(DEFAULT, "Serviços Gerais"), -- 3
		(DEFAULT, "Editores"), -- 4
		(DEFAULT, "Admnistrativo"), -- 5
		(DEFAULT, "Marketing"), -- 6 
		(DEFAULT, "Segurança"), -- 7
        (DEFAULT, "Vendas"); -- 8

UPDATE departamentos SET Id_Gerente = '1' WHERE Id_Departamento = '1';
UPDATE departamentos SET Id_Gerente = '2' WHERE Id_Departamento = '2';
UPDATE departamentos SET Id_Gerente = '3' WHERE Id_Departamento = '4';
UPDATE departamentos SET Id_Gerente = '4' WHERE Id_Departamento = '5';
UPDATE departamentos SET Id_Gerente = '5' WHERE Id_Departamento = '6';
UPDATE departamentos SET Id_Gerente = '6' WHERE Id_Departamento = '8';

SELECT * FROM departamentos;
DELETE FROM departamentos;

-- TABELA PESSOAS --
INSERT INTO pessoas (nome, CPF_pessoas, telefone, email, sexo, nome_social)
VALUES	("João Pedro", "102.990.543-67", "81987918080", "jpdoscria@gmail.com", "MA", DEFAULT), -- AUTOR
		("Maria Joaquina", "987.453.786-68", "81986543431", "Jleal@gmail.com", "NB", "João Leal"), -- GERENTE
		("Marcos de Paula", "987.564.098-12", "81990543241", "Marcosdepau@gmail.com", "MA", DEFAULT), 
		("Fernando Mendes", "987.554.398-14", "8195678897", "fermendes@gmail.com", "MA", DEFAULT),
		("Marcos de Paula", "957.564.098-12", "81990543241", "Marcosdepau@gmail.com", "MA", DEFAULT),
		("Fernanda Souza", "053.678.543-41", "81987654321", "fernanda.souza@gmail.com", "FE", DEFAULT),
		("Agatha Ferraz", "035.786.987-64", "81985431235", "Agatha_ferraz@gmail.com", "FE", DEFAULT), -- AUTOR
		("Marina Silva", "432.675.432-18", "8198436543", "silva_marina@gmail.com", "FE", DEFAULT),
		("Luiz inacio ", "013.013.130-13", "81994135413", "Lulinha2023@gmail.com", "MA", DEFAULT),
		("Raul Henrique", "675.432.123-56", "81989765432", "Raul_henri233@gmail.com", "MA", DEFAULT),
		("Sara lopes", "345.764.321-78", "81973435542", "Sarinha.lopes@gmail.com", "NB", "Harry Vitaliccius"), -- AUTOR
		("Riquelme Costa", "123.765.898-70", "81984213675", "riqueboladao69@gmail.com", "MA", DEFAULT), -- GERENTE
		("Karollayne Alves", "008.657.432-12", "81975462321", "karol.avila321@gmail.com", "FE", DEFAULT),
		("Rennan Luccas", "432.567.234-12", "81987653421", "rennan.oficial@gmail.com", "MA", DEFAULT), -- AUTOR
		("Murilo rocha", "321.543.897-65", "81986213453", "M.rocha357@gmail.com", "FE", "Clara Sena"),
		("Gilmar Ribeiro", "432.675.987-65", "81992345674", "gilmar_ribeiro122@gmail.com", "MA", DEFAULT), -- AUTOR
		("Rafaella Nunes", "133.573.456-12", "81983438313", "Marcosdepau@gmail.com", "FE", DEFAULT),
		("Roberta Ferreira", "171.257.369-12", "81997548866", "Robertinha_ferreira2022@gmail.com", "FE", DEFAULT),
		("Antonio José", "976.321.567-87", "81995412876", "tonhozé@gmail.com", "MA", DEFAULT),
		("Rita Galvão", "087.653.123-46", "81989763412", "Galvão.rita432@gmail.com", "MA", "Pedro Galvão"), 
		("Maiara Menezes", "069.535.672-69", "81984127654", "Maiarocadafavela@gmail.com", "FE", DEFAULT), -- GERENTE
		("José Aldo", "327-239-430-00" , "61956417325" , "aldo_champions@gmail.com", "MA", default), 
        ("Ana Beatriz", "123-348-732-11" , "61978659039" , "ana.beatriz77@gmai.com", "FE", default), 
        ("Vini Junior", "343-935-010-22" , "61923457892" , "vinijuju@gmail.com", "MA", default),
        ("Ana Vitória", "943-001-134-33" , "61919283467" , "AnaVi_2145@gmail.com", "FE", default), 
        ("Alvaro Rodrigues", "933-123-778-44" , "61975894033" , "AlvoRodrigues_@gmail.com", "MA", default), -- GERENTE
        ("Cinthia Monteiro", "433-243-578-55" , "68974693020" , "Monteiro_cinthia@gmail.com", "FE", default), 
        ("Victor Sllosevicth", "753-823-390-12" , "68900283274" , "sllosevith2015@hotmail.com", "MA", default), 
        ("Julia Lins", "193-993-940-13" , "68932360032" , "Juju_lins@gmail.com", "FE", default), 
        ("Oscar Lima", "913-929-367-14" , "68964683920" , "OscarBregoso@gmail.com", "MA", default), 
        ("Thais Victória", "433-438-213-15" , "68919743274" , "ThataIS@gmail.com", "FE", default), 
        ("Yago Felipe", "383-238-129-16" , "82923143434" , "YagoYago@gmail.com", "MA", default), -- GERENTE
        ("Leticia Watiti", "323-120-643-17" , "82998438493" , "Waititi_marvel@gmail.com", "FE", default), 
        ("Steve Rogers", "210-367-930-18" , "82909342003" , "TheBest_Steve@gmail.com", "MA", default),
        ("Sheldon Cooper", "435-239-443-49" , "8596473712" , "sheldonBregoso@gmail.com", "MA", default), 
        ("Penny Barros", "943-904-002-31" , "68976327183" , "penny_sorvetinho@gmail.com", "FE", default), -- GERENTE
        ("Leonard Hofsteder", "785-765-401-21" , "81953694390" , "leonardFEPS@gmail,com", "MA", default), 
        ("Haj Kotraphali", "467-320-000-18" , "81953672943" , "IndianHAJ@gmail.com", "MA", default),
        ("Austin Butler", "543-123-789-00" , "82973262003" , "AustinButler.OF@gmail.com", "MA", default), 
        ("Diana Lua", "751-321-775-77" , "82993463327" , "LuaDia@gmail.com", "FE", default); 

SELECT * FROM pessoas;
DELETE FROM pessoas;

-- TABELA AUTORES --
insert into autores (area_Literaria, CPF_Pessoas_Autores) /* , CPF_Pessoas_Autores  */
values  ("Entretenimento", '432.675.987-65'), /* Gilmar */
        ("História", '102.990.543-67'), /* João Pedro */
        ("Ciências", '432.567.234-12'), /* Rennan Luccas */
        ("Romance", '035.786.987-64'), /* Agatha Ferraz */
        ("Fantasia", '345.764.321-78'); /* Sara Lopes */

SELECT * FROM autores;
DELETE FROM autores;

-- TABELA FUNCIONARIOS --
INSERT INTO funcionarios (salario , data_Admissao, data_Demissao, data_Nascimento, Id_Enderecos, CPF_Pessoas_Funcionarios) /* ,CPF_Pessoas_Funcionarios , Id_Endereços  */
VALUES (1520.00 , "2005-04-27", "2015-11-03", "1979-12-02", '1', '321.543.897-65'),
    (1520.00 , "2005-02-07", "2016-10-01",  "1979-03-12", '2', '133.573.456-12'),
    (1520.00 , "2005-01-06", "2016-09-13",  "1980-05-21", '3', '171.257.369-12'),
    (1520.00 , "2006-08-11", "2001-04-27",  "1978-09-24", '4', '751-321-775-77'),
    (1520.00 , "2006-11-15", "2001-04-27",  "1981-01-13", '5', '543-123-789-00'),
    (2500.50 , "2005-12-13", "2014-12-07", "1984-03-27", '6', '467-320-000-18'),
    (2500.50 , "2006-03-01", default,"1980-01-29", '7', '785-765-401-21'),
    (2500.50 , "2007-05-01", default,"1971-04-22", '8', '943-904-002-31'),
    (2500.50 , "2007-05-04", default,"1975-07-21", '9', '435-239-443-49'),
    (2500.50 , "2006-02-13", default,"1975-09-10", '10', '210-367-930-18'),
    (3500.00 , "2007-01-11", default,"1971-09-01", '11', '323-120-643-17'),
    (3500.00 , "2006-05-26", default,"1986-09-05", '12', '383-238-129-16'),
    (3500.00 , "2007-06-21", default,"1979-05-06", '13', '433-438-213-15'),
    (3500.00 , "2006-08-12", default,"1973-11-07", '13', '913-929-367-14'),
    (3500.00 , "2007-09-03", default,"1975-10-08", '14', '193-993-940-13'),
    (4500.00 , "2008-09-03", default,"1973-08-03", '15' , '753-823-390-12'),
    (4500.00 , "2007-09-03", default,"1981-08-04", '16', '433-243-578-55'),
    (4500.00 , "2008-09-03", default,"1976-03-03", '17', '933-123-778-44'),
    (4500.00 , "2007-09-03", default,"1977-05-07", '18', '943-001-134-33'),
    (4500.00 , "2009-09-03", default,"1975-07-05", '19', '343-935-010-22'),
    (5500.00 , "2007-09-03", default,"1974-08-12", '19', '123-348-732-11'),
    (5500.00 , "2008-09-03", default,"1979-02-06", '20', '327-239-430-00'),
    (5500.00 , "2007-09-03", default,"1978-01-05", '20', '069.535.672-69'),
    (5500.00 , "2009-09-03", default,"1977-04-07", '20', '087.653.123-46'),
    (5500.00 , "2010-09-03", default,"1976-09-11", '21', '976.321.567-87'),
    (6500.00 , "2008-09-03", default,"1973-03-07", '22', '008.657.432-12'),
    (6500.00 , "2007-09-03", default,"1971-02-08", '23', '123.765.898-70'),
    (6500.00 , "2010-09-03", default,"1972-06-04", '24', '675.432.123-56'),
    (6500.00 , "2006-09-03", "2014-01-25","1979-12-05", '25' , '013.013.130-13'),
    (6500.00 , "2008-09-03", "2018-03-13","1978-04-27", '26', '432.675.432-18'),
	(7500.00 , "2022-09-30", "2022-10-07","2000-04-27", '27', '053.678.543-41'),
	(7500.00 , "2020-02-20", "2022-05-20","1999-01-26", '27', '957.564.098-12'),
	(7500.00 , "2020-04-16", "2021-08-17","1998-03-15", '28', '987.554.398-14'),
	(7500.00 , "2021-09-13", "2022-01-19","1997-06-19", '29', '987.564.098-12'),
	(7500.00 , "2019-07-03", "2020-05-15","1995-05-24", '30', '987.453.786-68');

SELECT * FROM funcionarios;
DELETE FROM funcionarios;

-- TABELA FUNCIONARIOS_DEPARTAMENTOS | APENAS FKS --
INSERT INTO funcionarios_departamentos (Id_Departamento, ocupacao_CBO, CPF_Pessoas_Funcionarios) /* ,Id_Gerente */
VALUES  ('1', '2512-05', '987.453.786-68'), /* Financeiro */
		('1', '251205', '987.564.098-12'),
		('1', '251205', '987.554.398-14'),
		('1', '09310', '957.564.098-12'),
		('1', '09310', '053.678.543-41'),
		('2', '142330', '432.675.432-18'), /* RH */
		('2', '142330', '013.013.130-13'),
		('2', '142330', '675.432.123-56'),
		('2', '252405', '123.765.898-70'),
		('2', '252405', '008.657.432-12'),
		('3', '514320', '321.543.897-65'), /* Serviços Gerais */
		('3', '514320', '133.573.456-12'),
		('3', '514320', '171.257.369-12'),
		('4', '261610', '976.321.567-87'),  /* Editores */
		('4', '261610', '087.653.123-46'),
		('4', '261610', '069.535.672-69'),
		('4', '766120', '327-239-430-00'),
		('4', '766120', '123-348-732-11'),
		('5', '121005', '343-935-010-22'),  /* Admnistrativo */
		('5', '121005', '943-001-134-33'), 
		('5', '252205', '933-123-778-44'), 
		('5', '252205', '433-243-578-55'), 
		('5', '252205', '753-823-390-12'), 
		('6', '212410', '193-993-940-13'), /* Marketing */
		('6', '212410', '913-929-367-14'), 
		('6', '142330', '433-438-213-15'), 
		('6', '142330', '383-238-129-16'), 
		('7', '517330', '323-120-643-17'), /* Segurança */
		('7', '517330', '210-367-930-18'),
		('7', '517330', '435-239-443-49'),
		('8', '521110', '943-904-002-31'),
		('8', '521110', '785-765-401-21'),
		('8', '521110', '467-320-000-18'),
		('8', '521110', '543-123-789-00'),
		('8', '521110', '751-321-775-77');  /* Vendas */

UPDATE funcionarios_departamentos SET Id_Gerente = '1' WHERE CPF_Pessoas_Funcionarios = '987.453.786-68';
UPDATE funcionarios_departamentos SET Id_Gerente = '2' WHERE CPF_Pessoas_Funcionarios = '123.765.898-70';
UPDATE funcionarios_departamentos SET Id_Gerente = '3' WHERE CPF_Pessoas_Funcionarios = '069.535.672-69';
UPDATE funcionarios_departamentos SET Id_Gerente = '4' WHERE CPF_Pessoas_Funcionarios = '933-123-778-44';
UPDATE funcionarios_departamentos SET Id_Gerente = '5' WHERE CPF_Pessoas_Funcionarios = '383-238-129-16';
UPDATE funcionarios_departamentos SET Id_Gerente = '6' WHERE CPF_Pessoas_Funcionarios = '943-904-002-31';

SELECT * FROM funcionarios_departamentos;
DELETE FROM funcionarios_departamentos;

-- TABELA OCUPACAO --
INSERT INTO ocupacao (CBO, funcao)
VALUES 	(25105, "Economista"), --
		(09310, "Contador"), 
        (142730, "Business Partner"), --
		(252405, "Analista de Recursos Humanos"), 
        (514320, "Faxineiro"), --
        (261610, "Editor de Livro"), --
		(766120, " Editor de texto e imagem"),
        (121005, "Planejamento Estratégico"), --
		(252205, "Auditor"), 
        (212410, "Analistas de T.I"), --
		(142330, " Analista de Negócios"), 
		(517330, "Vigilante"), --
		(521110, "Vendedor"); -- 

SELECT * FROM ocupacao;
 DELETE FROM ocupacao;

-- TABELA LIVRARIAS --
INSERT INTO livrarias (CNPJ_Livrarias, nome, telefone, Id_Endereco) /* , Id_Departamento */
VALUES  ("45.948.921/0001-19", "Cultura", "81985742183", '31'),
		("47.575.213/0001-05", "Terra", "81988756432", '32'),
		("97.173.117/0001-09", "Média", "81965432890", '33'),
		("32.221.056/0001-62", "Solar", "81975648399", '34'),
		("44.582.114/0001-62", "Lunar", "81912339876", '35'),
		("75.356.357/0001-06", "Caverna do livro", "81976905342", '36'),
        ("83.053.183/0001-30", "Livraria diário", "81965438796", '37'),
        ("10.438.106/0001-25", "LivraTec", "81987659430", '38'),
        ("07.444.348/0001-17", "MarcaLivra", "8198974309", '39');
        
UPDATE livrarias SET Id_Departamento = '8';

SELECT * FROM livrarias;
DELETE FROM livrarias;
        
-- TABELA GERENTES --
INSERT INTO gerentes (funcao_Gratificada, Id_Gerente, CPF_Pessoas_Funcionarios) /* fg será 50% do salario */
VALUES  (3750.00, default, '987.453.786-68'), 
        (3250.00, default, '123.765.898-70'),
        (2750.00, default, '069.535.672-69'),
        (2250.00, default, '933-123-778-44'),
        (1750.00, default, '383-238-129-16'),
        (1250.00, default, '943-904-002-31'); 
        
SELECT * FROM gerentes;
DELETE FROM gerentes;
        
-- TABELA EXEMPLARES --
INSERT INTO exemplares ( titulo, Id_Exemplar, genero, tipo, numero_Paginas) /*, CNPJ_Editora, Id_Endereco */
VALUES  ("Uma breve história do tempo", DEFAULT, "Ciências", "livro", "256"),
		("Buracos Negro", DEFAULT, "Ciências", "livro", "200"),
		("Cosmos", DEFAULT, "ciências", "livro", "300"),
		("Homo Deus", DEFAULT, "Ciências", "livro", "350"),
		("Respostas de um astrofísico", DEFAULT, "ciências", "livro", "150"),
		("Pálido ponto azul", DEFAULT,  "ciências", "livro", "200"),
		("A origem das espécies", DEFAULT,  "ciências","livro", "270"),
		("sobre o autoritarismo brasileiro", DEFAULT, "Hstória", "livro", "230"),
		("Navio Negreiro", DEFAULT, "Hstória", "livro", "100"),
		("O espetáculos da raças", DEFAULT, "Hstória",  "livro", "180"),
		("O povo brasileiro", DEFAULT, "Hstória", "livro", "210"),
		("Era dos Extremos", DEFAULT, "Hstória", "livro", "500"),
		("Origens do Totalitarismo", DEFAULT, "Hstória", "livro", "380"),
		("Todas as suas imperfeições", DEFAULT, "Romance", "livro", "230"),
		("Mil beijos de garoto", DEFAULT, "Romance", "livro", "130"),
		("A maldição do ex" , DEFAULT, "Romance", "livro", "270"),
		("As doenças do Brasil", DEFAULT, "Romance", "livro", "300"),
		("Mapa do coração", DEFAULT, "Romance", "livro", "120"),
		("Harry Potter", DEFAULT, "Fantasia", "livro", "250"),
		("House of dragon", DEFAULT, "Fantasia", "livro", "300"),
		("Maze runner", DEFAULT, "Fantasia", "livro", "210"),
		("O diário de uma banana", DEFAULT, "Fantasia", "livro", "235"),
		("Senhor dos anéis", DEFAULT, "Fantasia", "livro", "378"),
		("Guerra civil", DEFAULT, "Entretenimento", "HQ", "220"),
		("Turma da Mônica", DEFAULT, "Entretenimento", "HQ", "30"),
		("Crise infinita", DEFAULT, "Entretenimento", "HQ", "190"),
		("Miles morales", DEFAULT, "Entretenimento", "HQ", "110"),
		("A morte do capitão america", DEFAULT, "Entretenimento", "HQ", "120");
        
UPDATE exemplares SET CNPJ_Editora = '87.965.921/0401-16';
UPDATE exemplares SET Id_Endereco = '40';
    
SELECT * FROM exemplares;
DELETE FROM exemplares; 

-- TABELA EXEMPLARES_AUTORES | APENAS FKS --exemplares_autores
INSERT INTO exemplares_autores (Id_Exemplar)
VALUES  ('1'),
		('2'),
		('3'),
		('4'),
		('5'),
		('6'),
		('7'),
		('8'),
		('9'),
		('10'),
		('11'),
		('12'),
		('13'),
		('14'),
		('15'),
		('16'),
		('17'),
		('18'),
		('19'),
		('20'),
		('21'),
		('22'),
		('23'),
		('24'),
		('25'),
		('26'),
		('27'),
		('28');
        
UPDATE exemplares_autores SET CPF_Pessoas_Autores = '432.675.987-65' WHERE Id_Exemplar BETWEEN '24' AND '28';
UPDATE exemplares_autores SET CPF_Pessoas_Autores = '102.990.543-67' WHERE Id_Exemplar BETWEEN '8' AND '13';
UPDATE exemplares_autores SET CPF_Pessoas_Autores = '32.567.234-12' WHERE Id_Exemplar BETWEEN '1' AND '7';
UPDATE exemplares_autores SET CPF_Pessoas_Autores = '035.786.987-64' WHERE Id_Exemplar BETWEEN '14' AND '18';
UPDATE exemplares_autores SET CPF_Pessoas_Autores = '345.764.321-78' WHERE Id_Exemplar BETWEEN '19' AND '23';

UPDATE exemplares_autores SET CNPJ_Editora = '87.965.921/0401-16';

UPDATE exemplares_autores SET Id_Endereco = '40';

SELECT * FROM exemplares_autores;
DELETE FROM exemplares_autores;

-- TABELA ENDERECOS --
INSERT INTO enderecos (CEP, UF, cidade, bairro, logradouro, numero, complemento, Id_Endereco)
VALUES	("54771680","PE", "Camaragibe", "Alberto Maia", "Av. Doutor Luiz Ignacio De Andrade Lima Neto", 397, DEFAULT, DEFAULT),
		("50660010","PE", "Recife", "Torrões", "Rua Arnica", 97, "Bloco 16, apartamento 201", DEFAULT),     
		("56761650","PE", "Olinda", "Alto Da Sé", "Rua cinco de maio", 457, DEFAULT, DEFAULT),
		("59543782","PE", "Jaboatão dos Guararapes", "Cavaleiro", "Rua do marujo", 876, DEFAULT, DEFAULT),
		("76895046","PE", "Jaboatão dos Guararapes ", "Piedade", "Av. Guilherme macedo", 4321, "Bloco A5, apartamento 203", DEFAULT),
        ("89657659","PE", "Olinda ", "Bairro Novo", "Rua São januario", 120, DEFAULT, DEFAULT),
        ("87643763","PE", "Recife ", "Ipsep", "Rua marquês", 785, DEFAULT, DEFAULT),
        ("43536478","PE", "Olinda ", "Carmo", "Av. Brasil", 122, DEFAULT, DEFAULT),
        ("76476483","PE", "Olinda ", "Peixinhos", "Av. real", 372, DEFAULT, DEFAULT),
        ("21049348","PE", "Recife ", "Boa Viagem", "Av. Boa viagem", 647, DEFAULT, DEFAULT),
        ("10293284","PE", "Recife ", "Pina", "Av. santo abel", 789, DEFAULT, DEFAULT),
        ("97087856","PE", "Jaboatão dos Guararapes", "Candeias", "Rua ilheus", 4893, DEFAULT, DEFAULT),
        ("78163764","PE", "Olinda ", "Rio Doce", "Rua leonino", 4373, DEFAULT, DEFAULT),
        ("10210283","PE", "Jaboatão dos Guararapes ", "Prazeres", "Rua Peixinhos", 4565, DEFAULT, DEFAULT),
        ("05403584","PE", "Olinda ", "Sítio Novo", "Rua Libra", 1327, DEFAULT, DEFAULT),
        ("84732463","PE", "Olinda ", "Bairro Novo", "Av. Sargitário", 1983, DEFAULT, DEFAULT),
        ("99437643","PE", "Recife ", "Boa Viagem", "Av. Recife", 9436, DEFAULT, DEFAULT),
        ("87594847","PE", "Recife ", "Pina", "	Av. Seya ", 7436, DEFAULT, DEFAULT),
        ("95485493","PE", "Olinda ", "Peixinhos", "Rua espinha", 12, DEFAULT, DEFAULT),
        ("95478548","PE", "Jaboatão dos Guararapes ", "Jardim Piedade", "Rua flores", 4374, DEFAULT, DEFAULT),
        ("45987459","PE", "Jaboatão dos Guararapes ", "Prazeres", "Av. dado", 5895, DEFAULT, DEFAULT),
        ("98458747","PE", "Olinda ", "Rio Doce", "Rua raquel", 5483, DEFAULT, DEFAULT),
        ("12982398","PE", "Cabo de Santo Agostinho ", "Pontezinha", "Rua metros", 5123, DEFAULT, DEFAULT),
        ("54765498","PE", "Jaboatão dos Guararapes ", "Candeias", "Av. Bernado", 9979, "Conjunto Via Praia", DEFAULT),
        ("13767237","PE", "Recife ", "Ibura", "Rua jesus", 9686, DEFAULT, DEFAULT),
        ("32939289","PE", "Recife ", "Imbiribeira", "Rua Pontes", 1438, DEFAULT, DEFAULT),
        ("43948383","PE", "Recife ", "Boa Viagem", "Rua Mantos", 9547, DEFAULT, DEFAULT),
        ("94384399","PE", "Olinda ", "Bairro Novo", "Rua Sudeste", 5496, DEFAULT, DEFAULT),
        ("43874837","PE", "Jaboatão dos Guararapes", "Rua Portal", "Av Guilherme macedo", 7437, DEFAULT, DEFAULT),
        ("12122143","PE", "Olinda ", "Rio Doce", "Rua Pontal", 14344, DEFAULT, DEFAULT),
        -- Livrarias --
        ("34748378","PE", "Olinda", "Rio Doce", "Rua Luz", 238, DEFAULT, DEFAULT),
        ("94839899","PE", "Recife", "Boa viagem", "Rua Solar", 439, "Shopping Recife", DEFAULT),
        ("32737939","PE", "Jaboatão dos Guararapes", "Rua areia", "Rua Telos", 112, DEFAULT, DEFAULT),
        ("23782884","SP", "São Paulo", "São Paulo", "Rua Princesa", 121, DEFAULT, DEFAULT),
        ("32998943","RJ", "Niterói", "Praia Vermelha", "Rua Coringa", 948, DEFAULT, DEFAULT),
        ("78743884","MG", "Ouro Preto", "Água Limpa", "Rua Sênior", 765, DEFAULT, DEFAULT),
        ("94304837","PB", "João Pessoa", "Castelo Branco", "Rua fadel", 234, DEFAULT, DEFAULT),
        ("56456548","PI", "Teresina", "Vila Operária", "Rua lenus", 856, DEFAULT, DEFAULT),
        ("65456679","PE", "Recife ", "Pina", "Rua Centauri", 754, "Shopping Rio Mar", DEFAULT),
        -- Editora
        ("48398402","PE", "Recife", "Recife Antigo", "Rua Alpha B", 235, DEFAULT, DEFAULT);


SELECT * FROM enderecos;
-- DELETE FROM enderecos; 