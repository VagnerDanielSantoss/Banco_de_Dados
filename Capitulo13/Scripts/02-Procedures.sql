

DELIMITER $
Connection id:          8
Current database:       comercio
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        $
Server version:         8.0.39 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 13 min 54 sec

Threads: 2  Questions: 8  Slow queries: 0  Opens: 138  Flush tables: 3  Open tables: 57  Queries per second avg: 0.009
--------------

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

DROP PROCEDURE NOME_EMPRESA$

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
