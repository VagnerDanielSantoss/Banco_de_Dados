
/* CRIA UM BANCO DE DADOS */

CREATE DATABASE AUTORELACIONAMENTO;

/* LOGA NO BANCO DE DADOS CRIADO */

USE AUTORELACIONAMENTO;

/* CRIA UMA TABELA */

CREATE TABLE CURSOS
(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100),
	HORAS INT,
	VALOR DECIMAL(12,2),
	ID_PREREQUISITO INT
);

DESC CURSOS;
+-----------------+---------------+------+-----+---------+----------------+
| Field           | Type          | Null | Key | Default | Extra          |
+-----------------+---------------+------+-----+---------+----------------+
| IDCURSO         | int           | NO   | PRI | NULL    | auto_increment |
| NOME            | varchar(100)  | YES  |     | NULL    |                |
| HORAS           | int           | YES  |     | NULL    |                |
| VALOR           | decimal(12,2) | YES  |     | NULL    |                |
| ID_PREREQUISITO | int           | YES  |     | NULL    |                |
+-----------------+---------------+------+-----+---------+----------------+

/* ADICIONA A CHAVE ESTRANGEIRA NA TABELA CURSOS */

ALTER TABLE 
	CURSOS
ADD CONSTRAINT
	FK_PREREQUISITO
FOREIGN KEY (ID_PREREQUISITO) 
REFERENCES CURSOS(IDCURSO);

DESC CURSOS;
+-----------------+---------------+------+-----+---------+----------------+
| Field           | Type          | Null | Key | Default | Extra          |
+-----------------+---------------+------+-----+---------+----------------+
| IDCURSO         | int           | NO   | PRI | NULL    | auto_increment |
| NOME            | varchar(100)  | YES  |     | NULL    |                |
| HORAS           | int           | YES  |     | NULL    |                |
| VALOR           | decimal(12,2) | YES  |     | NULL    |                |
| ID_PREREQUISITO | int           | YES  | MUL | NULL    |                |
+-----------------+---------------+------+-----+---------+----------------+

/* ESTA TABELA SE RELACIONA COM ELA MESMA, PORTANTO, POSSUI CHAVE PRIMÁRIA E CHAVE ESTRANGEIRA.
   A INSERÇÃO DE DADOS, DEVE SER FEITA NA TABELA CURSO PRIMEIRO, CASO HAJA OUTRAS TABELAS */

/* INSERE DADOS NA TABELA CURSOS */

INSERT INTO CURSOS
(IDCURSO, NOME, HORAS, VALOR, ID_PREREQUISITO)
VALUES 
(NULL, "BANCO DE DADOS RELACIONAIS", 60, 725.80, NULL);

INSERT INTO CURSOS
(IDCURSO, NOME, HORAS, VALOR, ID_PREREQUISITO)
VALUES 
(NULL, "BUSINESS  INTELLIGENCE", 85, 908, 1);

INSERT INTO CURSOS
(IDCURSO, NOME, HORAS, VALOR, ID_PREREQUISITO)
VALUES 
(NULL, "RELATORIOS AVANCADOS", 35, 499.90, 2);

INSERT INTO CURSOS
(IDCURSO, NOME, HORAS, VALOR, ID_PREREQUISITO)
VALUES 
(NULL, "LOGICA DE PROGRAMACAO", 120, 777.77, NULL);

INSERT INTO CURSOS
(IDCURSO, NOME, HORAS, VALOR, ID_PREREQUISITO)
VALUES 
(NULL, "RUBY", 90, 1221, 4);

/* VISUALIZA OS DADOS ARMAZENADOS NA TABELA CURSOS */

