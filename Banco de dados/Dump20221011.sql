CREATE DATABASE  IF NOT EXISTS `editora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `editora`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: editora
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `area_Literaria` varchar(45) DEFAULT NULL,
  `CPF_Pessoas_Autores` varchar(14) NOT NULL,
  PRIMARY KEY (`CPF_Pessoas_Autores`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES ('Entretenimento','432.675.987-65'),('História','102.990.543-67'),('Ciências','432.567.234-12'),('Romance','035.786.987-64'),('Fantasia','345.764.321-78');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `codigoexemplar`
--

DROP TABLE IF EXISTS `codigoexemplar`;
/*!50001 DROP VIEW IF EXISTS `codigoexemplar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `codigoexemplar` AS SELECT 
 1 AS `Nome`,
 1 AS `CPF`,
 1 AS `Exemplar`,
 1 AS `Código`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `Id_Departamento` tinyint NOT NULL AUTO_INCREMENT,
  `nome_Departamento` varchar(45) NOT NULL,
  `Id_Gerente` tinyint NOT NULL,
  PRIMARY KEY (`Id_Departamento`),
  KEY `Id_Gerente` (`Id_Gerente`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Financeiro',1),(2,'RH',2),(3,'Serviços Gerais',0),(4,'Editores',3),(5,'Admnistrativo',4),(6,'Marketing',5),(7,'Segurança',0),(8,'Vendas',6);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `detalhesfuncionarios`
--

DROP TABLE IF EXISTS `detalhesfuncionarios`;
/*!50001 DROP VIEW IF EXISTS `detalhesfuncionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `detalhesfuncionarios` AS SELECT 
 1 AS `Nome`,
 1 AS `CPF`,
 1 AS `Telefone`,
 1 AS `Email`,
 1 AS `Ocupação`,
 1 AS `Departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editora` (
  `CNPJ_Editora` varchar(18) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `Id_Endereco` tinyint NOT NULL,
  `Id_Departamentos` tinyint NOT NULL,
  PRIMARY KEY (`CNPJ_Editora`),
  KEY `Id_Endereco` (`Id_Endereco`),
  KEY `Id_Departamentos` (`Id_Departamentos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora`
--

LOCK TABLES `editora` WRITE;
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` VALUES ('87.965.921/0401-16','Di Luna',40,5);
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `CEP` varchar(9) NOT NULL,
  `UF` char(2) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `logradouro` varchar(60) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `Id_Endereco` tinyint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Endereco`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES ('54771680','PE','Camaragibe','Alberto Maia','Av. Doutor Luiz Ignacio De Andrade Lima Neto',397,NULL,1),('50660010','PE','Recife','Torrões','Rua Arnica',97,'Bloco 16, apartamento 201',2),('56761650','PE','Olinda','Alto Da Sé','Rua cinco de maio',457,NULL,3),('59543782','PE','Jaboatão dos Guararapes','Cavaleiro','Rua do marujo',876,NULL,4),('76895046','PE','Jaboatão dos Guararapes ','Piedade','Av. Guilherme macedo',4321,'Bloco A5, apartamento 203',5),('89657659','PE','Olinda ','Bairro Novo','Rua São januario',120,NULL,6),('87643763','PE','Recife ','Ipsep','Rua marquês',785,NULL,7),('43536478','PE','Olinda ','Carmo','Av. Brasil',122,NULL,8),('76476483','PE','Olinda ','Peixinhos','Av. real',372,NULL,9),('21049348','PE','Recife ','Boa Viagem','Av. Boa viagem',647,NULL,10),('10293284','PE','Recife ','Pina','Av. santo abel',789,NULL,11),('97087856','PE','Jaboatão dos Guararapes','Candeias','Rua ilheus',4893,NULL,12),('78163764','PE','Olinda ','Rio Doce','Rua leonino',4373,NULL,13),('10210283','PE','Jaboatão dos Guararapes ','Prazeres','Rua Peixinhos',4565,NULL,14),('05403584','PE','Olinda ','Sítio Novo','Rua Libra',1327,NULL,15),('84732463','PE','Olinda ','Bairro Novo','Av. Sargitário',1983,NULL,16),('99437643','PE','Recife ','Boa Viagem','Av. Recife',9436,NULL,17),('87594847','PE','Recife ','Pina','	Av. Seya ',7436,NULL,18),('95485493','PE','Olinda ','Peixinhos','Rua espinha',12,NULL,19),('95478548','PE','Jaboatão dos Guararapes ','Jardim Piedade','Rua flores',4374,NULL,20),('45987459','PE','Jaboatão dos Guararapes ','Prazeres','Av. dado',5895,NULL,21),('98458747','PE','Olinda ','Rio Doce','Rua raquel',5483,NULL,22),('12982398','PE','Cabo de Santo Agostinho ','Pontezinha','Rua metros',5123,NULL,23),('54765498','PE','Jaboatão dos Guararapes ','Candeias','Av. Bernado',9979,'Conjunto Via Praia',24),('13767237','PE','Recife ','Ibura','Rua jesus',9686,NULL,25),('32939289','PE','Recife ','Imbiribeira','Rua Pontes',1438,NULL,26),('43948383','PE','Recife ','Boa Viagem','Rua Mantos',9547,NULL,27),('94384399','PE','Olinda ','Bairro Novo','Rua Sudeste',5496,NULL,28),('43874837','PE','Jaboatão dos Guararapes','Rua Portal','Av Guilherme macedo',7437,NULL,29),('12122143','PE','Olinda ','Rio Doce','Rua Pontal',14344,NULL,30),('34748378','PE','Olinda','Rio Doce','Rua Luz',238,NULL,31),('94839899','PE','Recife','Boa viagem','Rua Solar',439,'Shopping Recife',32),('32737939','PE','Jaboatão dos Guararapes','Rua areia','Rua Telos',112,NULL,33),('23782884','SP','São Paulo','São Paulo','Rua Princesa',121,NULL,34),('32998943','RJ','Niterói','Praia Vermelha','Rua Coringa',948,NULL,35),('78743884','MG','Ouro Preto','Água Limpa','Rua Sênior',765,NULL,36),('94304837','PB','João Pessoa','Castelo Branco','Rua fadel',234,NULL,37),('56456548','PI','Teresina','Vila Operária','Rua lenus',856,NULL,38),('65456679','PE','Recife ','Pina','Rua Centauri',754,'Shopping Rio Mar',39),('48398402','PE','Recife','Recife Antigo','Rua Alpha B',235,NULL,40);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `enderecosfuncionarios`
--

DROP TABLE IF EXISTS `enderecosfuncionarios`;
/*!50001 DROP VIEW IF EXISTS `enderecosfuncionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enderecosfuncionarios` AS SELECT 
 1 AS `nome funcionario`,
 1 AS `cpf funcionário`,
 1 AS `IdEndereço`,
 1 AS `UF`,
 1 AS `CEP`,
 1 AS `cidade`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `exemplares`
--

DROP TABLE IF EXISTS `exemplares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exemplares` (
  `titulo` varchar(60) NOT NULL,
  `Id_Exemplar` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `numero_Paginas` int NOT NULL,
  `CNPJ_Editora` varchar(18) NOT NULL,
  `Id_Endereco` tinyint NOT NULL,
  PRIMARY KEY (`Id_Exemplar`),
  KEY `CNPJ_Editora` (`CNPJ_Editora`),
  KEY `Id_Endereco` (`Id_Endereco`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplares`
--

LOCK TABLES `exemplares` WRITE;
/*!40000 ALTER TABLE `exemplares` DISABLE KEYS */;
INSERT INTO `exemplares` VALUES ('Uma breve história do tempo',1,'Ciências','livro',256,'87.965.921/0401-16',40),('Buracos Negro',2,'Ciências','livro',200,'87.965.921/0401-16',40),('Cosmos',3,'ciências','livro',300,'87.965.921/0401-16',40),('Homo Deus',4,'Ciências','livro',350,'87.965.921/0401-16',40),('Respostas de um astrofísico',5,'ciências','livro',150,'87.965.921/0401-16',40),('Pálido ponto azul',6,'ciências','livro',200,'87.965.921/0401-16',40),('A origem das espécies',7,'ciências','livro',270,'87.965.921/0401-16',40),('sobre o autoritarismo brasileiro',8,'Hstória','livro',230,'87.965.921/0401-16',40),('Navio Negreiro',9,'Hstória','livro',100,'87.965.921/0401-16',40),('O espetáculos da raças',10,'Hstória','livro',180,'87.965.921/0401-16',40),('O povo brasileiro',11,'Hstória','livro',210,'87.965.921/0401-16',40),('Era dos Extremos',12,'Hstória','livro',500,'87.965.921/0401-16',40),('Origens do Totalitarismo',13,'Hstória','livro',380,'87.965.921/0401-16',40),('Todas as suas imperfeições',14,'Romance','livro',230,'87.965.921/0401-16',40),('Mil beijos de garoto',15,'Romance','livro',130,'87.965.921/0401-16',40),('A maldição do ex',16,'Romance','livro',270,'87.965.921/0401-16',40),('As doenças do Brasil',17,'Romance','livro',300,'87.965.921/0401-16',40),('Mapa do coração',18,'Romance','livro',120,'87.965.921/0401-16',40),('Harry Potter',19,'Fantasia','livro',250,'87.965.921/0401-16',40),('House of dragon',20,'Fantasia','livro',300,'87.965.921/0401-16',40),('Maze runner',21,'Fantasia','livro',210,'87.965.921/0401-16',40),('O diário de uma banana',22,'Fantasia','livro',235,'87.965.921/0401-16',40),('Senhor dos anéis',23,'Fantasia','livro',378,'87.965.921/0401-16',40),('Guerra civil',24,'Entretenimento','HQ',220,'87.965.921/0401-16',40),('Turma da Mônica',25,'Entretenimento','HQ',30,'87.965.921/0401-16',40),('Crise infinita',26,'Entretenimento','HQ',190,'87.965.921/0401-16',40),('Miles morales',27,'Entretenimento','HQ',110,'87.965.921/0401-16',40),('A morte do capitão america',28,'Entretenimento','HQ',120,'87.965.921/0401-16',40);
/*!40000 ALTER TABLE `exemplares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exemplares_autores`
--

DROP TABLE IF EXISTS `exemplares_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exemplares_autores` (
  `CPF_Pessoas_Autores` varchar(14) NOT NULL,
  `Id_Exemplar` tinyint NOT NULL,
  `CNPJ_Editora` varchar(18) NOT NULL,
  `Id_Endereco` tinyint NOT NULL,
  KEY `CPF_Pessoas_Autores` (`CPF_Pessoas_Autores`),
  KEY `Id_Exemplar` (`Id_Exemplar`),
  KEY `CNPJ_Editora` (`CNPJ_Editora`),
  KEY `Id_Endereco` (`Id_Endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplares_autores`
--

LOCK TABLES `exemplares_autores` WRITE;
/*!40000 ALTER TABLE `exemplares_autores` DISABLE KEYS */;
INSERT INTO `exemplares_autores` VALUES ('32.567.234-12',1,'87.965.921/0401-16',40),('32.567.234-12',2,'87.965.921/0401-16',40),('32.567.234-12',3,'87.965.921/0401-16',40),('32.567.234-12',4,'87.965.921/0401-16',40),('32.567.234-12',5,'87.965.921/0401-16',40),('32.567.234-12',6,'87.965.921/0401-16',40),('32.567.234-12',7,'87.965.921/0401-16',40),('102.990.543-67',8,'87.965.921/0401-16',40),('102.990.543-67',9,'87.965.921/0401-16',40),('102.990.543-67',10,'87.965.921/0401-16',40),('102.990.543-67',11,'87.965.921/0401-16',40),('102.990.543-67',12,'87.965.921/0401-16',40),('102.990.543-67',13,'87.965.921/0401-16',40),('035.786.987-64',14,'87.965.921/0401-16',40),('035.786.987-64',15,'87.965.921/0401-16',40),('035.786.987-64',16,'87.965.921/0401-16',40),('035.786.987-64',17,'87.965.921/0401-16',40),('035.786.987-64',18,'87.965.921/0401-16',40),('345.764.321-78',19,'87.965.921/0401-16',40),('345.764.321-78',20,'87.965.921/0401-16',40),('345.764.321-78',21,'87.965.921/0401-16',40),('345.764.321-78',22,'87.965.921/0401-16',40),('345.764.321-78',23,'87.965.921/0401-16',40),('432.675.987-65',24,'87.965.921/0401-16',40),('432.675.987-65',25,'87.965.921/0401-16',40),('432.675.987-65',26,'87.965.921/0401-16',40),('432.675.987-65',27,'87.965.921/0401-16',40),('432.675.987-65',28,'87.965.921/0401-16',40);
/*!40000 ALTER TABLE `exemplares_autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `exemplaresdosautores`
--

DROP TABLE IF EXISTS `exemplaresdosautores`;
/*!50001 DROP VIEW IF EXISTS `exemplaresdosautores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `exemplaresdosautores` AS SELECT 
 1 AS `Nome autor`,
 1 AS `CPF autor`,
 1 AS `Titulo`,
 1 AS `Id exemplar`,
 1 AS `Genero exemplar`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `salario` decimal(6,2) NOT NULL,
  `data_Admissao` datetime NOT NULL,
  `data_Demissao` datetime DEFAULT NULL,
  `data_Nascimento` date DEFAULT NULL,
  `CPF_Pessoas_Funcionarios` varchar(14) NOT NULL,
  `Id_Enderecos` tinyint NOT NULL,
  PRIMARY KEY (`CPF_Pessoas_Funcionarios`),
  KEY `Id_Enderecos` (`Id_Enderecos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1520.00,'2005-04-27 00:00:00','2015-11-03 00:00:00','1979-12-02','321.543.897-65',1),(1520.00,'2005-02-07 00:00:00','2016-10-01 00:00:00','1979-03-12','133.573.456-12',2),(1520.00,'2005-01-06 00:00:00','2016-09-13 00:00:00','1980-05-21','171.257.369-12',3),(1520.00,'2006-08-11 00:00:00','2001-04-27 00:00:00','1978-09-24','751-321-775-77',4),(1520.00,'2006-11-15 00:00:00','2001-04-27 00:00:00','1981-01-13','543-123-789-00',5),(2500.50,'2005-12-13 00:00:00','2014-12-07 00:00:00','1984-03-27','467-320-000-18',6),(2500.50,'2006-03-01 00:00:00',NULL,'1980-01-29','785-765-401-21',7),(2500.50,'2007-05-01 00:00:00',NULL,'1971-04-22','943-904-002-31',8),(2500.50,'2007-05-04 00:00:00',NULL,'1975-07-21','435-239-443-49',9),(2500.50,'2006-02-13 00:00:00',NULL,'1975-09-10','210-367-930-18',10),(3500.00,'2007-01-11 00:00:00',NULL,'1971-09-01','323-120-643-17',11),(3500.00,'2006-05-26 00:00:00',NULL,'1986-09-05','383-238-129-16',12),(3500.00,'2007-06-21 00:00:00',NULL,'1979-05-06','433-438-213-15',13),(3500.00,'2006-08-12 00:00:00',NULL,'1973-11-07','913-929-367-14',13),(3500.00,'2007-09-03 00:00:00',NULL,'1975-10-08','193-993-940-13',14),(4500.00,'2008-09-03 00:00:00',NULL,'1973-08-03','753-823-390-12',15),(4500.00,'2007-09-03 00:00:00',NULL,'1981-08-04','433-243-578-55',16),(4500.00,'2008-09-03 00:00:00',NULL,'1976-03-03','933-123-778-44',17),(4500.00,'2007-09-03 00:00:00',NULL,'1977-05-07','943-001-134-33',18),(4500.00,'2009-09-03 00:00:00',NULL,'1975-07-05','343-935-010-22',19),(5500.00,'2007-09-03 00:00:00',NULL,'1974-08-12','123-348-732-11',19),(5500.00,'2008-09-03 00:00:00',NULL,'1979-02-06','327-239-430-00',20),(5500.00,'2007-09-03 00:00:00',NULL,'1978-01-05','069.535.672-69',20),(5500.00,'2009-09-03 00:00:00',NULL,'1977-04-07','087.653.123-46',20),(5500.00,'2010-09-03 00:00:00',NULL,'1976-09-11','976.321.567-87',21),(6500.00,'2008-09-03 00:00:00',NULL,'1973-03-07','008.657.432-12',22),(6500.00,'2007-09-03 00:00:00',NULL,'1971-02-08','123.765.898-70',23),(6500.00,'2010-09-03 00:00:00',NULL,'1972-06-04','675.432.123-56',24),(6500.00,'2006-09-03 00:00:00','2014-01-25 00:00:00','1979-12-05','013.013.130-13',25),(6500.00,'2008-09-03 00:00:00','2018-03-13 00:00:00','1978-04-27','432.675.432-18',26),(7500.00,'2022-09-30 00:00:00','2022-10-07 00:00:00','2000-04-27','053.678.543-41',27),(7500.00,'2020-02-20 00:00:00','2022-05-20 00:00:00','1999-01-26','957.564.098-12',27),(7500.00,'2020-04-16 00:00:00','2021-08-17 00:00:00','1998-03-15','987.554.398-14',28),(7500.00,'2021-09-13 00:00:00','2022-01-19 00:00:00','1997-06-19','987.564.098-12',29),(7500.00,'2019-07-03 00:00:00','2020-05-15 00:00:00','1995-05-24','987.453.786-68',30);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios_departamentos`
--

DROP TABLE IF EXISTS `funcionarios_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios_departamentos` (
  `Id_Departamento` tinyint NOT NULL,
  `Id_Gerente` tinyint NOT NULL,
  `CPF_Pessoas_Funcionarios` varchar(14) NOT NULL,
  `ocupacao_CBO` int NOT NULL,
  KEY `Id_Departamento` (`Id_Departamento`),
  KEY `Id_Gerente` (`Id_Gerente`),
  KEY `CPF_Pessoas_Funcionarios` (`CPF_Pessoas_Funcionarios`),
  KEY `ocupacao_CBO` (`ocupacao_CBO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios_departamentos`
--

LOCK TABLES `funcionarios_departamentos` WRITE;
/*!40000 ALTER TABLE `funcionarios_departamentos` DISABLE KEYS */;
INSERT INTO `funcionarios_departamentos` VALUES (1,1,'987.453.786-68',2512),(1,0,'987.564.098-12',251205),(1,0,'987.554.398-14',251205),(1,0,'957.564.098-12',9310),(1,0,'053.678.543-41',9310),(2,0,'432.675.432-18',142330),(2,0,'013.013.130-13',142330),(2,0,'675.432.123-56',142330),(2,2,'123.765.898-70',252405),(2,0,'008.657.432-12',252405),(3,0,'321.543.897-65',514320),(3,0,'133.573.456-12',514320),(3,0,'171.257.369-12',514320),(4,0,'976.321.567-87',261610),(4,0,'087.653.123-46',261610),(4,3,'069.535.672-69',261610),(4,0,'327-239-430-00',766120),(4,0,'123-348-732-11',766120),(5,0,'343-935-010-22',121005),(5,0,'943-001-134-33',121005),(5,4,'933-123-778-44',252205),(5,0,'433-243-578-55',252205),(5,0,'753-823-390-12',252205),(6,0,'193-993-940-13',212410),(6,0,'913-929-367-14',212410),(6,0,'433-438-213-15',142330),(6,5,'383-238-129-16',142330),(7,0,'323-120-643-17',517330),(7,0,'210-367-930-18',517330),(7,0,'435-239-443-49',517330),(8,6,'943-904-002-31',521110),(8,0,'785-765-401-21',521110),(8,0,'467-320-000-18',521110),(8,0,'543-123-789-00',521110),(8,0,'751-321-775-77',521110);
/*!40000 ALTER TABLE `funcionarios_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerentes`
--

DROP TABLE IF EXISTS `gerentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerentes` (
  `funcao_Gratificada` decimal(6,2) NOT NULL,
  `Id_Gerente` tinyint NOT NULL AUTO_INCREMENT,
  `CPF_Pessoas_Funcionarios` varchar(14) NOT NULL,
  PRIMARY KEY (`Id_Gerente`),
  KEY `CPF_Pessoas_Funcionarios` (`CPF_Pessoas_Funcionarios`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerentes`
--

LOCK TABLES `gerentes` WRITE;
/*!40000 ALTER TABLE `gerentes` DISABLE KEYS */;
INSERT INTO `gerentes` VALUES (3750.00,1,'987.453.786-68'),(3250.00,2,'123.765.898-70'),(2750.00,3,'069.535.672-69'),(2250.00,4,'933-123-778-44'),(1750.00,5,'383-238-129-16'),(1250.00,6,'943-904-002-31');
/*!40000 ALTER TABLE `gerentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `infosdepartamentos`
--

DROP TABLE IF EXISTS `infosdepartamentos`;
/*!50001 DROP VIEW IF EXISTS `infosdepartamentos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `infosdepartamentos` AS SELECT 
 1 AS `Nome gerente`,
 1 AS `CPF gerente`,
 1 AS `Ocupação`,
 1 AS `Departamento`,
 1 AS `COUNT(f.CPF_Pessoas_Funcionarios)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listafuncionarios`
--

DROP TABLE IF EXISTS `listafuncionarios`;
/*!50001 DROP VIEW IF EXISTS `listafuncionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listafuncionarios` AS SELECT 
 1 AS `nome funcionário`,
 1 AS `cpf funcionário`,
 1 AS `email funcionário`,
 1 AS `dataAdmissao`,
 1 AS `dataDemissao`,
 1 AS `salario`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `livrarias`
--

DROP TABLE IF EXISTS `livrarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livrarias` (
  `nome` varchar(45) NOT NULL,
  `CNPJ_Livrarias` varchar(18) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `Id_Departamento` tinyint NOT NULL,
  `Id_Endereco` tinyint NOT NULL,
  PRIMARY KEY (`CNPJ_Livrarias`),
  KEY `Id_Departamento` (`Id_Departamento`),
  KEY `Id_Endereco` (`Id_Endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livrarias`
--

LOCK TABLES `livrarias` WRITE;
/*!40000 ALTER TABLE `livrarias` DISABLE KEYS */;
INSERT INTO `livrarias` VALUES ('Cultura','45.948.921/0001-19','81985742183',8,31),('Terra','47.575.213/0001-05','81988756432',8,32),('Média','97.173.117/0001-09','81965432890',8,33),('Solar','32.221.056/0001-62','81975648399',8,34),('Lunar','44.582.114/0001-62','81912339876',8,35),('Caverna do livro','75.356.357/0001-06','81976905342',8,36),('Livraria diário','83.053.183/0001-30','81965438796',8,37),('LivraTec','10.438.106/0001-25','81987659430',8,38),('MarcaLivra','07.444.348/0001-17','8198974309',8,39);
/*!40000 ALTER TABLE `livrarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `livrariasenderecos`
--

DROP TABLE IF EXISTS `livrariasenderecos`;
/*!50001 DROP VIEW IF EXISTS `livrariasenderecos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `livrariasenderecos` AS SELECT 
 1 AS `Nome`,
 1 AS `CNPJ`,
 1 AS `Telefone`,
 1 AS `Id endereco`,
 1 AS `CEP`,
 1 AS `UF`,
 1 AS `Cidade`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ocupacao`
--

DROP TABLE IF EXISTS `ocupacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacao` (
  `CBO` int NOT NULL,
  `funcao` varchar(45) NOT NULL,
  PRIMARY KEY (`CBO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacao`
--

LOCK TABLES `ocupacao` WRITE;
/*!40000 ALTER TABLE `ocupacao` DISABLE KEYS */;
INSERT INTO `ocupacao` VALUES (25105,'Economista'),(9310,'Contador'),(142730,'Business Partner'),(252405,'Analista de Recursos Humanos'),(514320,'Faxineiro'),(261610,'Editor de Livro'),(766120,' Editor de texto e imagem'),(121005,'Planejamento Estratégico'),(252205,'Auditor'),(212410,'Analistas de T.I'),(142330,' Analista de Negócios'),(517330,'Vigilante'),(521110,'Vendedor');
/*!40000 ALTER TABLE `ocupacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pessoafuncionariodepartamento`
--

DROP TABLE IF EXISTS `pessoafuncionariodepartamento`;
/*!50001 DROP VIEW IF EXISTS `pessoafuncionariodepartamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pessoafuncionariodepartamento` AS SELECT 
 1 AS `Nome`,
 1 AS `CPF`,
 1 AS `Salario`,
 1 AS `Data Admissão`,
 1 AS `Data Demissão`,
 1 AS `Departamento`,
 1 AS `Id_Departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `nome` varchar(60) NOT NULL,
  `CPF_pessoas` varchar(14) NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `sexo` char(2) DEFAULT NULL,
  `nome_Social` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`CPF_pessoas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES ('João Pedro','102.990.543-67','81987918080','jpdoscria@gmail.com','MA',NULL),('Maria Joaquina','987.453.786-68','81986543431','Jleal@gmail.com','NB','João Leal'),('Marcos de Paula','987.564.098-12','81990543241','Marcosdepau@gmail.com','MA',NULL),('Fernando Mendes','987.554.398-14','8195678897','fermendes@gmail.com','MA',NULL),('Marcos de Paula','957.564.098-12','81990543241','Marcosdepau@gmail.com','MA',NULL),('Fernanda Souza','053.678.543-41','81987654321','fernanda.souza@gmail.com','FE',NULL),('Agatha Ferraz','035.786.987-64','81985431235','Agatha_ferraz@gmail.com','FE',NULL),('Marina Silva','432.675.432-18','8198436543','silva_marina@gmail.com','FE',NULL),('Luiz inacio ','013.013.130-13','81994135413','Lulinha2023@gmail.com','MA',NULL),('Raul Henrique','675.432.123-56','81989765432','Raul_henri233@gmail.com','MA',NULL),('Sara lopes','345.764.321-78','81973435542','Sarinha.lopes@gmail.com','NB','Harry Vitaliccius'),('Riquelme Costa','123.765.898-70','81984213675','riqueboladao69@gmail.com','MA',NULL),('Karollayne Alves','008.657.432-12','81975462321','karol.avila321@gmail.com','FE',NULL),('Rennan Luccas','432.567.234-12','81987653421','rennan.oficial@gmail.com','MA',NULL),('Murilo rocha','321.543.897-65','81986213453','M.rocha357@gmail.com','FE','Clara Sena'),('Gilmar Ribeiro','432.675.987-65','81992345674','gilmar_ribeiro122@gmail.com','MA',NULL),('Rafaella Nunes','133.573.456-12','81983438313','Marcosdepau@gmail.com','FE',NULL),('Roberta Ferreira','171.257.369-12','81997548866','Robertinha_ferreira2022@gmail.com','FE',NULL),('Antonio José','976.321.567-87','81995412876','tonhozé@gmail.com','MA',NULL),('Rita Galvão','087.653.123-46','81989763412','Galvão.rita432@gmail.com','MA','Pedro Galvão'),('Maiara Menezes','069.535.672-69','81984127654','Maiarocadafavela@gmail.com','FE',NULL),('José Aldo','327-239-430-00','61956417325','aldo_champions@gmail.com','MA',NULL),('Ana Beatriz','123-348-732-11','61978659039','ana.beatriz77@gmai.com','FE',NULL),('Vini Junior','343-935-010-22','61923457892','vinijuju@gmail.com','MA',NULL),('Ana Vitória','943-001-134-33','61919283467','AnaVi_2145@gmail.com','FE',NULL),('Alvaro Rodrigues','933-123-778-44','61975894033','AlvoRodrigues_@gmail.com','MA',NULL),('Cinthia Monteiro','433-243-578-55','68974693020','Monteiro_cinthia@gmail.com','FE',NULL),('Victor Sllosevicth','753-823-390-12','68900283274','sllosevith2015@hotmail.com','MA',NULL),('Julia Lins','193-993-940-13','68932360032','Juju_lins@gmail.com','FE',NULL),('Oscar Lima','913-929-367-14','68964683920','OscarBregoso@gmail.com','MA',NULL),('Thais Victória','433-438-213-15','68919743274','ThataIS@gmail.com','FE',NULL),('Yago Felipe','383-238-129-16','82923143434','YagoYago@gmail.com','MA',NULL),('Leticia Watiti','323-120-643-17','82998438493','Waititi_marvel@gmail.com','FE',NULL),('Steve Rogers','210-367-930-18','82909342003','TheBest_Steve@gmail.com','MA',NULL),('Sheldon Cooper','435-239-443-49','8596473712','sheldonBregoso@gmail.com','MA',NULL),('Penny Barros','943-904-002-31','68976327183','penny_sorvetinho@gmail.com','FE',NULL),('Leonard Hofsteder','785-765-401-21','81953694390','leonardFEPS@gmail,com','MA',NULL),('Haj Kotraphali','467-320-000-18','81953672943','IndianHAJ@gmail.com','MA',NULL),('Austin Butler','543-123-789-00','82973262003','AustinButler.OF@gmail.com','MA',NULL),('Diana Lua','751-321-775-77','82993463327','LuaDia@gmail.com','FE',NULL);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `codigoexemplar`
--

/*!50001 DROP VIEW IF EXISTS `codigoexemplar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `codigoexemplar` AS select `p`.`nome` AS `Nome`,`a`.`CPF_Pessoas_Autores` AS `CPF`,`e`.`titulo` AS `Exemplar`,`e`.`Id_Exemplar` AS `Código` from (((`pessoas` `p` join `autores` `a` on((`p`.`CPF_pessoas` = `a`.`CPF_Pessoas_Autores`))) join `exemplares_autores` `ea` on((`a`.`CPF_Pessoas_Autores` = `ea`.`CPF_Pessoas_Autores`))) join `exemplares` `e` on((`ea`.`Id_Exemplar` = `e`.`Id_Exemplar`))) order by `e`.`titulo` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `detalhesfuncionarios`
--

/*!50001 DROP VIEW IF EXISTS `detalhesfuncionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalhesfuncionarios` AS select distinct `p`.`nome` AS `Nome`,`f`.`CPF_Pessoas_Funcionarios` AS `CPF`,`p`.`telefone` AS `Telefone`,`p`.`email` AS `Email`,`o`.`funcao` AS `Ocupação`,`d`.`nome_Departamento` AS `Departamento` from (((((`ocupacao` `o` join `funcionarios_departamentos` `fd` on((`o`.`CBO` = `fd`.`ocupacao_CBO`))) join `departamentos` `d` on((`fd`.`Id_Departamento` = `d`.`Id_Departamento`))) join `funcionarios_departamentos` on((`d`.`Id_Departamento` = `fd`.`Id_Departamento`))) join `funcionarios` `f` on((`fd`.`CPF_Pessoas_Funcionarios` = `f`.`CPF_Pessoas_Funcionarios`))) join `pessoas` `p` on((`f`.`CPF_Pessoas_Funcionarios` = `p`.`CPF_pessoas`))) order by `p`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enderecosfuncionarios`
--

/*!50001 DROP VIEW IF EXISTS `enderecosfuncionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enderecosfuncionarios` AS select `p`.`nome` AS `nome funcionario`,`f`.`CPF_Pessoas_Funcionarios` AS `cpf funcionário`,`en`.`Id_Endereco` AS `IdEndereço`,`en`.`UF` AS `UF`,`en`.`CEP` AS `CEP`,`en`.`cidade` AS `cidade` from ((`enderecos` `en` join `funcionarios` `f` on((`en`.`Id_Endereco` = `f`.`Id_Enderecos`))) join `pessoas` `p` on((`f`.`CPF_Pessoas_Funcionarios` = `p`.`CPF_pessoas`))) order by `en`.`cidade` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `exemplaresdosautores`
--

/*!50001 DROP VIEW IF EXISTS `exemplaresdosautores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exemplaresdosautores` AS select `p`.`nome` AS `Nome autor`,`p`.`CPF_pessoas` AS `CPF autor`,`e`.`titulo` AS `Titulo`,`e`.`Id_Exemplar` AS `Id exemplar`,`e`.`genero` AS `Genero exemplar` from (((`pessoas` `p` join `autores` `au` on((`p`.`CPF_pessoas` = `au`.`CPF_Pessoas_Autores`))) join `exemplares_autores` `exa` on((`au`.`CPF_Pessoas_Autores` = `exa`.`CPF_Pessoas_Autores`))) join `exemplares` `e` on((`exa`.`Id_Exemplar` = `e`.`Id_Exemplar`))) order by `p`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `infosdepartamentos`
--

/*!50001 DROP VIEW IF EXISTS `infosdepartamentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `infosdepartamentos` AS select `p`.`nome` AS `Nome gerente`,`g`.`CPF_Pessoas_Funcionarios` AS `CPF gerente`,`o`.`funcao` AS `Ocupação`,`d`.`nome_Departamento` AS `Departamento`,count(`f`.`CPF_Pessoas_Funcionarios`) AS `COUNT(f.CPF_Pessoas_Funcionarios)` from (((((`ocupacao` `o` join `funcionarios_departamentos` `fd` on((`o`.`CBO` = `fd`.`ocupacao_CBO`))) join `departamentos` `d` on((`fd`.`Id_Departamento` = `d`.`Id_Departamento`))) join `gerentes` `g` on((`d`.`Id_Gerente` = `g`.`Id_Gerente`))) join `funcionarios` `f` on((`g`.`CPF_Pessoas_Funcionarios` = `f`.`CPF_Pessoas_Funcionarios`))) join `pessoas` `p` on((`f`.`CPF_Pessoas_Funcionarios` = `p`.`CPF_pessoas`))) group by `d`.`nome_Departamento` order by `d`.`nome_Departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listafuncionarios`
--

/*!50001 DROP VIEW IF EXISTS `listafuncionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listafuncionarios` AS select `p`.`nome` AS `nome funcionário`,`f`.`CPF_Pessoas_Funcionarios` AS `cpf funcionário`,`p`.`email` AS `email funcionário`,`f`.`data_Admissao` AS `dataAdmissao`,`f`.`data_Demissao` AS `dataDemissao`,`f`.`salario` AS `salario` from (`pessoas` `p` join `funcionarios` `f` on((`p`.`CPF_pessoas` = `f`.`CPF_Pessoas_Funcionarios`))) order by `p`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `livrariasenderecos`
--

/*!50001 DROP VIEW IF EXISTS `livrariasenderecos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `livrariasenderecos` AS select `li`.`nome` AS `Nome`,`li`.`CNPJ_Livrarias` AS `CNPJ`,`li`.`telefone` AS `Telefone`,`e`.`Id_Endereco` AS `Id endereco`,`e`.`CEP` AS `CEP`,`e`.`UF` AS `UF`,`e`.`logradouro` AS `Cidade` from (`livrarias` `li` join `enderecos` `e` on((`li`.`Id_Endereco` = `e`.`Id_Endereco`))) order by `li`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pessoafuncionariodepartamento`
--

/*!50001 DROP VIEW IF EXISTS `pessoafuncionariodepartamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pessoafuncionariodepartamento` AS select `p`.`nome` AS `Nome`,`f`.`CPF_Pessoas_Funcionarios` AS `CPF`,`f`.`salario` AS `Salario`,`f`.`data_Admissao` AS `Data Admissão`,`f`.`data_Demissao` AS `Data Demissão`,`d`.`nome_Departamento` AS `Departamento`,`d`.`Id_Departamento` AS `Id_Departamento` from (((`pessoas` `p` join `funcionarios` `f` on((`p`.`CPF_pessoas` = `f`.`CPF_Pessoas_Funcionarios`))) join `funcionarios_departamentos` `fd` on((`f`.`CPF_Pessoas_Funcionarios` = `fd`.`CPF_Pessoas_Funcionarios`))) join `departamentos` `d` on((`fd`.`Id_Departamento` = `d`.`Id_Departamento`))) order by `d`.`nome_Departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 21:15:01
