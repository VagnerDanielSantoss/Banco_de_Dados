
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


/* =================== SUBQUERIES ==================== */

/* QUAL O VENDEDOR VENDEU MENOS EM MARÇO E QUAL O SEU NOME */

SELECT MIN(MARCO) AS MENOR_MARCO FROM VENDEDORES;
+-------------+
| MENOR_MARCO |
+-------------+
|       98.10 |
+-------------+

SELECT NOME, MARCO FROM VENDEDORES;
+-----------------+-------------+
| NOME            | MARCO       |
+-----------------+-------------+
| PAULO RAMOS     |      450.51 |
| MARGARIDA CARLA |    78952.60 |
| LETICIA MIRANDA |   789654.82 |
| JOELMA SANTOS   |     7895.98 |
| LUIZ MARIUCHI   | 35896571.46 |
| CLARA NUNEZ     |       98.10 |
| GUSTAVO PACHECO |    45874.57 |
| PABLO ESCOBIM   | 96325874.99 |
| VALERIA CASTRO  |      100.00 |
| JOCASTA LIMA    |      450.28 |
+-----------------+-------------+

SELECT NOME, MARCO
FROM VENDEDORES
WHERE
MARCO = (SELECT MIN(MARCO) AS MENOR_MARCO FROM VENDEDORES);
+-------------+-------+
| NOME        | MARCO |
+-------------+-------+
| CLARA NUNEZ | 98.10 |
+-------------+-------+

/* QUAL O VENDEDOR VENDEU MAIS EM MARÇO E QUAL O SEU NOME */

SELECT MAX(MARCO) AS MAIOR_MARCO FROM VENDEDORES;
+-------------+
| MAIOR_MARCO |
+-------------+
| 96325874.99 |
+-------------+

SELECT NOME, MARCO FROM VENDEDORES;
+-----------------+-------------+
| NOME            | MARCO       |
+-----------------+-------------+
| PAULO RAMOS     |      450.51 |
| MARGARIDA CARLA |    78952.60 |
| LETICIA MIRANDA |   789654.82 |
| JOELMA SANTOS   |     7895.98 |
| LUIZ MARIUCHI   | 35896571.46 |
| CLARA NUNEZ     |       98.10 |
| GUSTAVO PACHECO |    45874.57 |
| PABLO ESCOBIM   | 96325874.99 |
| VALERIA CASTRO  |      100.00 |
| JOCASTA LIMA    |      450.28 |
+-----------------+-------------+

SELECT NOME, MARCO 
FROM VENDEDORES
WHERE
MARCO = (SELECT MAX(MARCO) AS MAIOR_MARCO FROM VENDEDORES);
+---------------+-------------+
| NOME          | MARCO       |
+---------------+-------------+
| PABLO ESCOBIM | 96325874.99 |
+---------------+-------------+

/* QUAL O VENDEDOR VENDEU MAIS DO QUE A MÉDIA DE FEVEREIRO */

SELECT TRUNCATE(AVG(FEVEREIRO), 2) AS MEDIA_FEVEREIRO FROM VENDEDORES;
+-----------------+
| MEDIA_FEVEREIRO |
+-----------------+
|      1165032.79 |
+-----------------+

SELECT NOME, FEVEREIRO FROM VENDEDORES;
+-----------------+------------+
| NOME            | FEVEREIRO  |
+-----------------+------------+
| PAULO RAMOS     |   12512.99 |
| MARGARIDA CARLA |  357159.11 |
| LETICIA MIRANDA |  896514.33 |
| JOELMA SANTOS   |   78965.77 |
| LUIZ MARIUCHI   | 9632148.75 |
| CLARA NUNEZ     |   45698.38 |
| GUSTAVO PACHECO |      28.08 |
| PABLO ESCOBIM   |       0.00 |
| VALERIA CASTRO  |  258753.11 |
| JOCASTA LIMA    |  368547.38 |
+-----------------+------------+

SELECT NOME, FEVEREIRO
FROM VENDEDORES
WHERE
FEVEREIRO > (SELECT TRUNCATE(AVG(FEVEREIRO), 2) AS MEDIA_FEVEREIRO FROM VENDEDORES);
+---------------+------------+
| NOME          | FEVEREIRO  |
+---------------+------------+
| LUIZ MARIUCHI | 9632148.75 |
+---------------+------------+


/* QUAL O VENDEDOR VENDEU MENOS DO QUE A MÉDIA DE FEVEREIRO */

SELECT TRUNCATE(AVG(FEVEREIRO), 2) AS MEDIA_FEVEREIRO FROM VENDEDORES;
+-----------------+
| MEDIA_FEVEREIRO |
+-----------------+
|      1165032.79 |
+-----------------+

SELECT NOME, FEVEREIRO FROM VENDEDORES;
+-----------------+------------+
| NOME            | FEVEREIRO  |
+-----------------+------------+
| PAULO RAMOS     |   12512.99 |
| MARGARIDA CARLA |  357159.11 |
| LETICIA MIRANDA |  896514.33 |
| JOELMA SANTOS   |   78965.77 |
| LUIZ MARIUCHI   | 9632148.75 |
| CLARA NUNEZ     |   45698.38 |
| GUSTAVO PACHECO |      28.08 |
| PABLO ESCOBIM   |       0.00 |
| VALERIA CASTRO  |  258753.11 |
| JOCASTA LIMA    |  368547.38 |
+-----------------+------------+

SELECT NOME, FEVEREIRO
FROM VENDEDORES
WHERE
FEVEREIRO < (SELECT TRUNCATE(AVG(FEVEREIRO), 2) AS MEDIA_FEVEREIRO FROM VENDEDORES);
+-----------------+-----------+
| NOME            | FEVEREIRO |
+-----------------+-----------+
| PAULO RAMOS     |  12512.99 |
| MARGARIDA CARLA | 357159.11 |
| LETICIA MIRANDA | 896514.33 |
| JOELMA SANTOS   |  78965.77 |
| CLARA NUNEZ     |  45698.38 |
| GUSTAVO PACHECO |     28.08 |
| PABLO ESCOBIM   |      0.00 |
| VALERIA CASTRO  | 258753.11 |
| JOCASTA LIMA    | 368547.38 |
+-----------------+-----------+