SELECT * FROM CURSOS;
+---------+----------------------------+-------+---------+-----------------+
| IDCURSO | NOME                       | HORAS | VALOR   | ID_PREREQUISITO |
+---------+----------------------------+-------+---------+-----------------+
|       1 | BANCO DE DADOS RELACIONAIS |    60 |  725.80 |            NULL |
|       2 | BUSINESS  INTELLIGENCE     |    85 |  908.00 |               1 |
|       3 | RELATORIOS AVANCADOS       |    35 |  499.90 |               2 |
|       4 | LOGICA DE PROGRAMACAO      |   120 |  777.77 |            NULL |
|       5 | RUBY                       |    90 | 1221.00 |               4 |
+---------+----------------------------+-------+---------+-----------------+

SELECT IDCURSO AS "CODIGO", 
	   NOME AS "NOME DO CURSO", 
	   HORAS, 
	   VALOR, 
	   IFNULL(ID_PREREQUISITO, "SEM REQUISITO") AS "REQUISITO"
FROM CURSOS;
+--------+----------------------------+-------+---------+---------------+
| CODIGO | NOME DO CURSO              | HORAS | VALOR   | REQUISITO     |
+--------+----------------------------+-------+---------+---------------+
|      1 | BANCO DE DADOS RELACIONAIS |    60 |  725.80 | SEM REQUISITO |
|      2 | BUSINESS  INTELLIGENCE     |    85 |  908.00 | 1             |
|      3 | RELATORIOS AVANCADOS       |    35 |  499.90 | 2             |
|      4 | LOGICA DE PROGRAMACAO      |   120 |  777.77 | SEM REQUISITO |
|      5 | RUBY                       |    90 | 1221.00 | 4             |
+--------+----------------------------+-------+---------+---------------+

/* INFORMA O NOME DO CURSO PRÉ-REQUISITO PARA FAZER DETERMINADO CURSO CASO SEJA NECESSÁRIO */

SELECT C.IDCURSO AS "CODIGO",
	   C.NOME AS "NOME DO CURSO",
	   C.HORAS,
	   C.VALOR,
	   IFNULL(P.NOME, "SEM RQUISITO") AS "REQUISITO"
FROM 
	CURSOS C
INNER JOIN
	CURSOS P
ON P.IDCURSO = C.ID_PREREQUISITO;
+--------+------------------------+-------+---------+----------------------------+
| CODIGO | NOME DO CURSO          | HORAS | VALOR   | REQUISITO                  |
+--------+------------------------+-------+---------+----------------------------+
|      2 | BUSINESS  INTELLIGENCE |    85 |  908.00 | BANCO DE DADOS RELACIONAIS |
|      3 | RELATORIOS AVANCADOS   |    35 |  499.90 | BUSINESS  INTELLIGENCE     |
|      5 | RUBY                   |    90 | 1221.00 | LOGICA DE PROGRAMACAO      |
+--------+------------------------+-------+---------+----------------------------+

SELECT C.IDCURSO AS "CODIGO",
	   C.NOME AS "NOME DO CURSO",
	   C.HORAS,
	   C.VALOR,
	   IFNULL(P.NOME, "*** SEM RQUISITO ***") AS "REQUISITO"
FROM 
	CURSOS C
LEFT JOIN
	CURSOS P
ON P.IDCURSO = C.ID_PREREQUISITO;
+--------+----------------------------+-------+---------+----------------------------+
| CODIGO | NOME DO CURSO              | HORAS | VALOR   | REQUISITO                  |
+--------+----------------------------+-------+---------+----------------------------+
|      1 | BANCO DE DADOS RELACIONAIS |    60 |  725.80 | *** SEM RQUISITO ***       |
|      2 | BUSINESS  INTELLIGENCE     |    85 |  908.00 | BANCO DE DADOS RELACIONAIS |
|      3 | RELATORIOS AVANCADOS       |    35 |  499.90 | BUSINESS  INTELLIGENCE     |
|      4 | LOGICA DE PROGRAMACAO      |   120 |  777.77 | *** SEM RQUISITO ***       |
|      5 | RUBY                       |    90 | 1221.00 | LOGICA DE PROGRAMACAO      |
+--------+----------------------------+-------+---------+----------------------------+
