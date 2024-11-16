
/* BLOCO DE INSTRUÇÃO BÁSICO DA PROCEDURE */


CREATE PROCEDURE nome_da_procedure()
BEGIN
	 
 	QUALQUER PROGRAMAÇÃO;
 	
END $

                   /* FIM DO BLOCO DE INSTRUÇÃO DA PROCEDURE */


CREATE PROCEDURE NOME_EMPRESA() 
BEGIN
	
	SELECT "T.N. Tecnologia de Negócios" AS EMPRESA;

END
$


/* COMO EXCLUIR UMA PROCEDURE */

DROP PROCEDURE NOME_EMPRESA$;

/* COMO UTILIZAR A PROCEDURE */

CALL NOME_EMPRESA()$

/* PROCEDURE COM PARÂMETROS */

CREATE PROCEDURE CONTA()
BEGIN

	SELECT 10 + 10 AS SOMA;

END $
+------+
| SOMA |
+------+
|   20 |
+------+

CREATE PROCEDURE SOMA(numero01 INTEGER, numero02 INTEGER)
BEGIN

	SELECT numero01 + numero02 AS SOMA;

END $

CALL SOMA(100, 2) $

+------+
| SOMA |
+------+
|  102 |
+------+

/* ======================================================================================================================================= */
/* ======================================================================================================================================= */
/* ======================================================================================================================================= */

                   /* PROCEDURE COM QUERY - PARÂMETROS */

DELIMITER ;
Connection id:          8
Current database:       comercio
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
Uptime:                 2 hours 5 min 27 sec

Threads: 2  Questions: 31  Slow queries: 0  Opens: 151  Flush tables: 3  Open tables: 70  Queries per second avg: 0.004
--------------

CREATE DATABASE PROCEDURES;

USE PROCEDURES;

CREATE TABLE CURSOS
(
	IDCURSO INTEGER PRIMARY KEY AUTO_INCREMENT, 
	NOME_CURSO VARCHAR(50) NOT NULL,
	HORAS_CURSO INTEGER(4) NOT NULL,
	DESCRICAO_CURSO VARCHAR(200) NOT NULL,
	VALOR_CURSO DECIMAL(10,0) NOT NULL
);

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

SHOW TABLES;
+----------------------+
| Tables_in_procedures |
+----------------------+
| cursos               |
+----------------------+

DESC CURSOS;
+-----------------+---------------+------+-----+---------+----------------+
| Field           | Type          | Null | Key | Default | Extra          |
+-----------------+---------------+------+-----+---------+----------------+
| IDCURSO         | int           | NO   | PRI | NULL    | auto_increment |
| NOME_CURSO      | varchar(50)   | NO   |     | NULL    |                |
| HORAS_CURSO     | int           | NO   |     | NULL    |                |
| DESCRICAO_CURSO | varchar(200)  | NO   |     | NULL    |                |
| VALOR_CURSO     | decimal(10,0) | NO   |     | NULL    |                |
+-----------------+---------------+------+-----+---------+----------------+

INSERT INTO CURSOS
(IDCURSO, NOME_CURSO, HORAS_CURSO, DESCRICAO_CURSO, VALOR_CURSO)
VALUES
(NULL, "PYTHON FUNDAMENTOS", 72, "CURSO COMPLETO PYTHON BASICO AO AVANCADO", 1100.00);

INSERT INTO CURSOS
(IDCURSO, NOME_CURSO, HORAS_CURSO, DESCRICAO_CURSO, VALOR_CURSO)
VALUES
(NULL, "PYSPARK E HADOOP", 120, "CURSO COMPLETO HADOOP COM PYSPARK", 1400.00);

INSERT INTO CURSOS
(IDCURSO, NOME_CURSO, HORAS_CURSO, DESCRICAO_CURSO, VALOR_CURSO)
VALUES
(NULL, "SQL SERVER", 80, "CURSO COMPLETO SQL SERVER PARA INICIANTES E INTERMEDIARIOS", 870.00);

