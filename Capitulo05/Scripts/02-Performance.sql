
                   /* PERFORMANCE */

DESC TBL_CLIENTE;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| NOME     | varchar(50) | YES  |     | NULL    |       |
| CPF      | varchar(14) | YES  |     | NULL    |       |
| ENDERECO | varchar(60) | YES  |     | NULL    |       |
| EMAIL    | varchar(50) | YES  |     | NULL    |       |
| DDD      | char(2)     | YES  |     | NULL    |       |
| TELEFONE | varchar(10) | YES  |     | NULL    |       |
| SEXO     | varchar(9)  | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

/* CONTA OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) AS REGISTROS 
FROM TBL_CLIENTE;
+-----------+
| REGISTROS |
+-----------+
|        10 |
+-----------+

/* OPERADOR GROUP BY */

SELECT SEXO, COUNT(*) AS REGISTROS
FROM TBL_CLIENTE
GROUP BY SEXO;
+-----------+-----------+
| SEXO      | REGISTROS |
+-----------+-----------+
| Masculino |         3 |
| Feminino  |         7 |
+-----------+-----------+


/* PERFORMANCE COM OPERADORES LÓGICOS */

/* 
========== PARA CONTAR ========== 

SELECT COUNT(*)
FROM TBL_CLIENTE;

SELECT SEXO, COUNT(*)
FROM TBL_CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*)
FROM TBL_CLIENTE
GROUP BY CIDADE;



========== CONDIÇÃO ========== 

SEXO = "Feminino"
CIDADE = "RIO DE JANEIRO"

========== SITUAÇÃO ==========

=> TRATANDO COM OR 

70% MULHERES DO REGISTRO
30% MORAM NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM TBL_CLIENTE
WHERE 
SEXO = "Feminino"
OR
CIDADE = "RIO DE JANEIRO";

=> TRATANDO COM AND

70% MULHERES DO REGISTRO
30% MORAM NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM TBL_CLIENTE
WHERE
CIDADE = "RIO DE JANEIRO"
AND
SEXO = "Feminino";

*/
