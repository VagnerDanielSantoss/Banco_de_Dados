
                   /* OPERADORES LÓGICOS */

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

SELECT NOME, CPF, ENDERECO, EMAIL, DDD, TELEFONE, SEXO
FROM TBL_CLIENTE;

+-------------------+-------------+----------------------------------------------------------+-----------------------------+------+-----------+-----------+
| NOME              | CPF         | ENDERECO                                                 | EMAIL                       | DDD  | TELEFONE  | SEXO      |
+-------------------+-------------+----------------------------------------------------------+-----------------------------+------+-----------+-----------+
| JOAO FREITAS      | 12345678910 | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ             | joaofreitas@globo.com       | 21   | 999998877 | Masculino |
| CELIA FAGUNDES    | 12345678911 | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ                 | fagundescelia@gmail.com     | 21   | 32323256  | Feminino  |
| JORGE SANTOS      | 12345678912 | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG            | jorgesantos@gmail.com       | 34   | 987878714 | Masculino |
| LILIAN CAVALCANTE | 12345678913 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ            | lilliancavalcante@yahoo.com | 21   | 963258741 | Feminino  |
| PALOMA SANTOS     | 12345678914 | AVENIDA DAS NACOES UNIDAS - MORUMBI - SÃO PAULO - SP     | santospaloma@gmail.com      | 11   | 925252531 | Feminino  |
| ANA LUIZA         | 12345678915 | PRESIDENTE ANTONIO CARLOS - CENTRO - SAO PAULO - SP      | analuiza@bol.com            | 11   | 36988963  | Feminino  |
| CARLA CHAGAS      | 12345678916 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG              | carlachagas@yahoo.com       | 31   | 987452135 | Feminino  |
| CLARA NUNES       | NULL        | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ            | NULL                        | 21   | 25896345  | Feminino  |
| CLARA NUNES       | 12345678918 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ            | NULL                        | NULL | NULL      | Feminino  |
| DIOGO FRANCO      | 12345678919 | RUA PAULO MACHADO DE CARVALHO - CENTRO - SÃO PAULO - SP  | NULL                        | 11   | NULL      | Masculino |
+-------------------+-------------+----------------------------------------------------------+-----------------------------+------+-----------+-----------+

/* OR  -- AND */

SELECT NOME, SEXO, ENDERECO 
FROM TBL_CLIENTE 
WHERE
SEXO = "Masculino" OR ENDERECO LIKE "%RJ";
+-------------------+-----------+----------------------------------------------------------+
| NOME              | SEXO      | ENDERECO                                                 |
+-------------------+-----------+----------------------------------------------------------+
| JOAO FREITAS      | Masculino | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ             |
| CELIA FAGUNDES    | Feminino  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ                 |
| JORGE SANTOS      | Masculino | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG            |
| LILIAN CAVALCANTE | Feminino  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ            |
| CLARA NUNES       | Feminino  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ            |
| CLARA NUNES       | Feminino  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ            |
| DIOGO FRANCO      | Masculino | RUA PAULO MACHADO DE CARVALHO - CENTRO - SÃO PAULO - SP  |
+-------------------+-----------+----------------------------------------------------------+

SELECT NOME, SEXO, ENDERECO 
FROM TBL_CLIENTE 
WHERE
SEXO = "Masculino" AND ENDERECO LIKE "%RJ";
+--------------+-----------+----------------------------------------------+
| NOME         | SEXO      | ENDERECO                                     |
+--------------+-----------+----------------------------------------------+
| JOAO FREITAS | Masculino | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
+--------------+-----------+----------------------------------------------+


SELECT NOME, SEXO, ENDERECO
FROM TBL_CLIENTE 
WHERE
SEXO = "Feminino" OR ENDERECO LIKE "%TIJUCA";
+-------------------+----------+-------------------------------------------------------+
| NOME              | SEXO     | ENDERECO                                              |
+-------------------+----------+-------------------------------------------------------+
| CELIA FAGUNDES    | Feminino | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ              |
| LILIAN CAVALCANTE | Feminino | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ         |
| PALOMA SANTOS     | Feminino | AVENIDA DAS NACOES UNIDAS - MORUMBI - SÃO PAULO - SP  |
| ANA LUIZA         | Feminino | PRESIDENTE ANTONIO CARLOS - CENTRO - SAO PAULO - SP   |
| CARLA CHAGAS      | Feminino | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG           |
| CLARA NUNES       | Feminino | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ         |
| CLARA NUNES       | Feminino | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ         |
+-------------------+----------+-------------------------------------------------------+

SELECT NOME, SEXO, ENDERECO
FROM TBL_CLIENTE 
WHERE
SEXO = "Masculino" AND ENDERECO LIKE "%CENTRO%";
+--------------+-----------+----------------------------------------------------------+
| NOME         | SEXO      | ENDERECO                                                 |
+--------------+-----------+----------------------------------------------------------+
| DIOGO FRANCO | Masculino | RUA PAULO MACHADO DE CARVALHO - CENTRO - SÃO PAULO - SP  |
+--------------+-----------+----------------------------------------------------------+
