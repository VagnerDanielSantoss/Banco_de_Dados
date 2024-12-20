
/* FUNÇÕES DE AGREGAÇÃO NUMERICA */

SHOW DATABASES;

USE COMERCIO;

SHOW TABLES;


CREATE TABLE VENDEDORES
(
	IDVENDEDOR INTEGER PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
	SEXO ENUM("Feminino", "Masculino") NOT NULL,
	JANEIRO DECIMAL(18,2),
	FEVEREIRO DECIMAL(18,2),
	MARCO DECIMAL(18,2)
);

DESC VENDEDORES;
+------------+------------------------------+------+-----+---------+----------------+
| Field      | Type                         | Null | Key | Default | Extra          |
+------------+------------------------------+------+-----+---------+----------------+
| IDVENDEDOR | int                          | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50)                  | NO   |     | NULL    |                |
| SEXO       | enum('Feminino','Masculino') | NO   |     | NULL    |                |
| JANEIRO    | decimal(18,2)                | YES  |     | NULL    |                |
| FEVEREIRO  | decimal(18,2)                | YES  |     | NULL    |                |
| MARCO      | decimal(18,2)                | YES  |     | NULL    |                |
+------------+------------------------------+------+-----+---------+----------------+

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "PAULO RAMOS", "Masculino", 123456.01, 12512.99, 450.51);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "MARGARIDA CARLA", "Feminino", 888214.19, 357159.11, 78952.60);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "LETICIA MIRANDA", "Feminino", 45682.44, 896514.33, 789654.82);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "JOELMA SANTOS", "Feminino", 4563257.87, 78965.77, 7895.98);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "LUIZ MARIUCHI", "Masculino", 8521459.77, 9632148.75, 35896571.46);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "CLARA NUNEZ", "Feminino", 1478.70, 45698.38, 98.10);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "GUSTAVO PACHECO", "Masculino", 18.08, 28.08, 45874.57);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "PABLO ESCOBIM", "Masculino", 985357.74, 0.0, 96325874.99);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "VALERIA CASTRO", "Feminino", 78965412.97, 258753.11, 100.00);

INSERT INTO VENDEDORES
(IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO)
VALUES
(NULL, "JOCASTA LIMA", "Feminino", 8952.21, 368547.38, 450.28);



SELECT IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO
FROM VENDEDORES;
+------------+-----------------+-----------+-------------+------------+-------------+
| IDVENDEDOR | NOME            | SEXO      | JANEIRO     | FEVEREIRO  | MARCO       |
+------------+-----------------+-----------+-------------+------------+-------------+
|          1 | PAULO RAMOS     | Masculino |   123456.01 |   12512.99 |      450.51 |
|          2 | MARGARIDA CARLA | Feminino  |   888214.19 |  357159.11 |    78952.60 |
|          3 | LETICIA MIRANDA | Feminino  |    45682.44 |  896514.33 |   789654.82 |
|          4 | JOELMA SANTOS   | Feminino  |  4563257.87 |   78965.77 |     7895.98 |
|          5 | LUIZ MARIUCHI   | Masculino |  8521459.77 | 9632148.75 | 35896571.46 |
|          6 | CLARA NUNEZ     | Feminino  |     1478.70 |   45698.38 |       98.10 |
|          7 | GUSTAVO PACHECO | Masculino |       18.08 |      28.08 |    45874.57 |
|          8 | PABLO ESCOBIM   | Masculino |   985357.74 |       0.00 | 96325874.99 |
|          9 | VALERIA CASTRO  | Feminino  | 78965412.97 |  258753.11 |      100.00 |
|         10 | JOCASTA LIMA    | Feminino  |     8952.21 |  368547.38 |      450.28 |
+------------+-----------------+-----------+-------------+------------+-------------+

/* FUNÇAO MAX = MOSTRA O VALOR MAXIMO DE UMA COLUNA */
SELECT MAX(FEVEREIRO) AS MAIOR_FEVEREIRO
FROM VENDEDORES;
+-----------------+
| MAIOR_FEVEREIRO |
+-----------------+
|      9632148.75 |
+-----------------+


/* FUNÇAO MIM = MOSTRA O VALOR MINIMO DE UMA COLUNA */
SELECT MIN(MARCO) AS MENOR_MARCO
FROM VENDEDORES;
+-------------+
| MENOR_MARCO |
+-------------+
|       98.10 |
+-------------+


