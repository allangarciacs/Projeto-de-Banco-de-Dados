############################################################################
# ARQUIVO COMPLETO DE ESTUDOS SQL - MYSQL
# Conteúdo:
# - INSERT
# - SELECT
# - WHERE
# - ORDER BY
# - LIKE
# - BETWEEN
# - IN
# - IS NULL
# - FUNÇÕES
# - GROUP BY
# - HAVING
# - JOIN
# - SUBQUERIES
# - VIEW
# - TRANSAÇÕES
# - EXERCÍCIOS EXTRAS PARA PROVA
############################################################################

USE editora_db;

############################################################################
# MOSTRAR TABELAS
############################################################################

SHOW TABLES;

############################################################################
# INSERTS - GENERO
############################################################################

INSERT INTO Genero VALUES (1, 'Infantil');
INSERT INTO Genero VALUES (2, 'Ficção');
INSERT INTO Genero VALUES (3, 'Romance');
INSERT INTO Genero VALUES (4, 'Auto-ajuda');
INSERT INTO Genero VALUES (5, 'Negócios');
INSERT INTO Genero VALUES (6, 'História');

SELECT * FROM Genero;

############################################################################
# INSERTS - EDITORA
############################################################################

INSERT INTO Editora VALUES (1, 'Ática');
INSERT INTO Editora VALUES (2, 'Makron Books');
INSERT INTO Editora VALUES (3, 'Rocco');
INSERT INTO Editora VALUES (4, 'Scipione');
INSERT INTO Editora VALUES (5, 'Sagra Luzatto');

SELECT * FROM Editora;

############################################################################
# INSERTS - AUTOR
############################################################################

INSERT INTO Autor VALUES (1, 'Pedro');
INSERT INTO Autor VALUES (2, 'Marcos');
INSERT INTO Autor VALUES (3, 'Felipe');
INSERT INTO Autor VALUES (4, 'Ana');
INSERT INTO Autor VALUES (5, 'Maria');
INSERT INTO Autor VALUES (6, 'Francisco');
INSERT INTO Autor VALUES (7, 'Lucas');

SELECT * FROM Autor;

############################################################################
# INSERTS - LIVRO
############################################################################

INSERT INTO Livro VALUES (1, 'A', 25.30, 1, 1);
INSERT INTO Livro VALUES (2, 'B', 32.45, 1, 4);
INSERT INTO Livro VALUES (3, 'C', 122.00, 4, 2);
INSERT INTO Livro VALUES (4, 'D', 100.99, 4, 3);
INSERT INTO Livro VALUES (5, 'E', 16.16, 1, 5);
INSERT INTO Livro VALUES (6, 'F', 4.56, 3, 1);
INSERT INTO Livro VALUES (7, 'G', 85.20, 2, 5);
INSERT INTO Livro VALUES (8, 'H', 89.90, 5, 5);
INSERT INTO Livro VALUES (9, 'I', 63.36, 2, 2);
INSERT INTO Livro VALUES (10, 'J', 41.40, 3, 3);
INSERT INTO Livro VALUES (11, 'K', 200.30, 4, 6);
INSERT INTO Livro VALUES (12, 'L', 99.99, 2, 4);

SELECT * FROM Livro;

############################################################################
# INSERTS - LIVRO_AUTOR
############################################################################

INSERT INTO Livro_Autor VALUES (1,1);
INSERT INTO Livro_Autor VALUES (6,1);
INSERT INTO Livro_Autor VALUES (6,2);
INSERT INTO Livro_Autor VALUES (5,3);
INSERT INTO Livro_Autor VALUES (1,3);
INSERT INTO Livro_Autor VALUES (4,3);
INSERT INTO Livro_Autor VALUES (4,4);
INSERT INTO Livro_Autor VALUES (1,5);
INSERT INTO Livro_Autor VALUES (5,6);
INSERT INTO Livro_Autor VALUES (3,6);
INSERT INTO Livro_Autor VALUES (3,7);
INSERT INTO Livro_Autor VALUES (2,8);

SELECT * FROM Livro_Autor;

############################################################################
# INSERTS - RANKING
############################################################################

INSERT INTO Ranking VALUES (1, '2003-08-17', '2003-08-23');
INSERT INTO Ranking VALUES (2, '2003-08-24', '2003-08-30');
INSERT INTO Ranking VALUES (3, '2003-08-31', '2003-09-06');
INSERT INTO Ranking VALUES (4, '2003-09-07', '2003-09-13');

