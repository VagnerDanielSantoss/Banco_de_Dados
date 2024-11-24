
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

/* ============================ TRIGGER NA PRÁTICA ============================ */

CREATE DATABASE TRIGGERS;

USE TRIGGERS;

CREATE TABLE USUARIO
(
	IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30),
	SENHA VARCHAR(100)
);

DESC USUARIO;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| IDUSUARIO | int          | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)  | YES  |     | NULL    |                |
| LOGIN     | varchar(30)  | YES  |     | NULL    |                |
| SENHA     | varchar(100) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

CREATE TABLE BKP_USUARIO
(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDUSUARIO INT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30)
);

DESC BKP_USUARIO;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDBACKUP  | int         | NO   | PRI | NULL    | auto_increment |
| IDUSUARIO | int         | YES  |     | NULL    |                |
| NOME      | varchar(30) | YES  |     | NULL    |                |
| LOGIN     | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

/* ALTERA O DELIMITADOR */

DELIMITER #
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.39 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       triggers
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        #
Server version:         8.0.39 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 50 min 11 sec

Threads: 2  Questions: 15  Slow queries: 0  Opens: 140  Flush tables: 3  Open tables: 59  Queries per second avg: 0.004
--------------

/* CRIA UMA TRIGGER */

CREATE TRIGGER BKP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW
BEGIN

	INSERT INTO BKP_USUARIO
	(IDBACKUP, IDUSUARIO, NOME, LOGIN)
	VALUES
	(NULL, OLD.IDUSUARIO, OLD.NOME, OLD.LOGIN);

END #

/* ALTERA O DELIMITADOR */

DELIMITER ;
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.39 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       triggers
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.39 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 1 hour 3 min 35 sec

Threads: 2  Questions: 19  Slow queries: 0  Opens: 142  Flush tables: 3  Open tables: 60  Queries per second avg: 0.004
--------------

/* INSERT NA TABELA USUARIO */

INSERT INTO USUARIO
(IDUSUARIO, NOME, LOGIN, SENHA)
VALUES
(NULL, "RENATO RUSSO", "renatorusso2024", "ola@mundo");

INSERT INTO USUARIO
(IDUSUARIO, NOME, LOGIN, SENHA)
VALUES
(NULL, "MARIA BETHANIA", "mbethania1000", "mundo!ola");

INSERT INTO USUARIO
(IDUSUARIO, NOME, LOGIN, SENHA)
VALUES
(NULL, "ELIS REGINA", "reginaelis01", "olamundo!");


SELECT * FROM USUARIO;

+-----------+----------------+-----------------+-----------+
| IDUSUARIO | NOME           | LOGIN           | SENHA     |
+-----------+----------------+-----------------+-----------+
|         1 | RENATO RUSSO   | renatorusso2024 | ola@mundo |
|         2 | MARIA BETHANIA | mbethania1000   | mundo!ola |
|         3 | ELIS REGINA    | reginaelis01    | olamundo! |
+-----------+----------------+-----------------+-----------+

/* APAGA REGISTRO DE UM USUARIO */

SELECT * FROM 
	USUARIO
WHERE IDUSUARIO = 2;
+-----------+----------------+---------------+-----------+
| IDUSUARIO | NOME           | LOGIN         | SENHA     |
+-----------+----------------+---------------+-----------+
|         2 | MARIA BETHANIA | mbethania1000 | mundo!ola |
+-----------+----------------+---------------+-----------+

DELETE FROM 
	USUARIO
WHERE IDUSUARIO = 2;

SELECT * FROM USUARIO;
+-----------+--------------+-----------------+-----------+
| IDUSUARIO | NOME         | LOGIN           | SENHA     |
+-----------+--------------+-----------------+-----------+
|         1 | RENATO RUSSO | renatorusso2024 | ola@mundo |
|         3 | ELIS REGINA  | reginaelis01    | olamundo! |
+-----------+--------------+-----------------+-----------+

SELECT * FROM BKP_USUARIO;
+----------+-----------+--------------+-----------------+
| IDBACKUP | IDUSUARIO | NOME         | LOGIN           |
+----------+-----------+--------------+-----------------+
|        1 |         2 | RENATO RUSSO | renatorusso2024 |
+----------+-----------+--------------+-----------------+

