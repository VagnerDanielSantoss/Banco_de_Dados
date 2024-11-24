
/* ESTRUTURA DE UMA TRIGGER */

/* PRECISA MUDAR O DELIMITADOR (;) POR QUALQUER OUTRO SINAL POIS DENTRO DA TRIGGER, HAVERÁ (;) INDICANDO FINAL DE INSTRUÇÃO DE ALGUM BLOCO */
DELIMITER $

CREATE TRIGGER nome_da_trigger
/* INFORMA SE A TRIGGER IRÁ DISPARAR ANTES OU DEPOIS */
BEFORE or AFTER
/* DE UM DESSES COMANDOS DISPONÍVEIS PARA SEREM UTILIZADOS */
INSERT or UPDATE or DELETE
ON nome_da_tabela
FOR EACH ROW
BEGIN -> INICIO


		/* COMANDOS, INSTRUÇÕES SQL */


END -> FIM

DELIMITER ;

/* ======================================================================================================================================= */
/* ======================================================================================================================================= */

/* ============================ AUDITORIA EM UMA TABELA COM TRIGGER ============================ */

CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO
(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	FABRICANTE VARCHAR(50),
	VALOR FLOAT(10,2)
);

ALTER TABLE PRODUTO
RENAME COLUMN FABRICANTE TO EDITORA;

DESC PRODUTO;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDPRODUTO | int         | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(50) | YES  |     | NULL    |                |
| EDITORA   | varchar(50) | YES  |     | NULL    |                |
| VALOR     | float(10,2) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "MODELAGEM DE DADOS", "ERICA", 89.90);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "BUSINESS INTELLIGENT", "DUMMIES" 125);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "PL/SQL DOMINE A LINGUAGEM ORACLE", "CASA DO CODIGO", 178.40);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "SQL - GUIA PRATICO", "NOVATECH", 59);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "PYTHON - CURSO INTENSIVO", "NOVATECH", 143.70);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "ORIENNTACAO A OBJETOS - APRENDA SEUS CONCEITOS", "CASA DO CODIGO", 158.75);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "ALGORITMO E LOGICA DE PROGRAMACAO", "CENGAGE LEARNING", 67.58);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "JAVA - GUIA DO APRENDIZ", "ALTA BOOKS", 118.04);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "FUNDAMENTOS DA QUALIDADE DOS DADOS", "ALTA BOOKS", 60.97);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "APAIXONE-SE PELO PROBLEMA, NÃO PULE A SOLUCAO", "CITADEL", 56.88);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, EDITORA, VALOR)
VALUES
(NULL, "AVALIE O QUE IMPORTA", "ALTA BOOKS", 56.08);

SELECT * FROM PRODUTO;
+-----------+------------------------------------------------+------------------+--------+
| IDPRODUTO | NOME                                           | EDITORA          | VALOR  |
+-----------+------------------------------------------------+------------------+--------+
|         1 | MODELAGEM DE DADOS                             | ERICA            |  89.90 |
|         2 | PL/SQL DOMINE A LINGUAGEM ORACLE               | CASA DO CODIGO   | 178.40 |
|         3 | SQL - GUIA PRATICO                             | NOVATECH         |  59.00 |
|         4 | PYTHON - CURSO INTENSIVO                       | NOVATECH         | 143.70 |
|         5 | ORIENNTACAO A OBJETOS - APRENDA SEUS CONCEITOS | CASA DO CODIGO   | 158.75 |
|         6 | ALGORITMO E LOGICA DE PROGRAMACAO              | CENGAGE LEARNING |  67.58 |
|         7 | JAVA - GUIA DO APRENDIZ                        | ALTA BOOKS       | 118.04 |
|         8 | FUNDAMENTOS DA QUALIDADE DOS DADOS             | ALTA BOOKS       |  60.97 |
|         9 | APAIXONE-SE PELO PROBLEMA, NÃO PULE A SOLUCAO  | CITADEL          |  56.88 |
|        10 | AVALIE O QUE IMPORTA                           | ALTA BOOKS       |  56.08 |
+-----------+------------------------------------------------+------------------+--------+


CREATE DATABASE BACKUP;

USE BACKUP;

CREATE TABLE BKP_PRODUTO
(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(50),
	EDITORA VARCHAR(50),
	VALOR_ORIGINAL FLOAT(10,2),
	VALOR_ALTERADO FLOAT(10,2),
	DATA DATETIME,
	USUARIO VARCHAR(50),
	EVENTO CHAR(1)
);

DESC BKP_PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDBACKUP       | int         | NO   | PRI | NULL    | auto_increment |
| IDPRODUTO      | int         | YES  |     | NULL    |                |
| NOME           | varchar(50) | YES  |     | NULL    |                |
| EDITORA        | varchar(50) | YES  |     | NULL    |                |
| VALOR_ORIGINAL | float(10,2) | YES  |     | NULL    |                |
| VALOR_ALTERADO | float(10,2) | YES  |     | NULL    |                |
| DATA           | datetime    | YES  |     | NULL    |                |
| USUARIO        | varchar(50) | YES  |     | NULL    |                |
| EVENTO         | char(1)     | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

