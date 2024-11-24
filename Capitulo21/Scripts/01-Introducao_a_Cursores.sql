
/* ============================== INTRODUÇÃO A CURSORES ============================== */

/* CRIA UM BANCO DE DADOS */

CREATE DATABASE CURSORES;

/* LOGA NO BANCO DE DADOS CURSORES */

USE CURSORES;

/* CRIA UMA TABELA */

CREATE TABLE VENDEDORES
(
	IDVENDEDOR INTEGER PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	JAN INTEGER,
	FEV INTEGER,
	MAR INTEGER
);

DESC VENDEDORES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDVENDEDOR | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50) | YES  |     | NULL    |                |
| JAN        | int         | YES  |     | NULL    |                |
| FEV        | int         | YES  |     | NULL    |                |
| MAR        | int         | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "ALICE COOPER", 125125, 147852, 159357);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "SARAH BRIGHTMAN", 357895, 789654, 456157);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "SHANYA TWAIN", 236587, 148567, 987523);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "PHIL COLLINS", 753159, 258147, 123456);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "OZZY OSBOURNE", 999998, 888789, 123547);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "ROBBIE WILLIANS", 112233, 445566, 778899);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "MARIA CAREY", 123123, 456456, 789789);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "FLOOR JOHANSEN", 999996, 159753, 987658);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "STEVE TYLER", 789788, 879459, 175369);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, JAN, FEV, MAR)
VALUES
(NULL, "EMILY LEE", 988989, 989898, 489759);

SELECT IDVENDEDOR, NOME, JAN, FEV, MAR FROM VENDEDORES;
+------------+-----------------+--------+--------+--------+
| IDVENDEDOR | NOME            | JAN    | FEV    | MAR    |
+------------+-----------------+--------+--------+--------+
|          1 | ALICE COOPER    | 125125 | 147852 | 159357 |
|          2 | SARAH BRIGHTMAN | 357895 | 789654 | 456157 |
|          3 | SHANYA TWAIN    | 236587 | 148567 | 987523 |
|          4 | PHIL COLLINS    | 753159 | 258147 | 123456 |
|          5 | OZZY OSBOURNE   | 999998 | 888789 | 123547 |
|          6 | ROBBIE WILLIANS | 112233 | 445566 | 778899 |
|          7 | MARIA CAREY     | 123123 | 456456 | 789789 |
|          8 | FLOOR JOHANSEN  | 999996 | 159753 | 987658 |
|          9 | STEVE TYLER     | 789788 | 879459 | 175369 |
|         10 | EMILY LEE       | 988989 | 989898 | 489759 |
+------------+-----------------+--------+--------+--------+

SELECT 
	IDVENDEDOR, 
	NOME, 
	(JAN + FEV + MAR) AS "TOTAL" 
FROM VENDEDORES;
+------------+-----------------+---------+
| IDVENDEDOR | NOME            | TOTAL   |
+------------+-----------------+---------+
|          1 | ALICE COOPER    |  432334 |
|          2 | SARAH BRIGHTMAN | 1603706 |
|          3 | SHANYA TWAIN    | 1372677 |
|          4 | PHIL COLLINS    | 1134762 |
|          5 | OZZY OSBOURNE   | 2012334 |
|          6 | ROBBIE WILLIANS | 1336698 |
|          7 | MARIA CAREY     | 1369368 |
|          8 | FLOOR JOHANSEN  | 2147407 |
|          9 | STEVE TYLER     | 1844616 |
|         10 | EMILY LEE       | 2468646 |
+------------+-----------------+---------+

SELECT 
	IDVENDEDOR, 
	NOME, 
	(JAN + FEV + MAR) AS "TOTAL",
	(JAN + FEV + MAR) / 3  AS "MEDIA"
FROM VENDEDORES;
+------------+-----------------+---------+-------------+
| IDVENDEDOR | NOME            | TOTAL   | MEDIA       |
+------------+-----------------+---------+-------------+
|          1 | ALICE COOPER    |  432334 | 144111.3333 |
|          2 | SARAH BRIGHTMAN | 1603706 | 534568.6667 |
|          3 | SHANYA TWAIN    | 1372677 | 457559.0000 |
|          4 | PHIL COLLINS    | 1134762 | 378254.0000 |
|          5 | OZZY OSBOURNE   | 2012334 | 670778.0000 |
|          6 | ROBBIE WILLIANS | 1336698 | 445566.0000 |
|          7 | MARIA CAREY     | 1369368 | 456456.0000 |
|          8 | FLOOR JOHANSEN  | 2147407 | 715802.3333 |
|          9 | STEVE TYLER     | 1844616 | 614872.0000 |
|         10 | EMILY LEE       | 2468646 | 822882.0000 |
+------------+-----------------+---------+-------------+