/* ======================================================================================================================================= */
/* ======================================================================================================================================= */

/* ============================== TRIGGERS PARA BANCOS DE BACKUPS ============================== */

/* COMUNICAÇÃO ENTRE BANCOS DE DADOS */

CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO
(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	FABRICANTE VARCHAR(30),
	VALOR FLOAT(10,2)
);

DESC PRODUTO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDPRODUTO  | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(30) | YES  |     | NULL    |                |
| FABRICANTE | varchar(30) | YES  |     | NULL    |                |
| VALOR      | float(10,2) | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

CREATE DATABASE BACKUP;

USE BACKUP;

CREATE TABLE BKP_PRODUTO
(
	IDBKP_PRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT ,
	NOME VARCHAR(30),
	FABRICANTE VARCHAR(30),
	VALOR FLOAT(10,2)
);

DESC BKP_PRODUTO;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| IDBKP_PRODUTO | int         | NO   | PRI | NULL    | auto_increment |
| IDPRODUTO     | int         | YES  |     | NULL    |                |
| NOME          | varchar(30) | YES  |     | NULL    |                |
| FABRICANTE    | varchar(30) | YES  |     | NULL    |                |
| VALOR         | float(10,2) | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+

USE LOJA;

INSERT INTO BKP_PRODUTO
(IDBKP_PRODUTO, IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES (NULL, 1000, "TESTE", "LG", 0.10);

/* ERROR 1146 (42S02): Table 'loja.bkp_produto' doesn't exist */

INSERT INTO BACKUP.BKP_PRODUTO 
(IDBKP_PRODUTO, IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES (NULL, 1000, "TESTE", "LG", 0.10);

SELECT * FROM BACKUP.BKP_PRODUTO;
+---------------+-----------+-------+------------+-------+
| IDBKP_PRODUTO | IDPRODUTO | NOME  | FABRICANTE | VALOR |
+---------------+-----------+-------+------------+-------+
|             1 |      1000 | TESTE | LG         |  0.10 |
+---------------+-----------+-------+------------+-------+

/* INTÚITO: TODA VEZ QUE FOR INSERIDO UM REGISTRO NA TABELA PRODUTO, SERÁ AUTOMATICAMENTE INSERIDO NA TABELA BKP_PRODUTO TAMBÉM */

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO
AFTER INSERT ON PRODUTO 
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO
	(IDBKP_PRODUTO, IDPRODUTO, NOME, FABRICANTE, VALOR)
	VALUES
	(NULL, NEW.IDPRODUTO, NEW.NOME, NEW.FABRICANTE, NEW.VALOR);

END $

DELIMITER ;

DESC PRODUTO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDPRODUTO  | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(30) | YES  |     | NULL    |                |
| FABRICANTE | varchar(30) | YES  |     | NULL    |                |
| VALOR      | float(10,2) | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'TV QLED Q50D 50"', 'SAMSUNG', 2499.99);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'TV QLED Q50D 55"', 'SAMSUNG', 3199.99);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'TV OLED S90D 65"', 'SAMSUNG', 11799.45);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'TV QNED85 55"', 'LG', 3895.10);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'TV QNED80T 55"', 'LG', 3299.05);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'TV OLED EVO QLEDC4"', 'SAMSUNG', 6154.80);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'SOUNDBAR HW-Q800D', 'SAMSUNG', 3297.20);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'SOUNDBAR S95TR', 'LG', 6300.10);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'LAVA-LOUÇAS 14 SERVIÇOS INOX', 'BRASTEMP', 4508.95);

INSERT INTO PRODUTO
(IDPRODUTO, NOME, FABRICANTE, VALOR)
VALUES
(NULL, 'ASPIRADOR DE PÓ VERTICAL ERG26', 'ELETROLUX', 1218.03);