SELECT * FROM Ranking;

############################################################################
# INSERTS - RANKING_SEMANAL
############################################################################

INSERT INTO Ranking_Semanal VALUES (1,1,4,6,3,3);
INSERT INTO Ranking_Semanal VALUES (2,1,5,7,3,4);
INSERT INTO Ranking_Semanal VALUES (3,2,1,1,1,NULL);
INSERT INTO Ranking_Semanal VALUES (4,2,1,2,2,1);

SELECT * FROM Ranking_Semanal;

############################################################################
# SELECT BÁSICO
############################################################################

SELECT * FROM Autor;

SELECT nome FROM Autor;

SELECT nome, idAutor
FROM Autor;

############################################################################
# WHERE
############################################################################

SELECT *
FROM Livro
WHERE preco > 50;

SELECT *
FROM Livro
WHERE preco >= 100;

SELECT *
FROM Livro
WHERE preco < 30;

SELECT *
FROM Livro
WHERE preco <= 40;

SELECT *
FROM Livro
WHERE preco <> 50;

############################################################################
# DISTINCT
############################################################################

SELECT DISTINCT nome
FROM Autor;

############################################################################
# ORDER BY
############################################################################

SELECT *
FROM Livro
ORDER BY preco;

SELECT *
FROM Livro
ORDER BY preco DESC;

SELECT *
FROM Autor
ORDER BY nome;

############################################################################
# BETWEEN
############################################################################

SELECT *
FROM Livro
WHERE preco BETWEEN 30 AND 100;

SELECT *
FROM Livro
WHERE preco NOT BETWEEN 30 AND 100;

############################################################################
# IN
############################################################################

SELECT *
FROM Livro
WHERE idEditora IN (1,3,5);

SELECT *
FROM Livro
WHERE idEditora NOT IN (1,3,5);

############################################################################
# LIKE
############################################################################

SELECT *
FROM Autor
WHERE nome LIKE 'M%';

SELECT *
FROM Autor
WHERE nome LIKE '%a';

SELECT *
FROM Autor
WHERE nome LIKE '%r%';

SELECT *
FROM Autor
WHERE nome NOT LIKE 'L%';

############################################################################
# IS NULL
############################################################################

SELECT *
FROM Ranking_Semanal
WHERE semanasConsecutivas IS NULL;

SELECT *
FROM Ranking_Semanal
WHERE semanasConsecutivas IS NOT NULL;

############################################################################
# OPERADORES LÓGICOS
############################################################################

SELECT *
FROM Livro
WHERE preco > 50
AND idGenero = 2;

SELECT *
FROM Livro
WHERE preco > 100
OR idEditora = 1;

############################################################################
# FUNÇÕES DE TEXTO
############################################################################

SELECT LOWER(nome)
FROM Autor;

SELECT UPPER(nome)
FROM Autor;

SELECT SUBSTRING(nome,1,3)
FROM Autor;

SELECT CONCAT(nome, ' - AUTOR')
FROM Autor;

############################################################################
# FUNÇÕES MATEMÁTICAS
############################################################################

SELECT AVG(preco)
FROM Livro;

SELECT MAX(preco)
FROM Livro;

SELECT MIN(preco)
FROM Livro;

SELECT SUM(preco)
FROM Livro;

SELECT COUNT(*)
FROM Livro;

SELECT ROUND(AVG(preco),2)
FROM Livro;

############################################################################
# GROUP BY
############################################################################

SELECT idEditora, AVG(preco)
FROM Livro
GROUP BY idEditora;

SELECT idGenero, COUNT(*)
FROM Livro
GROUP BY idGenero;

############################################################################
# HAVING
############################################################################

SELECT idEditora, COUNT(*)
FROM Livro
GROUP BY idEditora
HAVING COUNT(*) > 2;

############################################################################
# INNER JOIN
############################################################################

SELECT Livro.titulo, Editora.nome
FROM Livro
INNER JOIN Editora
ON Livro.idEditora = Editora.idEditora;

SELECT Livro.titulo, Genero.descricao
FROM Livro
INNER JOIN Genero
ON Livro.idGenero = Genero.idGenero;

############################################################################
# JOIN COM 3 TABELAS
############################################################################