CREATE TABLE VENDEDORES_TOTAL
(
	NOME VARCHAR(50),
	JAN INT,
	FEV INTEGER,
	MAR INTEGER,
	TOTAL INTEGER,
	MEDIA INTEGER
);

DESC VENDEDORES_TOTAL;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| NOME  | varchar(50) | YES  |     | NULL    |       |
| JAN   | int         | YES  |     | NULL    |       |
| FEV   | int         | YES  |     | NULL    |       |
| MAR   | int         | YES  |     | NULL    |       |
| TOTAL | int         | YES  |     | NULL    |       |
| MEDIA | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+

DELIMITER &

CREATE PROCEDURE VENDEDORES_INSERIR()
BEGIN

	DECLARE FIM INTEGER DEFAULT 0;
	DECLARE VENDEDOR_NOME VARCHAR(50);
	DECLARE MES_JAN, MES_FEV, MES_MAR, VALOR_TOTAL, VALOR_MEDIA INTEGER;

	DECLARE REGISTRO CURSOR FOR 
	(
		SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
	);

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1;

	OPEN REGISTRO;

	REPEAT
		FETCH REGISTRO INTO VENDEDOR_NOME, MES_JAN, MES_FEV, MES_MAR;

		IF NOT FIM THEN
			SET VALOR_TOTAL = MES_JAN + MES_FEV + MES_MAR;
			SET VALOR_MEDIA = VALOR_TOTAL / 3;

			INSERT INTO VENDEDORES_TOTAL
			(NOME, JAN, FEV, MAR, TOTAL, MEDIA)
			VALUES
			(VENDEDOR_NOME, MES_JAN, MES_FEV, MES_MAR, VALOR_TOTAL, VALOR_MEDIA);
		END IF;

	UNTIL FIM END REPEAT;

	CLOSE REGISTRO;

END &

DELIMITER ;

SELECT * FROM VENDEDORES;
+------------+-----------------+--------+--------+--------+
| IDVENDEDOR | NOME            | JAN    | FEV    | MAR    |
+------------+-----------------+--------+--------+--------+
|          1 | ALICE COOPER    | 125125 | 147852 | 159357 |
|          2 | SARAH BRIGHTMAN | 357895 | 789654 | 456157 |
|          3 | SHANYA TWAIN    | 236587 | 148567 | 987523 |
|          4 | PHIL COLLINS    | 753159 | 258147 | 123456 |
|          5 | OZZY OSBOURNE   | 999998 | 888789 | 123547 |
|          6 | ROBBIE WILLIANS | 112233 | 445566 | 778899 |
|          7 | MARIA CAREY     | 123123 | 456456 | 789789 |
|          8 | FLOOR JOHANSEN  | 999996 | 159753 | 987658 |
|          9 | STEVE TYLER     | 789788 | 879459 | 175369 |
|         10 | EMILY LEE       | 988989 | 989898 | 489759 |
+------------+-----------------+--------+--------+--------+

SELECT * FROM VENDEDORES_TOTAL;
Empty set (0.00 sec)

/* GRAVA A PROCEDURE(cursor) "VENDEDORES_INSERIR" */

CALL VENDEDORES_INSERIR();

SELECT * FROM VENDEDORES_TOTAL;
+-----------------+--------+--------+--------+---------+--------+
| NOME            | JAN    | FEV    | MAR    | TOTAL   | MEDIA  |
+-----------------+--------+--------+--------+---------+--------+
| ALICE COOPER    | 125125 | 147852 | 159357 |  432334 | 144111 |
| SARAH BRIGHTMAN | 357895 | 789654 | 456157 | 1603706 | 534569 |
| SHANYA TWAIN    | 236587 | 148567 | 987523 | 1372677 | 457559 |
| PHIL COLLINS    | 753159 | 258147 | 123456 | 1134762 | 378254 |
| OZZY OSBOURNE   | 999998 | 888789 | 123547 | 2012334 | 670778 |
| ROBBIE WILLIANS | 112233 | 445566 | 778899 | 1336698 | 445566 |
| MARIA CAREY     | 123123 | 456456 | 789789 | 1369368 | 456456 |
| FLOOR JOHANSEN  | 999996 | 159753 | 987658 | 2147407 | 715802 |
| STEVE TYLER     | 789788 | 879459 | 175369 | 1844616 | 614872 |
| EMILY LEE       | 988989 | 989898 | 489759 | 2468646 | 822882 |
+-----------------+--------+--------+--------+---------+--------+
