/* Introdução a DML comando ( UPDATE ) */

USE curso;
SELECT * FROM cursos;

UPDATE cursos SET titulo = 'PHP4', descricao='Introduçâo a cyber segurança',
carga_horaria='160' WHERE id_cursos='5';