SELECT Livro.titulo, Autor.nome
FROM Livro
INNER JOIN Livro_Autor
ON Livro.idLivro = Livro_Autor.idLivro
INNER JOIN Autor
ON Livro_Autor.idAutor = Autor.idAutor;

############################################################################
# ALIAS
############################################################################

SELECT L.titulo, E.nome
FROM Livro L
INNER JOIN Editora E
ON L.idEditora = E.idEditora;

############################################################################
# SUBQUERY
############################################################################

SELECT titulo, preco
FROM Livro
WHERE preco = (
    SELECT MAX(preco)
    FROM Livro
);

SELECT titulo
FROM Livro
WHERE idEditora = (
    SELECT idEditora
    FROM Editora
    WHERE nome = 'Rocco'
);

############################################################################
# EXISTS
############################################################################

SELECT nome
FROM Editora E
WHERE EXISTS (
    SELECT *
    FROM Livro L
    WHERE L.idEditora = E.idEditora
);

############################################################################
# INSERT
############################################################################

INSERT INTO Autor VALUES (8, 'Carlos');

############################################################################
# UPDATE
############################################################################

UPDATE Livro
SET preco = preco * 1.10
WHERE preco < 50;

############################################################################
# DELETE
############################################################################

DELETE FROM Livro
WHERE preco > 200;

############################################################################
# CREATE VIEW
############################################################################

CREATE VIEW vw_livros_editora AS
SELECT Livro.titulo, Editora.nome
FROM Livro
INNER JOIN Editora
ON Livro.idEditora = Editora.idEditora;

############################################################################
# TRANSAÇÃO
############################################################################

START TRANSACTION;

UPDATE Livro
SET preco = preco + 10
WHERE idLivro = 1;

ROLLBACK;

START TRANSACTION;

UPDATE Livro
SET preco = preco + 10
WHERE idLivro = 1;

COMMIT;

############################################################################
# EXERCÍCIOS IMPORTANTES PARA PROVA
############################################################################

# 1 - Mostrar livros e suas editoras

SELECT Livro.titulo, Editora.nome
FROM Livro
INNER JOIN Editora
ON Livro.idEditora = Editora.idEditora;

# 2 - Mostrar livros e gêneros

SELECT Livro.titulo, Genero.descricao
FROM Livro
INNER JOIN Genero
ON Livro.idGenero = Genero.idGenero;

# 3 - Livro mais caro

SELECT titulo, preco
FROM Livro
WHERE preco = (
    SELECT MAX(preco)
    FROM Livro
);

# 4 - Livro mais barato

SELECT titulo, preco
FROM Livro
WHERE preco = (
    SELECT MIN(preco)
    FROM Livro
);

# 5 - Média de preço por editora

SELECT idEditora, AVG(preco)
FROM Livro
GROUP BY idEditora;

# 6 - Quantidade de livros por gênero

SELECT idGenero, COUNT(*)
FROM Livro
GROUP BY idGenero;

# 7 - Autores que começam com M

SELECT *
FROM Autor
WHERE nome LIKE 'M%';

# 8 - Livros entre 50 e 100 reais

SELECT *
FROM Livro
WHERE preco BETWEEN 50 AND 100;

# 9 - Livros ordenados do mais caro ao mais barato

SELECT *
FROM Livro
ORDER BY preco DESC;

# 10 - Mostrar autores sem repetição

SELECT DISTINCT nome
FROM Autor;

############################################################################
# QUESTÕES EXTRAS QUE PODEM CAIR
############################################################################

# Mostrar quantidade total de livros

SELECT COUNT(*)
FROM Livro;

# Mostrar soma total dos preços

SELECT SUM(preco)
FROM Livro;

# Mostrar média geral dos preços

SELECT AVG(preco)
FROM Livro;

# Mostrar livros da editora 1 ou 5

SELECT *
FROM Livro
WHERE idEditora IN (1,5);

# Mostrar livros que NÃO são da editora 1

SELECT *
FROM Livro
WHERE idEditora <> 1;

# Mostrar livros cujo título termina com A

SELECT *
FROM Livro
WHERE titulo LIKE '%A';

# Mostrar livros cujo título possui letra B

SELECT *
FROM Livro
WHERE titulo LIKE '%B%';

############################################################################
# FIM
############################################################################