/* TABELA DO BANCO LOJA */
SELECT * FROM PRODUTO;
+-----------+---------------------------------+------------+----------+
| IDPRODUTO | NOME                            | FABRICANTE | VALOR    |
+-----------+---------------------------------+------------+----------+
|         1 | TV QLED Q50D 50"                | SAMSUNG    |  2499.99 |
|         2 | TV QLED Q50D 55"                | SAMSUNG    |  3199.99 |
|         3 | TV OLED S90D 65"                | SAMSUNG    | 11799.45 |
|         4 | TV QNED85 55"                   | LG         |  3895.10 |
|         5 | TV QNED80T 55"                  | LG         |  3299.05 |
|         6 | TV OLED EVO QLEDC4"             | SAMSUNG    |  6154.80 |
|         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
|         8 | SOUNDBAR S95TR                  | LG         |  6300.10 |
|         9 | LAVA-LOUÇAS 14 SERVIÇOS INOX    | BRASTEMP   |  4508.95 |
|        10 | ASPIRADOR DE PÓ VERTICAL ERG26  | ELETROLUX  |  1218.03 |
+-----------+---------------------------------+------------+----------+

/* TABELA DO BANCO BACKUP - lógico */
SELECT * FROM BACKUP.BKP_PRODUTO;
+---------------+-----------+---------------------------------+------------+----------+
| IDBKP_PRODUTO | IDPRODUTO | NOME                            | FABRICANTE | VALOR    |
+---------------+-----------+---------------------------------+------------+----------+
|             1 |      1000 | TESTE                           | LG         |     0.10 |
|             2 |         1 | TV QLED Q50D 50"                | SAMSUNG    |  2499.99 |
|             3 |         2 | TV QLED Q50D 55"                | SAMSUNG    |  3199.99 |
|             4 |         3 | TV OLED S90D 65"                | SAMSUNG    | 11799.45 |
|             5 |         4 | TV QNED85 55"                   | LG         |  3895.10 |
|             6 |         5 | TV QNED80T 55"                  | LG         |  3299.05 |
|             7 |         6 | TV OLED EVO QLEDC4"             | SAMSUNG    |  6154.80 |
|             8 |         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
|             9 |         8 | SOUNDBAR S95TR                  | LG         |  6300.10 |
|            10 |         9 | LAVA-LOUÇAS 14 SERVIÇOS INOX    | BRASTEMP   |  4508.95 |
|            11 |        10 | ASPIRADOR DE PÓ VERTICAL ERG26  | ELETROLUX  |  1218.03 |
+---------------+-----------+---------------------------------+------------+----------+

DELIMITER $

DESC BACKUP.BKP_PRODUTO$
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| IDBKP_PRODUTO | int         | NO   | PRI | NULL    | auto_increment |
| IDPRODUTO     | int         | YES  |     | NULL    |                |
| NOME          | varchar(30) | YES  |     | NULL    |                |
| FABRICANTE    | varchar(30) | YES  |     | NULL    |                |
| VALOR         | float(10,2) | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+

CREATE TRIGGER BACKUP_PRODUTO_DELETE
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO
	(IDBKP_PRODUTO, IDPRODUTO, NOME, FABRICANTE, VALOR)
	VALUES
	(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.FABRICANTE, OLD.VALOR);

END $

DELIMITER ;

SELECT * FROM BACKUP.BKP_PRODUTO;
+---------------+-----------+---------------------------------+------------+----------+
| IDBKP_PRODUTO | IDPRODUTO | NOME                            | FABRICANTE | VALOR    |
+---------------+-----------+---------------------------------+------------+----------+
|             1 |      1000 | TESTE                           | LG         |     0.10 |
|             2 |         1 | TV QLED Q50D 50"                | SAMSUNG    |  2499.99 |
|             3 |         2 | TV QLED Q50D 55"                | SAMSUNG    |  3199.99 |
|             4 |         3 | TV OLED S90D 65"                | SAMSUNG    | 11799.45 |
|             5 |         4 | TV QNED85 55"                   | LG         |  3895.10 |
|             6 |         5 | TV QNED80T 55"                  | LG         |  3299.05 |
|             7 |         6 | TV OLED EVO QLEDC4"             | SAMSUNG    |  6154.80 |
|             8 |         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
|             9 |         8 | SOUNDBAR S95TR                  | LG         |  6300.10 |
|            10 |         9 | LAVA-LOUÇAS 14 SERVIÇOS INOX    | BRASTEMP   |  4508.95 |
|            11 |        10 | ASPIRADOR DE PÓ VERTICAL ERG26  | ELETROLUX  |  1218.03 |
+---------------+-----------+---------------------------------+------------+----------+

SELECT * FROM 
	PRODUTO
