Create database db_biblioteca;

use db_biblioteca;

create table if not exists bl_livro (
	ID_Livro SMALLINT AUTO_INCREMENT PRIMARY KEY,
    Nome_Livro VARCHAR(70) NOT NULL,
    ISBN13 CHAR(13),
    ISBN10 CHAR(10),
    ID_Categoria SMALLINT,
    ID_Autor SMALLINT NOT NULL,
    Data_Pub DATE NOT NULL,
    Preco_Livro DECIMAL(6,2) NOT NULL
);

create table tbl_autores(
	ID_Autor SMALLINT PRIMARY KEY,
    Nome_Autor VARCHAR(50) NOT NULL,
    Sobrenome_Autor VARCHAR(60) NOT NULL
);

create table tbl_categorias(
	Id_Categoria SMALLINT PRIMARY KEY,
    Categoria VARCHAR(30) NOT NULL
);

create table tbl_editoras(
	Id_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
	Nome_Editora VARCHAR(50) NOT NULL
);


INSERT INTO tbl_editoras (Nome_Editora) VALUES (default, 'Prentice Hall'),
 (default,'O Reilly'),
 (default,'Microsoft Press'),
 (default,'Wiley'),
 (default,'McGraw-Hill Education');
 
 
 INSERT INTO tbl_autores VALUES ( 1, 'Daniel', 'Barret'),
 ( 2, 'Gerakd', 'Carter' ),
 ( 3, 'Mark', 'Sobell' ),
 ( 4, 'William', 'Stanek' ),
 ( 5, 'Richard', 'Blum' ),
 ( 6, 'Jostein', 'Gaarder' ),
 ( 7, 'Umberto', 'Eco' ),
 ( 8, 'Nell', 'De Grass' ),
 ( 9, 'Stephen', 'Hawking' ),
 ( 10, 'Stephen', 'Jay Gould' ),
 ( 11, 'Charles', 'Darwin' ),
 ( 12, 'Alan', 'Turing' ),
 ( 13, 'Simon', 'Jay Monk' ),
 ( 14, 'Paul', 'Scherz' );
 
 
 INSERT INTO tbl_categorias VALUES (1, 'Tecnologia'), 
 (2, 'História'), 
 (3, 'Literatura'), 
 (4, 'Astronomia'), 
 (5, 'Botônica');
 
 
 INSERT INTO tbl_Livros VALUES ('windows Server 2012 Insede Out', '9780735666313', '0735666318', '20130125', '66.80', '1', '4', '3'),
 ('Microsoft Exchange Server 2010', '9780735640610', '0735640610', '20101201', '45.30', '1', '5', '3');