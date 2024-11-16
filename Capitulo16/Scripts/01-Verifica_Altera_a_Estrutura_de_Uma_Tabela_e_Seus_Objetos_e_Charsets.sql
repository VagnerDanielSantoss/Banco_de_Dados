
SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| cliente            |
| comercio           |
| escola             |
| exercicio          |
| information_schema |
| livraria           |
| mysql              |
| performance_schema |
| procedures         |
| sakila             |
| sys                |
| world              |
+--------------------+

/* CRIA UMA DATABASE */

CREATE DATABASE EXEMPLOS;
Query OK, 1 row affected (0.03 sec)


SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| cliente            |
| comercio           |
| escola             |
| exemplos           |
| exercicio          |
| information_schema |
| livraria           |
| mysql              |
| performance_schema |
| procedures         |
| sakila             |
| sys                |
| world              |
+--------------------+

USE EXEMPLOS;
Database changed


/* ALTERAÇÃO DE TABELA */

CREATE TABLE TABELA
(
	COLUNA01 VARCHAR(30), 
	COLUNA02 VARCHAR(30),
	COLUNA03 VARCHAR(30)
);

DESC TABELA;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| COLUNA01 | varchar(30) | YES  |     | NULL    |       |
| COLUNA02 | varchar(30) | YES  |     | NULL    |       |
| COLUNA03 | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

/* ADICIONA UMA PK - PRIMARY KEY */

ALTER TABLE 
	TABELA
ADD
	PRIMARY KEY (COLUNA01);

/* CONFIRMA A ADIÇÃO DA CHAVE PRIMARIA */

DESC TABELA;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| COLUNA01 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA02 | varchar(30) | YES  |     | NULL    |       |
| COLUNA03 | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

/* ADICIONA UMA NOVA COLUNA (SEM POSIÇÃO - ÚLTIMA POSIÇÃO) */

ALTER TABLE 
	TABELA
ADD 
	COLUNA04 VARCHAR(30);

/* CONFIRMA A ADIÇÃO DA NOVA COLUNA */

DESC TABELA;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| COLUNA01 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA02 | varchar(30) | YES  |     | NULL    |       |
| COLUNA03 | varchar(30) | YES  |     | NULL    |       |
| COLUNA04 | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+


/* ADICIONA UMA NOVA COLUNA (COM POSIÇÃO - ÚLTIMA POSIÇÃO) */

ALTER TABLE 
	TABELA 
ADD 
	COLUMN COLUNA05 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA01;

/* CONFIRMA A ADIÇÃO DA NOVA COLUNA */

DESC TABELA;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| COLUNA01 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA05 | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA02 | varchar(30) | YES  |     | NULL    |       |
| COLUNA03 | varchar(30) | YES  |     | NULL    |       |
| COLUNA04 | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+


/* MODIFICA O TIPO DE UM CAMPO NA TABELA */
/* NECESSARIO SE ATENTAR PARA QUE O NOVO TIPO DO DADO, SEJA
COMPATIVEL COM OS DADOS JÁ EXISTENTE NA COLUNA */

ALTER TABLE 
	TABELA 
MODIFY 
	COLUNA02 DATE NOT NULL;

/* CONFIRMA A ALTERAÇÃO NA TABELA */

DESC TABELA;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| COLUNA01 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA05 | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA02 | date        | NO   |     | NULL    |       |
| COLUNA03 | varchar(30) | YES  |     | NULL    |       |
| COLUNA04 | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+


/* RENOMEIA O NOME DE UMA TABELA */

ALTER TABLE 
	TABELA 
RENAME 
	PESSOA;

/* CONFIRMA A ALTERAÇÃO NA TABELA */

SHOW TABLES;
+--------------------+
| Tables_in_exemplos |
+--------------------+
| pessoa             |
+--------------------+

/* CRIA UMA NOVA TABELA */

CREATE TABLE TIME 
(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR(30),
	ID_PESSOA VARCHAR(30)
);

DESC TIME;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int         | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+


/* ADICIONA A FOREIGN KEY */

ALTER TABLE 
	TIME 
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA01);

+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int         | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  | MUL | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

/* VERIFICA AS CHAVES EXISTENTES NA TABELA */

SHOW CREATE TABLE TIME;
/*
| TIME  | CREATE TABLE `time` (
  `IDTIME` int NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