WHERE IDPRODUTO = 7;
+-----------+-------------------+------------+---------+
| IDPRODUTO | NOME              | FABRICANTE | VALOR   |
+-----------+-------------------+------------+---------+
|         7 | SOUNDBAR HW-Q800D | SAMSUNG    | 3297.20 |
+-----------+-------------------+------------+---------+


DELETE FROM 
	PRODUTO
WHERE IDPRODUTO = 7;

SELECT * FROM PRODUTO;
+-----------+---------------------------------+------------+----------+
| IDPRODUTO | NOME                            | FABRICANTE | VALOR    |
+-----------+---------------------------------+------------+----------+
|         1 | TV QLED Q50D 50"                | SAMSUNG    |  2499.99 |
|         2 | TV QLED Q50D 55"                | SAMSUNG    |  3199.99 |
|         3 | TV OLED S90D 65"                | SAMSUNG    | 11799.45 |
|         4 | TV QNED85 55"                   | LG         |  3895.10 |
|         5 | TV QNED80T 55"                  | LG         |  3299.05 |
|         6 | TV OLED EVO QLEDC4"             | SAMSUNG    |  6154.80 |
|         8 | SOUNDBAR S95TR                  | LG         |  6300.10 |
|         9 | LAVA-LOUÇAS 14 SERVIÇOS INOX    | BRASTEMP   |  4508.95 |
|        10 | ASPIRADOR DE PÓ VERTICAL ERG26  | ELETROLUX  |  1218.03 |
+-----------+---------------------------------+------------+----------+

SELECT * FROM BACKUP.BACKUP_PRODUTO;
+---------------+-----------+---------------------------------+------------+----------+
| IDBKP_PRODUTO | IDPRODUTO | NOME                            | FABRICANTE | VALOR    |
+---------------+-----------+---------------------------------+------------+----------+
|             1 |      1000 | TESTE                           | LG         |     0.10 |
|             2 |         1 | TV QLED Q50D 50"                | SAMSUNG    |  2499.99 |
|             3 |         2 | TV QLED Q50D 55"                | SAMSUNG    |  3199.99 |
|             4 |         3 | TV OLED S90D 65"                | SAMSUNG    | 11799.45 |
|             5 |         4 | TV QNED85 55"                   | LG         |  3895.10 |
|             6 |         5 | TV QNED80T 55"                  | LG         |  3299.05 |
|             7 |         6 | TV OLED EVO QLEDC4"             | SAMSUNG    |  6154.80 |
|             8 |         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
|             9 |         8 | SOUNDBAR S95TR                  | LG         |  6300.10 |
|            10 |         9 | LAVA-LOUÇAS 14 SERVIÇOS INOX    | BRASTEMP   |  4508.95 |
|            11 |        10 | ASPIRADOR DE PÓ VERTICAL ERG26  | ELETROLUX  |  1218.03 |
|            12 |         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
+---------------+-----------+---------------------------------+------------+----------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+---------------+-----------+---------------------------------+------------+----------+
| IDBKP_PRODUTO | IDPRODUTO | NOME                            | FABRICANTE | VALOR    |
+---------------+-----------+---------------------------------+------------+----------+
|             1 |      1000 | TESTE                           | LG         |     0.10 |
|             2 |         1 | TV QLED Q50D 50"                | SAMSUNG    |  2499.99 |
|             3 |         2 | TV QLED Q50D 55"                | SAMSUNG    |  3199.99 |
|             4 |         3 | TV OLED S90D 65"                | SAMSUNG    | 11799.45 |
|             5 |         4 | TV QNED85 55"                   | LG         |  3895.10 |
|             6 |         5 | TV QNED80T 55"                  | LG         |  3299.05 |
|             7 |         6 | TV OLED EVO QLEDC4"             | SAMSUNG    |  6154.80 |
|             8 |         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
|             9 |         8 | SOUNDBAR S95TR                  | LG         |  6300.10 |
|            10 |         9 | LAVA-LOUÇAS 14 SERVIÇOS INOX    | BRASTEMP   |  4508.95 |
|            11 |        10 | ASPIRADOR DE PÓ VERTICAL ERG26  | ELETROLUX  |  1218.03 |
|            12 |         7 | SOUNDBAR HW-Q800D               | SAMSUNG    |  3297.20 |
+---------------+-----------+---------------------------------+------------+----------+