INSERT INTO CURSOS
(IDCURSO, NOME_CURSO, HORAS_CURSO, DESCRICAO_CURSO, VALOR_CURSO)
VALUES
(NULL, "C# PARA LEIGOS", 95, "CURSO PARA INICIANTES NA LINGUAGEM C#", 400.00);


SELECT IDCURSO AS CODIGO, 
       NOME_CURSO AS CURSO, 
       HORAS_CURSO AS HORAS, 
       DESCRICAO_CURSO AS DESCRICAO, 
       VALOR_CURSO AS PRECO
FROM CURSOS;
+--------+--------------------+-------+------------------------------------------------------------+-------+
| CODIGO | CURSO              | HORAS | DESCRICAO                                                  | PRECO |
+--------+--------------------+-------+------------------------------------------------------------+-------+
|      1 | PYTHON FUNDAMENTOS |    72 | CURSO COMPLETO PYTHON BASICO AO AVANCADO                   |  1100 |
|      2 | PYSPARK E HADOOP   |   120 | CURSO COMPLETO HADOOP COM PYSPARK                          |  1400 |
|      3 | SQL SERVER         |    80 | CURSO COMPLETO SQL SERVER PARA INICIANTES E INTERMEDIARIOS |   870 |
|      4 | C# PARA LEIGOS     |    95 | CURSO PARA INICIANTES NA LINGUAGEM C#                      |   400 |
+--------+--------------------+-------+------------------------------------------------------------+-------+

/* ALTERAR O DEMILITADOR PARA PROGRAMAR UMA PROCEDURE */

DELIMITER $

STATUS$
Connection id:          8
Current database:       procedures
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        $
Server version:         8.0.39 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Insert id:              4
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 2 hours 31 min 34 sec

Threads: 2  Questions: 51  Slow queries: 0  Opens: 155  Flush tables: 3  Open tables: 74  Queries per second avg: 0.005
--------------

/* CRIA UMA PROCEDURE */

CREATE PROCEDURE USP_CADASTRO_CURSOS(P_NOME VARCHAR(50),                                  
                                 P_HORAS INTEGER(4),
                                 P_DESCRICAO VARCHAR(200), 
                                 P_VALOR DECIMAL(10,2))
BEGIN

	INSERT INTO CURSOS (IDCURSO, NOME_CURSO, HORAS_CURSO, DESCRICAO_CURSO, VALOR_CURSO)
	VALUES (NULL, P_NOME, P_HORAS, P_DESCRICAO, P_VALOR);

END $

DELIMITER ;
Connection id:          8
Current database:       procedures
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
Uptime:                 2 hours 45 min 44 sec

Threads: 2  Questions: 55  Slow queries: 0  Opens: 155  Flush tables: 3  Open tables: 74  Queries per second avg: 0.005
--------------

CALL CADASTRO_CURSOS("B.I SQL SERVER", 85, "CURSO COMPLETO DE B.I. COM SQL SERVER", 950.00);
CALL CADASTRO_CURSOS("MICROSOFT POWER B.I", 72, "CURSO COMPLETO DE POWER B.I NA PRATICA", 1380.00);
CALL CADASTRO_CURSOS("TABLEAU", 50, "CURSO PARA INICIANTES", 470.00);
CALL CADASTRO_CURSOS("LINUX SERVER", 90, "CURSO COMPLETO LINUX DO BASICO AO AVANCADO", 1700.00);
CALL CADASTRO_CURSOS("EXCEL COM MACRO", 72, "CURSO EXCEL COM MACRO + BONUS", 999.99);
CALL CADASTRO_CURSOS("LOGICA DE PROGRAMACAO", 190, "CURSO DE LOGICA DE PROGRAMACAO COMPLETO", 1001.10);


SELECT IDCURSO AS CODIGO, 
       NOME_CURSO AS CURSO, 
       DESCRICAO_CURSO AS DESCRICAO, 
       HORAS_CURSO AS HORAS, 
       VALOR_CURSO AS PRECO