/* FUNÇAO AVG = MOSTRA A MEDIA DOS VALORES DE UMA COLUNA */
SELECT AVG(JANEIRO) AS MEDIA_JANEIRO
FROM VENDEDORES;
+----------------+
| MEDIA_JANEIRO  |
+----------------+
| 9410328.998000 |
+----------------+
SELECT TRUNCATE(AVG(JANEIRO), 2) AS MEDIA_JANEIRO
FROM VENDEDORES;
+---------------+
| MEDIA_JANEIRO |
+---------------+
|    9410328.99 |
+---------------+


SELECT MAX(JANEIRO) AS MAX_JANEIRO,
       MIN(FEVEREIRO) AS MIN_FEVEREIRO,
       AVG(MARCO) AS MEDIA_MARCO
FROM VENDEDORES;
+-------------+---------------+-----------------+
| MAX_JANEIRO | MIN_FEVEREIRO | MEDIA_MARCO     |
+-------------+---------------+-----------------+
| 78965412.97 |          0.00 | 13314592.331000 |
+-------------+---------------+-----------------+

SELECT MAX(JANEIRO) AS MAX_JANEIRO,
       MIN(FEVEREIRO) AS MIN_FEVEREIRO,
       TRUNCATE(AVG(MARCO), 2) AS MEDIA_MARCO
FROM VENDEDORES;
+-------------+---------------+-------------+
| MAX_JANEIRO | MIN_FEVEREIRO | MEDIA_MARCO |
+-------------+---------------+-------------+
| 78965412.97 |          0.00 | 13314592.33 |
+-------------+---------------+-------------+


/* AGREGAÇÃO COM A FUNÇÃO SUM() */

SELECT IDVENDEDOR, NOME, SEXO, JANEIRO, FEVEREIRO, MARCO
FROM VENDEDORES;
+------------+-----------------+-----------+-------------+------------+-------------+
| IDVENDEDOR | NOME            | SEXO      | JANEIRO     | FEVEREIRO  | MARCO       |
+------------+-----------------+-----------+-------------+------------+-------------+
|          1 | PAULO RAMOS     | Masculino |   123456.01 |   12512.99 |      450.51 |
|          2 | MARGARIDA CARLA | Feminino  |   888214.19 |  357159.11 |    78952.60 |
|          3 | LETICIA MIRANDA | Feminino  |    45682.44 |  896514.33 |   789654.82 |
|          4 | JOELMA SANTOS   | Feminino  |  4563257.87 |   78965.77 |     7895.98 |
|          5 | LUIZ MARIUCHI   | Masculino |  8521459.77 | 9632148.75 | 35896571.46 |
|          6 | CLARA NUNEZ     | Feminino  |     1478.70 |   45698.38 |       98.10 |
|          7 | GUSTAVO PACHECO | Masculino |       18.08 |      28.08 |    45874.57 |
|          8 | PABLO ESCOBIM   | Masculino |   985357.74 |       0.00 | 96325874.99 |
|          9 | VALERIA CASTRO  | Feminino  | 78965412.97 |  258753.11 |      100.00 |
|         10 | JOCASTA LIMA    | Feminino  |     8952.21 |  368547.38 |      450.28 |
+------------+-----------------+-----------+-------------+------------+-------------+

SELECT SUM(JANEIRO) AS TOTAL_JANEIRO
FROM VENDEDORES;
+---------------+
| TOTAL_JANEIRO |
+---------------+
|   94103289.98 |
+---------------+


SELECT SUM(JANEIRO) AS TOTAL_JANEIRO,
       SUM(FEVEREIRO) AS TOTAL_FEVEREIRO,
       SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES;
+---------------+-----------------+--------------+
| TOTAL_JANEIRO | TOTAL_FEVEREIRO | TOTAL_MARCO  |
+---------------+-----------------+--------------+
|   94103289.98 |     11650327.90 | 133145923.31 |
+---------------+-----------------+--------------+


/* CÁLCULA DA SOMA DAS VENDAS POR SEXO DE UM DETERMINADO MÊS */

SELECT SEXO, SUM(FEVEREIRO) AS TOTAL_FEVEREIRO
FROM VENDEDORES
GROUP BY SEXO;
+-----------+-----------------+
| SEXO      | TOTAL_FEVEREIRO |
+-----------+-----------------+
| Masculino |      9644689.82 |
| Feminino  |      2005638.08 |
+-----------+-----------------+
