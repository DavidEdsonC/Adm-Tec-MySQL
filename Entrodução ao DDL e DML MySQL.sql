CREATE DATABASE IF NOT EXISTS Livraria;

USE Livraria;

CREATE TABLE IF NOT EXISTS Livro (Cod_liv integer primary key NOT NULL,
								 titulo varchar(40) NOT NULL,
                                 isbn numeric(15) NOT NULL,
                                 edicao numeric(2) NOT NULL,
                                 ano int(4)
);

select * from Livro;

ALTER TABLE Livro MODIFY COLUMN ano int(4) AFTER Cod_liv;
DESC Livro;

CREATE TABLE IF NOT EXISTS Editora (cod_ad integer primary key NOT NULL,
					  nome varchar(50),
                      cnpj numeric(65) NOT NULL UNIQUE,
                      endereco varchar(65) NOT NULL,
                      cidade varchar(65) NOT NULL,
                      telefone integer NOT NULL,
                      uf char(2) NOT NULL
);

DESC Editora;

CREATE TABLE IF NOT EXISTS Autor (Cod_au INT NOT NULL primary key AUTO_INCREMENT,
								 nome varchar(60) NOT NULL,
                                 cpf numeric(11) NOT NULL UNIQUE,
                                 rg numeric(9) NOT NULL UNIQUE,
                                 endereco text,
                                 telefone numeric(11) NOT NULL,
                                 cidade varchar(30),
                                 uf char(2) CHECK (uf = 'PE' or uf='CE' or uf='AM' or uf='BA')
);
DROP TABLE Autor;
DESC Autor;

INSERT INTO Autor(nome,cpf,rg,telefone,cidade,uf)
VALUES ('David',09023412301,234654190,82986324201,'Recife','PE');

INSERT INTO Autor(nome,cpf,rg,telefone,cidade,uf)
VALUES ('Edson',12323412301,324654190,86586324201,'Recife','AM');

INSERT INTO Autor(nome,cpf,rg,telefone,cidade,uf)
VALUES ('Pedro',09023414301,234654290,82986321201,'Recife','PE'),
		('Miguel',09023414322,234654299,82986321211,'Recife','BA');

SELECT * FROM Autor;
SELECT nome,cpf,telefone FROM Autor;
SELECT telefone FROM Autor WHERE Cod_au=1;
SELECT * FROM Autor WHERE nome='DAVID';
SELECT cpf FROM Autor WHERE cpf < 10000000000;

ALTER TABLE Autor MODIFY COLUMN rg numeric(9) FIRST;
DESC Autor;

CREATE TABLE IF NOT EXISTS Assunto (cod_as numeric(3) NOT NULL primary key,
									descricao text
);

DESC Assunto; 
ALTER TABLE Assunto ADD seu_nome varchar(30);
ALTER TABLE Assunto ADD numero_contato numeric(12);


