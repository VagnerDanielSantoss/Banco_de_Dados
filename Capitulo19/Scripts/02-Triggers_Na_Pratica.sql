
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
