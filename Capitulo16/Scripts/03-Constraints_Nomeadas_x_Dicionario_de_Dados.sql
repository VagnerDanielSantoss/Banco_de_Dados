
/* ORGANIZA AS CHAVES - CONSTRAINT (regra) */

CREATE TABLE JOGADORES
(
	IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME_JOGADOR VARCHAR(30) NOT NULL,
	IDADE INT NOT NULL
);

CREATE TABLE TIMES
(
	IDTIME INT,
	NOME_TIME VARCHAR(30) NOT NULL,
	ID_JOGADOR INT,

	FOREIGN KEY(ID_JOGADOR)
	REFERENCES JOGADORES(IDJOGADOR)
);

SHOW TABLES;
+--------------------+
| Tables_in_exemplos |
+--------------------+
| jogadores          |
| pessoa             |
| time               |
| times              |
+--------------------+

DESC JOGADORES;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| IDJOGADOR    | int         | NO   | PRI | NULL    | auto_increment |
| NOME_JOGADOR | varchar(30) | NO   |     | NULL    |                |
| IDADE        | int         | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+

/* INSERE REGISTROS NA TABELA JOGADORES */

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE)
VALUES
(NULL, "MAXIMILIAN BEIER", 21); /*== BORUSSIA DORTMUND*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE)
VALUES
(NULL, "JOSHUA KIMMICH", 29); /*== BAYER MUNIQUE*/
 
INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE) 
VALUES
(NULL, "EMRE CAN", 30); /*== BORUSSIA DORTMUND*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE) 
VALUES
(NULL, "MATHYS TEL", 19); /*== BAYER MUNIQUE*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE)
VALUES
(NULL, "DAYOT UPAMECANO", 25); /*== BAYER MUNIQUE*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE) 
VALUES
(NULL, "MARCEL SABITZER", 30); /*== BORUSSIA DORTMUND*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE)
VALUES
(NULL, "NATHAN TELLA", 25); /*== BAYER LEVERKUSEN*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE)
VALUES
(NULL, "AMINE ADLI", 24); /*== BAYER LEVERKUSEN*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE) 
VALUES
(NULL, "JULIEN DURANVILLE", 18); /*== BORUSSIA DORTMUND*/

INSERT INTO JOGADORES
(IDJOGADOR, NOME_JOGADOR, IDADE)
VALUES
(NULL, "SACHA BOEY", 24); /*== BAYER MUNIQUE*/

/* CONFIRMA A CHAVE PRIMARIA DE CADA REGISTRO */

SELECT * FROM JOGADORES;
+-----------+-------------------+-------+
| IDJOGADOR | NOME_JOGADOR      | IDADE |
+-----------+-------------------+-------+
|         1 | MAXIMILIAN BEIER  |    21 |
|         2 | JOSHUA KIMMICH    |    29 |
|         3 | EMRE CAN          |    30 |
|         4 | MATHYS TEL        |    19 |
|         5 | DAYOT UPAMECANO   |    25 |
|         6 | MARCEL SABITZER   |    30 |
|         7 | NATHAN TELLA      |    25 |
|         8 | AMINE ADLI        |    24 |
|         9 | JULIEN DURANVILLE |    18 |
|        10 | SACHA BOEY        |    24 |
+-----------+-------------------+-------+


/* INSERE REGISTROS NA TABELA TIMES */

DESC TIMES;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDTIME     | int         | YES  |     | NULL    |       |
| NOME_TIME  | varchar(30) | NO   |     | NULL    |       |
| ID_JOGADOR | int         | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+


INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(1, "BORUSSIA DORTMUND", 1);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(2, "BAYER MUNIQUE", 2);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(1, "BORUSSIA DORTMUND", 3);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(2, "BAYER MUNIQUE", 4);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(2, "BAYER MUNIQUE", 5);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(1, "BORUSSIA DORTMUND", 6);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(3, "BAYER LEVERKUSEN", 7);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(3, "BAYER LEVERKUSEN", 8);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(1, "BORUSSIA DORTMUND", 9);

INSERT INTO TIMES
(IDTIME, NOME_TIME, ID_JOGADOR)
VALUES
(2, "BAYER MUNIQUE", 10);


