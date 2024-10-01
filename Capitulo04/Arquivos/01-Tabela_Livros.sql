
CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS
(
	NOME_LIVRO VARCHAR(100) NOT NULL,
	NOME_AUTOR VARCHAR(100) NOT NULL,
	SEXO_AUTOR VARCHAR(9) NOT NULL,
	NUMERO_PAGINAS INTEGER(4) NOT NULL,
	NOME_EDITORA VARCHAR(100) NOT NULL,
	VALOR_LIVRO DECIMAL(18,2) NOT NULL,
	ESTADO_EDITORA CHAR(2) NOT NULL,
	ANO_PUBLICACAO INTEGER(4) NOT NULL
);

------- INSERÇÃO DE DADOS -------

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Cavaleiro Real", "Ana Claudia", "Feminino", 465, "Atlas", 49.9, "RJ", 2009);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("SQL para leigos",	"João Nunes", "Masculino", 450, "Addison",	98.0, "SP",	2018);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Receitas Caseiras", "Celia Tavares", "Feminino", 210, "Atlas", 45.0, "RJ", 2008);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Pessoas Efetivas", "Eduardo Santos", "Masculino",	390.0, "Beta",	78.99, "RJ", 2018);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Habitos Saudáveis", "Eduardo Santos", "Masculino", 630, "Beta", 150.98, "RJ", 2019);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("A Casa Marrom", "Hermes Macedo", "Masculino", 250, "Bubba", 60.0, "MG", 2016);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Estacio Querido", "Geraldo Francisco", "Masculino", 310, "Insignia", 100.0, "ES",	2015);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Pra sempre amigas", "Leda Silva", "Feminino",	510, "Insignia", 78.98, "ES", 2011);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("Copas Inesqueciveis", "Marco Alcantara", "Masculino", 200, "Larson", 130.98, "RS", 2018);

INSERT INTO LIVROS
(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, ESTADO_EDITORA, ANO_PUBLICACAO)
VALUES
("O poder da mente", "Clara Mafra", "Feminino", 120, "Continental", 56.58, "SP", 2017);

+---------------------+-------------------+------------+----------------+--------------+-------------+----------------+----------------+
| NOME_LIVRO          | NOME_AUTOR        | SEXO_AUTOR | NUMERO_PAGINAS | NOME_EDITORA | VALOR_LIVRO | ESTADO_EDITORA | ANO_PUBLICACAO |
+---------------------+-------------------+------------+----------------+--------------+-------------+----------------+----------------+
| Cavaleiro Real      | Ana Claudia       | Feminino   |            465 | Atlas        |       49.90 | RJ             |           2009 |
| SQL para leigos     | João Nunes        | Masculino  |            450 | Addison      |       98.00 | SP             |           2018 |
| Receitas Caseiras   | Celia Tavares     | Feminino   |            210 | Atlas        |       45.00 | RJ             |           2008 |
| Pessoas Efetivas    | Eduardo Santos    | Masculino  |            390 | Beta         |       78.99 | RJ             |           2018 |
| Habitos Saudáveis   | Eduardo Santos    | Masculino  |            630 | Beta         |      150.98 | RJ             |           2019 |
| A Casa Marrom       | Hermes Macedo     | Masculino  |            250 | Bubba        |       60.00 | MG             |           2016 |
| Estacio Querido     | Geraldo Francisco | Masculino  |            310 | Insignia     |      100.00 | ES             |           2015 |
| Pra sempre amigas   | Leda Silva        | Feminino   |            510 | Insignia     |       78.98 | ES             |           2011 |
| Copas Inesqueciveis | Marco Alcantara   | Masculino  |            200 | Larson       |      130.98 | RS             |           2018 |
| O poder da mente    | Clara Mafra       | Feminino   |            120 | Continental  |       56.58 | SP             |           2017 |
+---------------------+-------------------+------------+----------------+--------------+-------------+----------------+----------------+
