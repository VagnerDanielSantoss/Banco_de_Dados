
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
