CREATE SCHEMA Curso;
USE Curso;

CREATE TABLE IF NOT EXISTS Cursos(id_cursos INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
					titulo VARCHAR(50) NOT NULL,
                    descricao TEXT,
                    carga_horaria INTEGER NOT NULL,
                    ano YEAR
);
DESC Cursos;
/*INCERINDO DADOS (INSERT INTO <TABELA> VALUES (<VALORES>)*/

INSERT INTO Cursos VALUES (DEFAULT,'HTML5','Introduçâo a HTML5',40,2020),
						  (DEFAULT,'CSS3','Introduçâo a CSS3',40,2020),
                          (DEFAULT,'JavaScript','Introduçâo a JavaScript',80,2021),
                          (DEFAULT,'Java','Introduçâo a Java',440,2022),
                          (DEFAULT,'PHP4','Introduçâo a PHP4',70,2016),
                          (DEFAULT,'Phyton','Introduçâo a Phyton',80,2019),
                          (DEFAULT,'MySQL','Introduçâo a MySQL',70,2018),
                          (DEFAULT,'.NET','Introduçâo a .NET',120,2022);

/*CONSULTA DE DADOS POR ORDEM DECRESENTE (ORDER BY)*/                          
SELECT * FROM Cursos ORDER BY ano;

/*ORDENANDO POR TITULO E NOME EM ORDEM ACENDENTE*/
SELECT titulo,ano FROM Cursos ORDER BY ano DESC, titulo ASC;

/*CONSULTA DE COMPARAÇÃO*/
SELECT * FROM Cursos WHERE ano > 2016 ORDER BY ano;

/* CONSULTA POR DADOS EXPECIFICOS */
SELECT * FROM Cursos WHERE titulo = 'HTML5';

/* CONSULTA ESPECIFICA E COMPARATIVA USANDO (WHERE, BETWEEN E AND) */
SELECT titulo,ano FROM Cursos WHERE ano BETWEEN 2016 AND 2019;

/* CONSULTANDO DADOS USANDO OPERADORES DE COMPARAÇÃO */
SELECT titulo,ano FROM Cursos WHERE ano != 2016 ORDER BY ano;

/* CONSULTA DE DADOS DESTINTOS */
SELECT DISTINCT * FROM Cursos WHERE carga_horaria > 70 ORDER BY ano,carga_horaria;

CREATE TABLE IF NOT EXISTS Alunos(id_alunos INT primary key NOT NULL AUTO_INCREMENT,
					cpf numeric(11) NOT NULL UNIQUE,
					nome varchar(50) NOT NULL,
                    telefone numeric(11),
                    email varchar(50) NOT NULL,
                    sexo enum('F','M') NOT NULL,
                    data_nascimento DATE NOT NULL
);
DESC Alunos;