SELECT * FROM JOGADORES;
+-----------+-------------------+-------+
| IDJOGADOR | NOME_JOGADOR      | IDADE |
+-----------+-------------------+-------+
|         1 | MAXIMILIAN BEIER  |    21 |
|         2 | JOSHUA KIMMICH    |    29 |
|         3 | EMRE CAN          |    30 |
|         4 | MATHYS TEL        |    19 |
|         5 | DAYOT UPAMECANO   |    25 |
|         6 | MARCEL SABITZER   |    30 |
|         7 | NATHAN TELLA      |    25 |
|         8 | AMINE ADLI        |    24 |
|         9 | JULIEN DURANVILLE |    18 |
|        10 | SACHA BOEY        |    24 |
+-----------+-------------------+-------+

SELECT * FROM TIMES;
+--------+-------------------+------------+
| IDTIME | NOME_TIME         | ID_JOGADOR |
+--------+-------------------+------------+
|      1 | BORUSSIA DORTMUND |          1 |
|      2 | BAYER MUNIQUE     |          2 |
|      1 | BORUSSIA DORTMUND |          3 |
|      2 | BAYER MUNIQUE     |          4 |
|      2 | BAYER MUNIQUE     |          5 |
|      1 | BORUSSIA DORTMUND |          6 |
|      3 | BAYER LEVERKUSEN  |          7 |
|      3 | BAYER LEVERKUSEN  |          8 |
|      1 | BORUSSIA DORTMUND |          9 |
|      2 | BAYER MUNIQUE     |         10 |
+--------+-------------------+------------+

SELECT 
       TIMES.IDTIME AS "CODIGO CLUBE",
       TIMES.NOME_TIME AS "CLUBE",
       JOGADORES.IDJOGADOR AS "CODIGO JOGADOR",
	   JOGADORES.NOME_JOGADOR AS "ATLETA",	   
	   JOGADORES.IDADE