USE LOJA;

DESC BACKUP.BKP_PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDBACKUP       | int         | NO   | PRI | NULL    | auto_increment |
| IDPRODUTO      | int         | YES  |     | NULL    |                |
| NOME           | varchar(50) | YES  |     | NULL    |                |
| EDITORA        | varchar(50) | YES  |     | NULL    |                |
| VALOR_ORIGINAL | float(10,2) | YES  |     | NULL    |                |
| VALOR_ALTERADO | float(10,2) | YES  |     | NULL    |                |
| DATA           | datetime    | YES  |     | NULL    |                |
| USUARIO        | varchar(50) | YES  |     | NULL    |                |
| EVENTO         | char(1)     | YES  |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

DELIMITER !

CREATE TRIGGER AUDITA_PRODUTO_UPDATE
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO
	(IDBACKUP, IDPRODUTO, NOME, EDITORA, VALOR_ORIGINAL, VALOR_ALTERADO, DATA, USUARIO, EVENTO)
	VALUES 
	(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.EDITORA, OLD.VALOR, NEW.VALOR, NOW(), CURRENT_USER, "U");

END 
!

DELIMITER ;

SELECT * FROM PRODUTO;
+-----------+------------------------------------------------+------------------+--------+
| IDPRODUTO | NOME                                           | EDITORA          | VALOR  |
+-----------+------------------------------------------------+------------------+--------+
|         1 | MODELAGEM DE DADOS                             | ERICA            |  89.90 |
|         2 | PL/SQL DOMINE A LINGUAGEM ORACLE               | CASA DO CODIGO   | 178.40 |
|         3 | SQL - GUIA PRATICO                             | NOVATECH         |  59.00 |
|         4 | PYTHON - CURSO INTENSIVO                       | NOVATECH         | 143.70 |
|         5 | ORIENNTACAO A OBJETOS - APRENDA SEUS CONCEITOS | CASA DO CODIGO   | 158.75 |
|         6 | ALGORITMO E LOGICA DE PROGRAMACAO              | CENGAGE LEARNING |  67.58 |
|         7 | JAVA - GUIA DO APRENDIZ                        | ALTA BOOKS       | 118.04 |
|         8 | FUNDAMENTOS DA QUALIDADE DOS DADOS             | ALTA BOOKS       |  60.97 |
|         9 | APAIXONE-SE PELO PROBLEMA, NÃO PULE A SOLUCAO  | CITADEL          |  56.88 |
|        10 | AVALIE O QUE IMPORTA                           | ALTA BOOKS       |  56.08 |
+-----------+------------------------------------------------+------------------+--------+

UPDATE 
	PRODUTO 
SET 
	VALOR = 61.61
WHERE IDPRODUTO = 10;


SELECT * FROM PRODUTO;
+-----------+------------------------------------------------+------------------+--------+
| IDPRODUTO | NOME                                           | EDITORA          | VALOR  |
+-----------+------------------------------------------------+------------------+--------+
|         1 | MODELAGEM DE DADOS                             | ERICA            |  89.90 |
|         2 | PL/SQL DOMINE A LINGUAGEM ORACLE               | CASA DO CODIGO   | 178.40 |
|         3 | SQL - GUIA PRATICO                             | NOVATECH         |  59.00 |
|         4 | PYTHON - CURSO INTENSIVO                       | NOVATECH         | 143.70 |
|         5 | ORIENNTACAO A OBJETOS - APRENDA SEUS CONCEITOS | CASA DO CODIGO   | 158.75 |
|         6 | ALGORITMO E LOGICA DE PROGRAMACAO              | CENGAGE LEARNING |  67.58 |
|         7 | JAVA - GUIA DO APRENDIZ                        | ALTA BOOKS       | 118.04 |
|         8 | FUNDAMENTOS DA QUALIDADE DOS DADOS             | ALTA BOOKS       |  60.97 |
|         9 | APAIXONE-SE PELO PROBLEMA, NÃO PULE A SOLUCAO  | CITADEL          |  56.88 |
|        10 | AVALIE O QUE IMPORTA                           | ALTA BOOKS       |  61.61 |
+-----------+------------------------------------------------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+----------------------+------------+----------------+----------------+---------------------+----------------+--------+
| IDBACKUP | IDPRODUTO | NOME                 | EDITORA    | VALOR_ORIGINAL | VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------+-----------+----------------------+------------+----------------+----------------+---------------------+----------------+--------+
|        1 |        10 | AVALIE O QUE IMPORTA | ALTA BOOKS |          56.08 |          61.61 | 2024-10-16 22:34:33 | root@localhost | U      |
+----------+-----------+----------------------+------------+----------------+----------------+---------------------+----------------+--------+