FROM CURSOS;
+--------+-----------------------+------------------------------------------------------------+-------+-------+
| CODIGO | CURSO                 | DESCRICAO                                                  | HORAS | PRECO |
+--------+-----------------------+------------------------------------------------------------+-------+-------+
|      1 | PYTHON FUNDAMENTOS    | CURSO COMPLETO PYTHON BASICO AO AVANCADO                   |    72 |  1100 |
|      2 | PYSPARK E HADOOP      | CURSO COMPLETO HADOOP COM PYSPARK                          |   120 |  1400 |
|      3 | SQL SERVER            | CURSO COMPLETO SQL SERVER PARA INICIANTES E INTERMEDIARIOS |    80 |   870 |
|      4 | C# PARA LEIGOS        | CURSO PARA INICIANTES NA LINGUAGEM C#                      |    95 |   400 |
|      5 | B.I SQL SERVER        | CURSO COMPLETO DE B.I. COM SQL SERVER                      |    85 |   950 |
|      6 | MICROSOFT POWER B.I   | CURSO COMPLETO DE POWER B.I NA PRATICA                     |    72 |  1380 |
|      7 | TABLEAU               | CURSO PARA INICIANTES                                      |    50 |   470 |
|      8 | LINUX SERVER          | CURSO COMPLETO LINUX DO BASICO AO AVANCADO                 |    90 |  1700 |
|      9 | EXCEL COM MACRO       | CURSO EXCEL COM MACRO + BONUS                              |    72 |  1000 |
|     10 | LOGICA DE PROGRAMACAO | CURSO DE LOGICA DE PROGRAMACAO COMPLETO                    |   190 |  1001 |
+--------+-----------------------+------------------------------------------------------------+-------+-------+

/* CRIA UMA PROCEDURE PARA CONSULTAR CURSOS */


DESC CURSOS;
+-----------------+---------------+------+-----+---------+----------------+
| Field           | Type          | Null | Key | Default | Extra          |
+-----------------+---------------+------+-----+---------+----------------+
| IDCURSO         | int           | NO   | PRI | NULL    | auto_increment |
| NOME_CURSO      | varchar(50)   | NO   |     | NULL    |                |
| HORAS_CURSO     | int           | NO   |     | NULL    |                |
| DESCRICAO_CURSO | varchar(200)  | NO   |     | NULL    |                |
| VALOR_CURSO     | decimal(10,0) | NO   |     | NULL    |                |
+-----------------+---------------+------+-----+---------+----------------+

/* NÃO ESTÁ FUNCIONANDO O CÓDIGO ABAIXO */
DELIMITER %

CREATE PROCEDURE USP_CONSULTA_CURSOS(P_IDCURSO INTEGER = NULL,
                                 P_NOME VARCHAR(50) = NULL,                                 
                                 P_DESCRICAO VARCHAR(200) = NULL )                               )
BEGIN

	SELECT IDCURSO AS CODIGO,
	       NOME_CURSO AS CURSO,
	       DESCRICAO_CURSO AS DESCRICAO,
	       HORAS_CURSO AS HORAS,
	       VALOR_CURSO AS PRECO
	FROM CURSOS
	WHERE
	(IDCURSO IS NULL OR IDCURSO = P_IDCURSO)
	AND
	(NOME_CURSO IS NULL OR NOME_CURSO LIKE "%P_NOME%")
	AND 
	(DESCRICAO_CURSO IS NULL OR DESCRICAO_CURSO LIKE "%P_DESCRICAO%");

END %


DELIMITER ;
/* NÃO ESTÁ FUNCIONANDO O CÓDIGO ACIMA */

DROP PROCEDURE USP_CONSULTA_CURSOS;

DELIMITER &

CREATE PROCEDURE USP_CONSULTA_CURSOS(P_IDCURSO INTEGER)
BEGIN

	SELECT IDCURSO AS "CODIGO",
	       NOME_CURSO AS "CURSO",
	       DESCRICAO_CURSO AS "DESCRIÇÃO",
              HORAS_CURSO AS "TOTAL DE HORAS",
              VALOR_CURSO AS "PREÇO"
       FROM CURSOS
       WHERE IDCURSO = P_IDCURSO;

END &

DELIMITER ;


CALL USP_CONSULTA_CURSOS(8);