FROM JOGADORES
INNER JOIN TIMES 
WHERE JOGADORES.IDJOGADOR = TIMES.ID_JOGADOR;	   
+--------------+-------------------+----------------+-------------------+-------+
| CODIGO CLUBE | CLUBE             | CODIGO JOGADOR | ATLETA            | IDADE |
+--------------+-------------------+----------------+-------------------+-------+
|            1 | BORUSSIA DORTMUND |              1 | MAXIMILIAN BEIER  |    21 |
|            2 | BAYER MUNIQUE     |              2 | JOSHUA KIMMICH    |    29 |
|            1 | BORUSSIA DORTMUND |              3 | EMRE CAN          |    30 |
|            2 | BAYER MUNIQUE     |              4 | MATHYS TEL        |    19 |
|            2 | BAYER MUNIQUE     |              5 | DAYOT UPAMECANO   |    25 |
|            1 | BORUSSIA DORTMUND |              6 | MARCEL SABITZER   |    30 |
|            3 | BAYER LEVERKUSEN  |              7 | NATHAN TELLA      |    25 |
|            3 | BAYER LEVERKUSEN  |              8 | AMINE ADLI        |    24 |
|            1 | BORUSSIA DORTMUND |              9 | JULIEN DURANVILLE |    18 |
|            2 | BAYER MUNIQUE     |             10 | SACHA BOEY        |    24 |
+--------------+-------------------+----------------+-------------------+-------+
/* 
	AO CRIAR AS CONSTRAINTS DENTRO DO "CREATE", O BANCO CRIA AUTOMATICAMENTE NOME PARA A
CONSTRAINT ALEATORIAMENTE, O QUE DIFICULTA NA HORA DE CONSULTAR O DICIONÁRIO DE DADOS.
*/
SHOW CREATE TABLE JOGADORES;
+-----------+-----------------------------------------------------------------------------------+
| JOGADORES | CREATE TABLE `jogadores` (
  `IDJOGADOR` int NOT NULL AUTO_INCREMENT,
  `NOME_JOGADOR` varchar(30) NOT NULL,
  `IDADE` int NOT NULL,
  PRIMARY KEY (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-----------+-----------------------------------------------------------------------------------+
SHOW CREATE TABLE TIMES;
+-------+---------------------------------------------------------------------------------------+
| TIMES | CREATE TABLE `times` (
  `IDTIME` int NOT NULL AUTO_INCREMENT,
  `NOME_TIME` varchar(30) NOT NULL,
  `ID_JOGADOR` int DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_JOGADOR` (`ID_JOGADOR`),
  CONSTRAINT `times_ibfk_1` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogadores` (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+---------------------------------------------------------------------------------------+




                                    /* ========================= CONSTRAINTS ========================= */

/* ========== ORGANIZAÇÃO DE CHAVES E AÇÕES DE CONSTRAINTS ========== */

CREATE TABLE CLIENTE
(
		IDCLIENTE INT,
		NOME VARCHAR(30) NOT NULL
);

DESC CLIENTE;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| IDCLIENTE | int         | YES  |     | NULL    |       |
| NOME      | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+


CREATE TABLE TELEFONE
(
    IDTELEFONE INT,
    DDD CHAR(2) NOT NULL,
    NUMERO VARCHAR(15) NOT NULL,
    TIPO ENUM("CELULAR", "COMERCIAL", "RECADO", "RESIDENCIAL") NOT NULL,
    ID_CLIENTE INT
);

DESC TELEFONE;
+------------+----------------------------------------------------+------+-----+---------+-------+
| Field      | Type                                               | Null | Key | Default | Extra |
+------------+----------------------------------------------------+------+-----+---------+-------+
| IDTELEFONE | int                                                | YES  |     | NULL    |       |
| DDD        | char(2)                                            | NO   |     | NULL    |       |
| NUMERO     | varchar(15)                                        | NO   |     | NULL    |       |
| TIPO       | enum('CELULAR','COMERCIAL','RECADO','RESIDENCIAL') | NO   |     | NULL    |       |
| ID_CLIENTE | int                                                | YES  |     | NULL    |       |
+------------+----------------------------------------------------+------+-----+---------+-------+

/* CRIA AS CONSTRAINTS */

ALTER TABLE 
			CLIENTE
ADD 
			CONSTRAINT PK_CLIENTE PRIMARY KEY (IDCLIENTE);

ALTER TABLE 
			TELEFONE 
ADD 
			CONSTRAINT FK_CLIENTE_TELEFONE 
			FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE);


SHOW CREATE TABLE TELEFONE;

+----------+-----------------------------------------------------------------------------------------------+
| TELEFONE | CREATE TABLE `telefone` (
  `IDTELEFONE` int DEFAULT NULL,
  `DDD` char(2) NOT NULL,
  `NUMERO` varchar(15) NOT NULL,
  `TIPO` enum('CELULAR','COMERCIAL','RECADO','RESIDENCIAL') NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  KEY `FK_CLIENTE_TELEFONE` (`ID_CLIENTE`),
  CONSTRAINT `FK_CLIENTE_TELEFONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+----------+-----------------------------------------------------------------------------------------------+

/* ==================== DICIONARIO DE DADOS ===================== */

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

USE information_schema;

STATUS;
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.39 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       information_schema
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.39 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb3
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 7 hours 57 min 37 sec

Threads: 2  Questions: 188  Slow queries: 0  Opens: 163  Flush tables: 3  Open tables: 65  Queries per second avg: 0.006
--------------

SHOW TABLES;

+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| ADMINISTRABLE_ROLE_AUTHORIZATIONS     |
| APPLICABLE_ROLES                      |
| CHARACTER_SETS                        |
| CHECK_CONSTRAINTS                     |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLLATIONS                            |
| COLUMN_PRIVILEGES                     |
| COLUMN_STATISTICS                     |
| COLUMNS                               |
| COLUMNS_EXTENSIONS                    |
| ENABLED_ROLES                         |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| INNODB_BUFFER_PAGE                    |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_CACHED_INDEXES                 |
| INNODB_CMP                            |
| INNODB_CMP_PER_INDEX                  |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_CMP_RESET                      |
| INNODB_CMPMEM                         |
| INNODB_CMPMEM_RESET                   |
| INNODB_COLUMNS                        |
| INNODB_DATAFILES                      |
| INNODB_FIELDS                         |
| INNODB_FOREIGN                        |
| INNODB_FOREIGN_COLS                   |
| INNODB_FT_BEING_DELETED               |
| INNODB_FT_CONFIG                      |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_FT_DELETED                     |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_INDEXES                        |
| INNODB_METRICS                        |
| INNODB_SESSION_TEMP_TABLESPACES       |
| INNODB_TABLES                         |
| INNODB_TABLESPACES                    |
| INNODB_TABLESPACES_BRIEF              |
| INNODB_TABLESTATS                     |
| INNODB_TEMP_TABLE_INFO                |
| INNODB_TRX                            |
| INNODB_VIRTUAL                        |
| KEY_COLUMN_USAGE                      |
| KEYWORDS                              |
| OPTIMIZER_TRACE                       |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| RESOURCE_GROUPS                       |
| ROLE_COLUMN_GRANTS                    |
| ROLE_ROUTINE_GRANTS                   |
| ROLE_TABLE_GRANTS                     |
| ROUTINES                              |
| SCHEMA_PRIVILEGES                     |
| SCHEMATA                              |
| SCHEMATA_EXTENSIONS                   |
| ST_GEOMETRY_COLUMNS                   |
| ST_SPATIAL_REFERENCE_SYSTEMS          |
| ST_UNITS_OF_MEASURE                   |
| STATISTICS                            |
| TABLE_CONSTRAINTS                     |
| TABLE_CONSTRAINTS_EXTENSIONS          |
| TABLE_PRIVILEGES                      |
| TABLES                                |
| TABLES_EXTENSIONS                     |
| TABLESPACES                           |
| TABLESPACES_EXTENSIONS                |
| TRIGGERS                              |
| USER_ATTRIBUTES                       |
| USER_PRIVILEGES                       |
| VIEW_ROUTINE_USAGE                    |
| VIEW_TABLE_USAGE                      |
| VIEWS                                 |
+---------------------------------------+

DESC TABLE_CONSTRAINTS;

+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_SCHEMA  | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_NAME    | varchar(64) | YES  |     | NULL    |       |
| TABLE_SCHEMA       | varchar(64) | YES  |     | NULL    |       |
| TABLE_NAME         | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_TYPE    | varchar(11) | NO   |     |         |       |
| ENFORCED           | varchar(3)  | NO   |     |         |       |
+--------------------+-------------+------+-----+---------+-------+

SELECT CONSTRAINT_SCHEMA AS "BANCO", 
       TABLE_NAME AS "TABELA",
       CONSTRAINT_TYPE AS "TIPO",
       CONSTRAINT_NAME AS "NOME"
FROM TABLE_CONSTRAINTS;

+--------------------+------------------------------------------------------+-------------+---------------------------+
| BANCO              | TABELA                                               | TIPO        | NOME                      |
+--------------------+------------------------------------------------------+-------------+---------------------------+
| comercio           | cliente                                              | UNIQUE      | CPF                       |
| comercio           | cliente                                              | UNIQUE      | EMAIL                     |
| comercio           | cliente                                              | PRIMARY KEY | PRIMARY                   |
| comercio           | endereco                                             | UNIQUE      | ID_CLIENTE                |
| comercio           | endereco                                             | PRIMARY KEY | PRIMARY                   |
| comercio           | endereco                                             | FOREIGN KEY | endereco_ibfk_1           |
| comercio           | produto                                              | PRIMARY KEY | PRIMARY                   |
| comercio           | telefone                                             | PRIMARY KEY | PRIMARY                   |
| comercio           | telefone                                             | FOREIGN KEY | telefone_ibfk_1           |
| comercio           | vendedores                                           | PRIMARY KEY | PRIMARY                   |
| exemplos           | cliente                                              | PRIMARY KEY | PRIMARY                   |
| exemplos           | jogadores                                            | PRIMARY KEY | PRIMARY                   |
| exemplos           | pessoa                                               | UNIQUE      | COLUNA05                  |
| exemplos           | pessoa                                               | PRIMARY KEY | PRIMARY                   |
| exemplos           | telefone                                             | FOREIGN KEY | FK_CLIENTE_TELEFONE       |
| exemplos           | time                                                 | PRIMARY KEY | PRIMARY                   |
| exemplos           | time                                                 | FOREIGN KEY | time_ibfk_1               |
| exemplos           | times                                                | FOREIGN KEY | times_ibfk_1              |
| mysql              | columns_priv                                         | PRIMARY KEY | PRIMARY                   |
| mysql              | component                                            | PRIMARY KEY | PRIMARY                   |
| mysql              | db                                                   | PRIMARY KEY | PRIMARY                   |
| mysql              | default_roles                                        | PRIMARY KEY | PRIMARY                   |
| mysql              | engine_cost                                          | PRIMARY KEY | PRIMARY                   |
| mysql              | func                                                 | PRIMARY KEY | PRIMARY                   |
| mysql              | global_grants                                        | PRIMARY KEY | PRIMARY                   |
| mysql              | gtid_executed                                        | PRIMARY KEY | PRIMARY                   |
| mysql              | help_category                                        | UNIQUE      | name                      |
| mysql              | help_category                                        | PRIMARY KEY | PRIMARY                   |
| mysql              | help_keyword                                         | UNIQUE      | name                      |
| mysql              | help_keyword                                         | PRIMARY KEY | PRIMARY                   |
| mysql              | help_relation                                        | PRIMARY KEY | PRIMARY                   |
| mysql              | help_topic                                           | UNIQUE      | name                      |
| mysql              | help_topic                                           | PRIMARY KEY | PRIMARY                   |
| mysql              | innodb_index_stats                                   | PRIMARY KEY | PRIMARY                   |
| mysql              | innodb_table_stats                                   | PRIMARY KEY | PRIMARY                   |
| mysql              | ndb_binlog_index                                     | PRIMARY KEY | PRIMARY                   |
| mysql              | password_history                                     | PRIMARY KEY | PRIMARY                   |
| mysql              | plugin                                               | PRIMARY KEY | PRIMARY                   |
| mysql              | procs_priv                                           | PRIMARY KEY | PRIMARY                   |
| mysql              | proxies_priv                                         | PRIMARY KEY | PRIMARY                   |
| mysql              | replication_asynchronous_connection_failover         | PRIMARY KEY | PRIMARY                   |
| mysql              | replication_asynchronous_connection_failover_managed | PRIMARY KEY | PRIMARY                   |
| mysql              | replication_group_configuration_version              | PRIMARY KEY | PRIMARY                   |
| mysql              | replication_group_member_actions                     | PRIMARY KEY | PRIMARY                   |
| mysql              | role_edges                                           | PRIMARY KEY | PRIMARY                   |
| mysql              | server_cost                                          | PRIMARY KEY | PRIMARY                   |
| mysql              | servers                                              | PRIMARY KEY | PRIMARY                   |
| mysql              | slave_master_info                                    | PRIMARY KEY | PRIMARY                   |
| mysql              | slave_relay_log_info                                 | PRIMARY KEY | PRIMARY                   |
| mysql              | slave_worker_info                                    | PRIMARY KEY | PRIMARY                   |
| mysql              | tables_priv                                          | PRIMARY KEY | PRIMARY                   |
| mysql              | time_zone                                            | PRIMARY KEY | PRIMARY                   |
| mysql              | time_zone_leap_second                                | PRIMARY KEY | PRIMARY                   |
| mysql              | time_zone_name                                       | PRIMARY KEY | PRIMARY                   |
| mysql              | time_zone_transition                                 | PRIMARY KEY | PRIMARY                   |
| mysql              | time_zone_transition_type                            | PRIMARY KEY | PRIMARY                   |
| mysql              | user                                                 | PRIMARY KEY | PRIMARY                   |
| performance_schema | accounts                                             | UNIQUE      | ACCOUNT                   |
| performance_schema | cond_instances                                       | PRIMARY KEY | PRIMARY                   |
| performance_schema | data_locks                                           | PRIMARY KEY | PRIMARY                   |
| performance_schema | error_log                                            | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_errors_summary_by_account_by_error            | UNIQUE      | ACCOUNT                   |
| performance_schema | events_errors_summary_by_host_by_error               | UNIQUE      | HOST                      |
| performance_schema | events_errors_summary_by_thread_by_error             | UNIQUE      | THREAD_ID                 |
| performance_schema | events_errors_summary_by_user_by_error               | UNIQUE      | USER                      |
| performance_schema | events_errors_summary_global_by_error                | UNIQUE      | ERROR_NUMBER              |
| performance_schema | events_stages_current                                | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_stages_history                                | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_stages_summary_by_account_by_event_name       | UNIQUE      | ACCOUNT                   |
| performance_schema | events_stages_summary_by_host_by_event_name          | UNIQUE      | HOST                      |
| performance_schema | events_stages_summary_by_thread_by_event_name        | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_stages_summary_by_user_by_event_name          | UNIQUE      | USER                      |
| performance_schema | events_stages_summary_global_by_event_name           | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_statements_current                            | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_statements_histogram_by_digest                | UNIQUE      | SCHEMA_NAME               |
| performance_schema | events_statements_histogram_global                   | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_statements_history                            | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_statements_summary_by_account_by_event_name   | UNIQUE      | ACCOUNT                   |
| performance_schema | events_statements_summary_by_digest                  | UNIQUE      | SCHEMA_NAME               |
| performance_schema | events_statements_summary_by_host_by_event_name      | UNIQUE      | HOST                      |
| performance_schema | events_statements_summary_by_program                 | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_statements_summary_by_thread_by_event_name    | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_statements_summary_by_user_by_event_name      | UNIQUE      | USER                      |
| performance_schema | events_statements_summary_global_by_event_name       | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_transactions_current                          | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_transactions_history                          | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_transactions_summary_by_account_by_event_name | UNIQUE      | ACCOUNT                   |
| performance_schema | events_transactions_summary_by_host_by_event_name    | UNIQUE      | HOST                      |
| performance_schema | events_transactions_summary_by_thread_by_event_name  | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_transactions_summary_by_user_by_event_name    | UNIQUE      | USER                      |
| performance_schema | events_transactions_summary_global_by_event_name     | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_waits_current                                 | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_waits_history                                 | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_waits_summary_by_account_by_event_name        | UNIQUE      | ACCOUNT                   |
| performance_schema | events_waits_summary_by_host_by_event_name           | UNIQUE      | HOST                      |
| performance_schema | events_waits_summary_by_instance                     | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_waits_summary_by_thread_by_event_name         | PRIMARY KEY | PRIMARY                   |
| performance_schema | events_waits_summary_by_user_by_event_name           | UNIQUE      | USER                      |
| performance_schema | events_waits_summary_global_by_event_name            | PRIMARY KEY | PRIMARY                   |
| performance_schema | file_instances                                       | PRIMARY KEY | PRIMARY                   |
| performance_schema | file_summary_by_event_name                           | PRIMARY KEY | PRIMARY                   |
| performance_schema | file_summary_by_instance                             | PRIMARY KEY | PRIMARY                   |
| performance_schema | global_status                                        | PRIMARY KEY | PRIMARY                   |
| performance_schema | global_variables                                     | PRIMARY KEY | PRIMARY                   |
| performance_schema | host_cache                                           | PRIMARY KEY | PRIMARY                   |
| performance_schema | hosts                                                | UNIQUE      | HOST                      |
| performance_schema | memory_summary_by_account_by_event_name              | UNIQUE      | ACCOUNT                   |
| performance_schema | memory_summary_by_host_by_event_name                 | UNIQUE      | HOST                      |
| performance_schema | memory_summary_by_thread_by_event_name               | PRIMARY KEY | PRIMARY                   |
| performance_schema | memory_summary_by_user_by_event_name                 | UNIQUE      | USER                      |
| performance_schema | memory_summary_global_by_event_name                  | PRIMARY KEY | PRIMARY                   |
| performance_schema | metadata_locks                                       | PRIMARY KEY | PRIMARY                   |
| performance_schema | mutex_instances                                      | PRIMARY KEY | PRIMARY                   |
| performance_schema | objects_summary_global_by_type                       | UNIQUE      | OBJECT                    |
| performance_schema | persisted_variables                                  | PRIMARY KEY | PRIMARY                   |
| performance_schema | prepared_statements_instances                        | UNIQUE      | OWNER_THREAD_ID           |
| performance_schema | prepared_statements_instances                        | PRIMARY KEY | PRIMARY                   |
| performance_schema | processlist                                          | PRIMARY KEY | PRIMARY                   |
| performance_schema | replication_applier_configuration                    | PRIMARY KEY | PRIMARY                   |
| performance_schema | replication_applier_status                           | PRIMARY KEY | PRIMARY                   |
| performance_schema | replication_applier_status_by_coordinator            | PRIMARY KEY | PRIMARY                   |
| performance_schema | replication_applier_status_by_worker                 | PRIMARY KEY | PRIMARY                   |
| performance_schema | replication_connection_configuration                 | PRIMARY KEY | PRIMARY                   |
| performance_schema | replication_connection_status                        | PRIMARY KEY | PRIMARY                   |
| performance_schema | rwlock_instances                                     | PRIMARY KEY | PRIMARY                   |
| performance_schema | session_account_connect_attrs                        | PRIMARY KEY | PRIMARY                   |
| performance_schema | session_connect_attrs                                | PRIMARY KEY | PRIMARY                   |
| performance_schema | session_status                                       | PRIMARY KEY | PRIMARY                   |
| performance_schema | session_variables                                    | PRIMARY KEY | PRIMARY                   |
| performance_schema | setup_actors                                         | PRIMARY KEY | PRIMARY                   |
| performance_schema | setup_consumers                                      | PRIMARY KEY | PRIMARY                   |
| performance_schema | setup_instruments                                    | PRIMARY KEY | PRIMARY                   |
| performance_schema | setup_objects                                        | UNIQUE      | OBJECT                    |
| performance_schema | setup_threads                                        | PRIMARY KEY | PRIMARY                   |
| performance_schema | socket_instances                                     | PRIMARY KEY | PRIMARY                   |
| performance_schema | socket_summary_by_event_name                         | PRIMARY KEY | PRIMARY                   |
| performance_schema | socket_summary_by_instance                           | PRIMARY KEY | PRIMARY                   |
| performance_schema | status_by_account                                    | UNIQUE      | ACCOUNT                   |
| performance_schema | status_by_host                                       | UNIQUE      | HOST                      |
| performance_schema | status_by_thread                                     | PRIMARY KEY | PRIMARY                   |
| performance_schema | status_by_user                                       | UNIQUE      | USER                      |
| performance_schema | table_handles                                        | PRIMARY KEY | PRIMARY                   |
| performance_schema | table_io_waits_summary_by_index_usage                | UNIQUE      | OBJECT                    |
| performance_schema | table_io_waits_summary_by_table                      | UNIQUE      | OBJECT                    |
| performance_schema | table_lock_waits_summary_by_table                    | UNIQUE      | OBJECT                    |
| performance_schema | threads                                              | PRIMARY KEY | PRIMARY                   |
| performance_schema | user_defined_functions                               | PRIMARY KEY | PRIMARY                   |
| performance_schema | user_variables_by_thread                             | PRIMARY KEY | PRIMARY                   |
| performance_schema | users                                                | UNIQUE      | USER                      |
| performance_schema | variables_by_thread                                  | PRIMARY KEY | PRIMARY                   |
| procedures         | cursos                                               | PRIMARY KEY | PRIMARY                   |
| sakila             | actor                                                | PRIMARY KEY | PRIMARY                   |
| sakila             | address                                              | PRIMARY KEY | PRIMARY                   |
| sakila             | address                                              | FOREIGN KEY | fk_address_city           |
| sakila             | category                                             | PRIMARY KEY | PRIMARY                   |
| sakila             | city                                                 | PRIMARY KEY | PRIMARY                   |
| sakila             | city                                                 | FOREIGN KEY | fk_city_country           |
| sakila             | country                                              | PRIMARY KEY | PRIMARY                   |
| sakila             | customer                                             | PRIMARY KEY | PRIMARY                   |
| sakila             | customer                                             | FOREIGN KEY | fk_customer_address       |
| sakila             | customer                                             | FOREIGN KEY | fk_customer_store         |
| sakila             | film                                                 | PRIMARY KEY | PRIMARY                   |
| sakila             | film                                                 | FOREIGN KEY | fk_film_language          |
| sakila             | film                                                 | FOREIGN KEY | fk_film_language_original |
| sakila             | film_actor                                           | PRIMARY KEY | PRIMARY                   |
| sakila             | film_actor                                           | FOREIGN KEY | fk_film_actor_actor       |
| sakila             | film_actor                                           | FOREIGN KEY | fk_film_actor_film        |
| sakila             | film_category                                        | PRIMARY KEY | PRIMARY                   |
| sakila             | film_category                                        | FOREIGN KEY | fk_film_category_category |
| sakila             | film_category                                        | FOREIGN KEY | fk_film_category_film     |
| sakila             | film_text                                            | PRIMARY KEY | PRIMARY                   |
| sakila             | inventory                                            | PRIMARY KEY | PRIMARY                   |
| sakila             | inventory                                            | FOREIGN KEY | fk_inventory_film         |
| sakila             | inventory                                            | FOREIGN KEY | fk_inventory_store        |
| sakila             | language                                             | PRIMARY KEY | PRIMARY                   |
| sakila             | payment                                              | PRIMARY KEY | PRIMARY                   |
| sakila             | payment                                              | FOREIGN KEY | fk_payment_customer       |
| sakila             | payment                                              | FOREIGN KEY | fk_payment_rental         |
| sakila             | payment                                              | FOREIGN KEY | fk_payment_staff          |
| sakila             | rental                                               | PRIMARY KEY | PRIMARY                   |
| sakila             | rental                                               | UNIQUE      | rental_date               |
| sakila             | rental                                               | FOREIGN KEY | fk_rental_customer        |
| sakila             | rental                                               | FOREIGN KEY | fk_rental_inventory       |
| sakila             | rental                                               | FOREIGN KEY | fk_rental_staff           |
| sakila             | staff                                                | PRIMARY KEY | PRIMARY                   |
| sakila             | staff                                                | FOREIGN KEY | fk_staff_address          |
| sakila             | staff                                                | FOREIGN KEY | fk_staff_store            |
| sakila             | store                                                | UNIQUE      | idx_unique_manager        |
| sakila             | store                                                | PRIMARY KEY | PRIMARY                   |
| sakila             | store                                                | FOREIGN KEY | fk_store_address          |
| sakila             | store                                                | FOREIGN KEY | fk_store_staff            |
| sys                | sys_config                                           | PRIMARY KEY | PRIMARY                   |
| world              | city                                                 | PRIMARY KEY | PRIMARY                   |
| world              | city                                                 | FOREIGN KEY | city_ibfk_1               |
| world              | country                                              | PRIMARY KEY | PRIMARY                   |
| world              | countrylanguage                                      | PRIMARY KEY | PRIMARY                   |
| world              | countrylanguage                                      | FOREIGN KEY | countryLanguage_ibfk_1    |
+--------------------+------------------------------------------------------+-------------+---------------------------+

SELECT CONSTRAINT_SCHEMA AS "BANCO", 
       TABLE_NAME AS "TABELA",
       CONSTRAINT_TYPE AS "TIPO",
       CONSTRAINT_NAME AS "NOME"
FROM TABLE_CONSTRAINTS
WHERE  
CONSTRAINT_SCHEMA = "exemplos";

+----------+-----------+-------------+---------------------+
| BANCO    | TABELA    | TIPO        | NOME                |
+----------+-----------+-------------+---------------------+
| exemplos | cliente   | PRIMARY KEY | PRIMARY             |
| exemplos | jogadores | PRIMARY KEY | PRIMARY             |
| exemplos | pessoa    | UNIQUE      | COLUNA05            |
| exemplos | pessoa    | PRIMARY KEY | PRIMARY             |
| exemplos | telefone  | FOREIGN KEY | FK_CLIENTE_TELEFONE |
| exemplos | time      | PRIMARY KEY | PRIMARY             |
| exemplos | time      | FOREIGN KEY | time_ibfk_1         |
| exemplos | times     | FOREIGN KEY | times_ibfk_1        |
+----------+-----------+-------------+---------------------+

/* APAGA UMA CONSTRAINT */

ALTER TABLE TELEFONE 
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

/* 
NÃO É POSSÍVEL EFETUAR A DELEÇÃO PORQUE ESTÁ SENDO UTILIZADO O BANCO "INFORMATION_SCHEMA"
E NÃO O BANCO "EXEMPLOS".
*/
ERROR 1044 (42000): Access denied for user 'root'@'localhost' to database 'information_schema'

USE exemplos;

ALTER TABLE TELEFONE 
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0


USE CONSTRAINT_SCHEMA;

SELECT CONSTRAINT_SCHEMA AS "BANCO", 
       TABLE_NAME AS "TABELA",
       CONSTRAINT_TYPE AS "TIPO",
       CONSTRAINT_NAME AS "NOME"
FROM TABLE_CONSTRAINTS
WHERE  
CONSTRAINT_SCHEMA = "exemplos";

+----------+-----------+-------------+--------------+
| BANCO    | TABELA    | TIPO        | NOME         |
+----------+-----------+-------------+--------------+
| exemplos | cliente   | PRIMARY KEY | PRIMARY      |
| exemplos | jogadores | PRIMARY KEY | PRIMARY      |
| exemplos | pessoa    | UNIQUE      | COLUNA05     |
| exemplos | pessoa    | PRIMARY KEY | PRIMARY      |
| exemplos | time      | PRIMARY KEY | PRIMARY      |
| exemplos | time      | FOREIGN KEY | time_ibfk_1  |
| exemplos | times     | FOREIGN KEY | times_ibfk_1 |
+----------+-----------+-------------+--------------+

USE EXEMPLOS;

ALTER TABLE 
			TELEFONE 
ADD 
			CONSTRAINT FK_CLIENTE_TELEFONE 
			FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE);

Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0


USE information_schema;

+----------+-----------+-------------+---------------------+
| BANCO    | TABELA    | TIPO        | NOME                |
+----------+-----------+-------------+---------------------+
| exemplos | cliente   | PRIMARY KEY | PRIMARY             |
| exemplos | jogadores | PRIMARY KEY | PRIMARY             |
| exemplos | pessoa    | UNIQUE      | COLUNA05            |
| exemplos | pessoa    | PRIMARY KEY | PRIMARY             |
| exemplos | telefone  | FOREIGN KEY | FK_CLIENTE_TELEFONE |
| exemplos | time      | PRIMARY KEY | PRIMARY             |
| exemplos | time      | FOREIGN KEY | time_ibfk_1         |
| exemplos | times     | FOREIGN KEY | times_ibfk_1        |
+----------+-----------+-------------+---------------------+
