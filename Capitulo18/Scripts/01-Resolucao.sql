
/* EXERCÍCIO - OFICINA */

/* CRIA O BANCO DE DADOS */

CREATE DATABASE OFICINA;
Query OK, 1 row affected (0.02 sec)

/* CONECTA-SE NO BANCO DE DADOS */

USE OFICINA;
Database changed

/* CONFERE O BANCO DE DADOS QUE ESTÁ CONECTADO */

STATUS;
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.39 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       oficina
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
Uptime:                 5 hours 24 min 25 sec

Threads: 2  Questions: 14  Slow queries: 0  Opens: 139  Flush tables: 3  Open tables: 58  Queries per second avg: 0.000
--------------

/* CRIA AS TABELAS */

CREATE TABLE CLIENTES
(
	IDCLIENTE INTEGER PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
	SEXO ENUM ("FEMININO", "MASCULINO") NOT NULL,
	CPF VARCHAR(15) NOT NULL,

	ID_VEICULO INTEGER UNIQUE
);

CREATE TABLE ENDERECOS
(
	IDENDERECO INTEGER PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(50) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	CEP VARCHAR(10) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,

	ID_CLIENTE INTEGER
);

CREATE TABLE TELEFONES
(
	IDTELEFONE INTEGER PRIMARY KEY AUTO_INCREMENT,
	DDD CHAR(2),
	NUMERO VARCHAR(10),
	TIPO ENUM("CELULAR", "COMERCIAL", "RECADO", "RESIDENCIAL"),
	RECADO VARCHAR(10),

	ID_CLIENTE INTEGER
);

CREATE TABLE VEICULOS 
(
	IDVEICULO INTEGER PRIMARY KEY AUTO_INCREMENT,
	PLACA VARCHAR(10) NOT NULL UNIQUE,
	MODELO VARCHAR(20) NOT NULL,

	ID_MARCA INTEGER	
);

CREATE TABLE CORES
(
	IDCOR INTEGER PRIMARY KEY AUTO_INCREMENT,
	COR VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE MARCAS
(
	IDMARCA INTEGER PRIMARY KEY AUTO_INCREMENT,
	MODELO VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO_COR
(
	ID_VEICULO INTEGER,
	ID_COR INTEGER,

	PRIMARY KEY(ID_VEICULO, ID_COR)
);

/* CRIA AS CONSTRAINTS DE CADA TABELA */

ALTER TABLE CLIENTES
ADD CONSTRAINT FK_CLIENTE_CARRO
FOREIGN KEY (ID_VEICULO)
REFERENCES CLIENTES (IDCLIENTE);

ALTER TABLE TELEFONES
ADD CONSTRAINT FK_TELEFONE_CLIENTES
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTES (IDCLIENTE);

ALTER TABLE ENDERECOS
ADD CONSTRAINT FK_ENDERECOS_CLIENTES
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTES (IDCLIENTE);

ALTER TABLE VEICULOS
ADD CONSTRAINT FK_VEICULOS_MARCAS
FOREIGN KEY (ID_MARCA)
REFERENCES MARCAS (IDMARCA);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_COR 
FOREIGN KEY (ID_COR)
REFERENCES CORES (IDCOR);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_CARRO 
FOREIGN KEY (ID_VEICULO)
REFERENCES VEICULOS (IDVEICULO);


/* CONFERE TODAS AS TABELAS DO BANCO DE DADOS */

SHOW TABLES;
+-------------------+
| Tables_in_oficina |
+-------------------+
| carro_cor         |
| clientes          |
| cores             |
| enderecos         |
| marcas            |
| telefones         |
| veiculos          |
+-------------------+

/* INSERE DADOS NA TABELA MARCAS */
DESC MARCAS;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDMARCA | int         | NO   | PRI | NULL    | auto_increment |
| MODELO  | varchar(30) | YES  | UNI | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "LAMBOURGHINI URUS");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "LAMBOURGHINI HURACAN");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "FERRARI 488");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "FERRARI F8");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "ROLLS ROYCE PHANTON");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "ROLLS ROYCE CULLINAN");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "MERCEDES-BENZ EQA 250");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "MERCEDES-BENZ GLA 35 AMG");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "MERCEDES-BENZ GLE 450D");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "PORCHE 911");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "PORCHE MACAN");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "RAM RAMPAGE");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "VOLVO C40");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "VOLVO XC40");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "AUDI Q7");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "AUDI Q8");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "AUDI RS6");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "BMW M3");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "BMW M4");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "BMW X5");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "BMW X6");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "BMW X7");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "CADILLAC ESCALADE");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "CHRYSLER PACIFICA");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "DODGE CHALLENGER");

INSERT INTO MARCAS 
(IDMARCA, MODELO)
VALUES
(NULL, "DODGE CHARGER");

SELECT * FROM MARCAS ORDER BY 1;
+---------+--------------------------+
| IDMARCA | MODELO                   |
+---------+--------------------------+
|       1 | LAMBOURGHINI URUS        |
|       2 | LAMBOURGHINI HURACAN     |
|       3 | FERRARI 488              |
|       4 | FERRARI F8               |
|       5 | ROLLS ROYCE PHANTON      |
|       6 | ROLLS ROYCE CULLINAN     |
|       7 | MERCEDES-BENZ EQA 250    |
|       8 | MERCEDES-BENZ GLA 35 AMG |
|       9 | MERCEDES-BENZ GLE 450D   |
|      10 | PORCHE 911               |
|      11 | PORCHE MACAN             |
|      12 | RAM RAMPAGE              |
|      13 | VOLVO C40                |
|      14 | VOLVO XC40               |
|      15 | AUDI Q7                  |
|      16 | AUDI Q8                  |
|      17 | AUDI RS6                 |
|      18 | BMW M3                   |
|      19 | BMW M4                   |
|      20 | BMW X5                   |
|      21 | BMW X6                   |
|      22 | BMW X7                   |
|      23 | CADILLAC ESCALADE        |
|      24 | CHRYSLER PACIFICA        |
|      25 | DODGE CHALLENGER         |
|      26 | DODGE CHARGER            |
+---------+--------------------------+

/* INSERE DADOS NA TABELA VEICULOS */

DESC VEICULOS;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDVEICULO | int         | NO   | PRI | NULL    | auto_increment |
| PLACA     | varchar(10) | NO   | UNI | NULL    |                |
| MODELO    | varchar(20) | NO   |     | NULL    |                |
| ID_MARCA  | int         | YES  | MUL | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "VAG1J76", "CADILLAC ESCALADE", 23);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "BER1J69", "AUDI Q7", 15);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "VAL1J69", "PORCHE MACAN", 11);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "KAT1J72", "CHRYSLER PACIFICA", 24);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "MAR1J72", "AUDI RS6", 17);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "TUR1J70", "FERRARI F8", 4);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "RIC1J90", "BMW M3", 18);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "TAY2A00", "BMW X7", 22);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "VIV1J81", "ROLLS ROYCE PHANTON", 5);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "CAR2A01", "DODGE CHALLENGER", 25);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "CAR2A02", "DODGE CHARGER", 26);

INSERT INTO VEICULOS 
(IDVEICULO, PLACA, MODELO, ID_MARCA)
VALUES
(NULL, "LUC1J60", "ROLLS ROYCE PHANTON", 5);


SELECT * FROM VEICULOS ORDER BY 1;
+-----------+---------+---------------------+----------+
| IDVEICULO | PLACA   | MODELO              | ID_MARCA |
+-----------+---------+---------------------+----------+
|         1 | VAG1J76 | CADILLAC ESCALADE   |       23 |
|         2 | BER1J69 | AUDI Q7             |       15 |
|         3 | VAL1J69 | PORCHE MACAN        |       11 |
|         4 | KAT1J72 | CHRYSLER PACIFICA   |       24 |
|         5 | MAR1J72 | AUDI RS6            |       17 |
|         6 | TUR1J70 | FERRARI F8          |        4 |
|         7 | RIC1J90 | BMW M3              |       18 |
|         8 | TAY2A00 | BMW X7              |       22 |
|         9 | VIV1J81 | ROLLS ROYCE PHANTON |        5 |
|        10 | CAR2A01 | DODGE CHALLENGER    |       25 |
|        11 | CAR2A02 | DODGE CHARGER       |       26 |
|        12 | LUC1J60 | ROLLS ROYCE PHANTON |        5 |
+-----------+---------+---------------------+----------+

/* INSERE DADOS NA TEBELA CORES */

DESC CORES;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| IDCOR | int         | NO   | PRI | NULL    | auto_increment |
| COR   | varchar(20) | NO   | UNI | NULL    |                |
+-------+-------------+------+-----+---------+----------------+

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "PRETO PEROLIZADO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "CINZA METALICO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "BRANCO NEVE");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "VERMELHO BORDON");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "AZUL PEROLIZADO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "VERDE FOSCO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "AZUL FOSCO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "BRANCO GELO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "VERDE CAMUFLADO");

INSERT INTO CORES
(IDCOR, COR)
VALUES
(NULL, "MARROM PEROLIZADO");


SELECT * FROM CORES ORDER BY 1;
+-------+-------------------+
| IDCOR | COR               |
+-------+-------------------+
|     1 | PRETO PEROLIZADO  |
|     2 | CINZA METALICO    |
|     3 | BRANCO NEVE       |
|     4 | VERMELHO BORDON   |
|     5 | AZUL PEROLIZADO   |
|     6 | VERDE FOSCO       |
|     7 | AZUL FOSCO        |
|     8 | BRANCO GELO       |
|     9 | VERDE CAMUFLADO   |
|    10 | MARROM PEROLIZADO |
+-------+-------------------+

/* INSERE DADOS NA TABELA CLIENTES */

DESC CLIENTES;
+------------+------------------------------+------+-----+---------+----------------+
| Field      | Type                         | Null | Key | Default | Extra          |
+------------+------------------------------+------+-----+---------+----------------+
| IDCLIENTE  | int                          | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50)                  | NO   |     | NULL    |                |
| SEXO       | enum('FEMININO','MASCULINO') | NO   |     | NULL    |                |
| CPF        | varchar(15)                  | NO   |     | NULL    |                |
| ID_VEICULO | int                          | YES  | UNI | NULL    |                |
+------------+------------------------------+------+-----+---------+----------------+

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "VAGNER SANTOS", "MASCULINO", 12345678910, 1);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "BERENICA SANTOS", "FEMININO", 1234678911, 2);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "VALDIRENE SANTOS", "FEMININO", 12345678912, 3);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "KATIA SANTOS", "FEMININO", 12345678913, 4);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "MARA SAMPAIO", "FEMININO", 12345678914, 5);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "TURQUESA CORREIA", "FEMININO", 12345678915, 6);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "RICARDO WATANABE", "MASCULINO", 12345678916, 7);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "THAYNARA LIM", "FEMININO", 12345678917, 8);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "VIVIANE RODRIGUES", "FEMININO", 12345678918, 9);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "CARLOS WATANABE", "MASCULINO", 12345678919, 10);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "CARLA WATANABE", "FEMININO", 12345678920, 11);

INSERT INTO CLIENTES
(IDCLIENTE, NOME, SEXO, CPF, ID_VEICULO)
VALUES
(NULL, "LUCIANO FREITAS", "MASCULINO", 12345678921, 12);


SELECT * FROM CLIENTES ORDER BY 1;
+-----------+-------------------+-----------+-------------+------------+
| IDCLIENTE | NOME              | SEXO      | CPF         | ID_VEICULO |
+-----------+-------------------+-----------+-------------+------------+
|         1 | VAGNER SANTOS     | MASCULINO | 12345678910 |          1 |
|         2 | BERENICA SANTOS   | FEMININO  | 1234678911  |          2 |
|         3 | VALDIRENE SANTOS  | FEMININO  | 12345678912 |          3 |
|         4 | KATIA SANTOS      | FEMININO  | 12345678913 |          4 |
|         5 | MARA SAMPAIO      | FEMININO  | 12345678914 |          5 |
|         6 | TURQUESA CORREIA  | FEMININO  | 12345678915 |          6 |
|         7 | RICARDO WATANABE  | MASCULINO | 12345678916 |          7 |
|         8 | THAYNARA LIM      | FEMININO  | 12345678917 |          8 |
|         9 | VIVIANE RODRIGUES | FEMININO  | 12345678918 |          9 |
|        10 | CARLOS WATANABE   | MASCULINO | 12345678919 |         10 |
|        11 | CARLA WATANABE    | FEMININO  | 12345678920 |         11 |
|        12 | LUCIANO FREITAS   | MASCULINO | 12345678921 |         12 |
+-----------+-------------------+-----------+-------------+------------+


/* INSERE DADOS NA TABELA ENDERECO */

DESC ENDERECOS;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(50) | NO   |     | NULL    |                |
| NUMERO     | varchar(10) | NO   |     | NULL    |                |
| CEP        | varchar(10) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int         | YES  | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS ENGENHEIROS DE DADOS", 1000, 12345678, "JARDINS", "SAO PAULO", "SP", 1);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "AVENIDA DOS VETERINARIOS",  498,  14785236, "CENTRO", "SAO JOSE DO RIO PRETO", "SP", 2);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "AVENIDA DOS ADMINISTRADORES",  14,  15963571, "BACACHERI", "CURITIBA", "PR", 3);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS COMERCIANTES", 222, 78912356, "JARDINS", "CAXIAS DO SUL", "RS", 4);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS EDUCANDARIOS", 9, 45625873, "CENTRO", "CURITIBA", "PR", 5);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS CUIDADORES", 69, 35715946, "LEBLON", "RIO DE JANEIRO", "RJ", 6);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "AVENIDA DOS CARROCEIROS", 512, 98765432, "POMBAL", "FLORIANOPOLIS", "SC", 7);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS CONTADORES", 799, 15942369, "ITAIM PAULISTA", "SAO PAULO", "SP", 8);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "AVENIDA DAS MANICURES", 24, 78965425, "RISQUE", "RIO DE JANEIRO", "RJ", 9);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS CARROCEIROS",  925,  98765432, "POMBAL", "FLORIANOPOLIS", "SC", 10);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "RUA DOS CARROCEIROS",  925,  98765432, "POMBAL", "FLORIANOPOLIS", "SC", 11);

INSERT INTO ENDERECOS 
(IDENDERECO, RUA, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES
(NULL, "AVENIDA DOS ENCANADORES", 122, 15975312, "CENTRO", "PERNAMBUCO", "PB", 12);


SELECT * FROM ENDERECOS ORDER BY 1;
+------------+------------------------------+--------+----------+----------------+-----------------------+--------+------------+
| IDENDERECO | RUA                          | NUMERO | CEP      | BAIRRO         | CIDADE                | ESTADO | ID_CLIENTE |
+------------+------------------------------+--------+----------+----------------+-----------------------+--------+------------+
|          1 | RUA DOS ENGENHEIROS DE DADOS | 1000   | 12345678 | JARDINS        | SAO PAULO             | SP     |          1 |
|          2 | AVENIDA DOS VETERINARIOS     | 498    | 14785236 | CENTRO         | SAO JOSE DO RIO PRETO | SP     |          2 |
|          3 | AVENIDA DOS ADMINISTRADORES  | 14     | 15963571 | BACACHERI      | CURITIBA              | PR     |          3 |
|          4 | RUA DOS COMERCIANTES         | 222    | 78912356 | JARDINS        | CAXIAS DO SUL         | RS     |          4 |
|          5 | RUA DOS EDUCANDARIOS         | 9      | 45625873 | CENTRO         | CURITIBA              | PR     |          5 |
|          6 | RUA DOS CUIDADORES           | 69     | 35715946 | LEBLON         | RIO DE JANEIRO        | RJ     |          6 |
|          7 | AVENIDA DOS CARROCEIROS      | 512    | 98765432 | POMBAL         | FLORIANOPOLIS         | SC     |          7 |
|          8 | RUA DOS CONTADORES           | 799    | 15942369 | ITAIM PAULISTA | SAO PAULO             | SP     |          8 |
|          9 | AVENIDA DAS MANICURES        | 24     | 78965425 | RISQUE         | RIO DE JANEIRO        | RJ     |          9 |
|         10 | RUA DOS CARROCEIROS          | 925    | 98765432 | POMBAL         | FLORIANOPOLIS         | SC     |         10 |
|         11 | RUA DOS CARROCEIROS          | 925    | 98765432 | POMBAL         | FLORIANOPOLIS         | SC     |         11 |
|         12 | AVENIDA DOS ENCANADORES      | 122    | 15975312 | CENTRO         | PERNAMBUCO            | PB     |         12 |
+------------+------------------------------+--------+----------+----------------+-----------------------+--------+------------+


/* INSERE DADOS NA TABELA TELEFONE */

DESC TELEFONES;
+------------+----------------------------------------------------+------+-----+---------+----------------+
| Field      | Type                                               | Null | Key | Default | Extra          |
+------------+----------------------------------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                                                | NO   | PRI | NULL    | auto_increment |
| DDD        | char(2)                                            | YES  |     | NULL    |                |
| NUMERO     | varchar(10)                                        | YES  |     | NULL    |                |
| TIPO       | enum('CELULAR','COMERCIAL','RECADO','RESIDENCIAL') | YES  |     | NULL    |                |
| RECADO     | varchar(10)                                        | YES  |     | NULL    |                |
| ID_CLIENTE | int                                                | YES  | MUL | NULL    |                |
+------------+----------------------------------------------------+------+-----+---------+----------------+

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 11, 999999991, "CELULAR", "", 1);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 11, 25896515, "COMERCIAL", "", 1);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 17, 789654128, "CELULAR", "", 2);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 17, 32569874, "COMERCIAL", "", 2);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 17, 32589614, "RESIDENCIAL", "", 2);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 41, 999887744, "CELULAR", "", 3);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 41, 999887755, "CELULAR", "FLAVIO", 3);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 54, 25896541, "RESIDENCIAL", "", 4);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 41, 25845601, "RESIDENCIAL", "", 5);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 41, 45654785, "COMERCIAL", "", 5);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 21, 988774455, "CELULAR", "", 6);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 21, 988774456, "CELULAR", "", 6);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 21, 988774466, "CELULAR", "", 6);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 48, 36952514, "RESIDENCIAL", "CLOTILDE", 7);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 11, 977445520, "CELULAR", "", 8);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 11, 25874566, "COMERCIAL", "", 8);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 21, 977441122, "CELULAR", "", 9);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 21, 977441133, "CELULAR", "", 9);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 48, 32323231, "RESIDENCIAL", "MARICOTA", 10);

INSERT INTO TELEFONES 
(IDTELEFONE, DDD, NUMERO, TIPO, RECADO, ID_CLIENTE)
VALUES 
(NULL, 48, 32323231, "RESIDENCIAL", "MARICOTA", 11);


SELECT * FROM TELEFONES;
+------------+------+-----------+-------------+----------+------------+
| IDTELEFONE | DDD  | NUMERO    | TIPO        | RECADO   | ID_CLIENTE |
+------------+------+-----------+-------------+----------+------------+
|          1 | 11   | 999999991 | CELULAR     |          |          1 |
|          2 | 11   | 25896515  | COMERCIAL   |          |          1 |
|          3 | 17   | 789654128 | CELULAR     |          |          2 |
|          4 | 17   | 32569874  | COMERCIAL   |          |          2 |
|          5 | 17   | 32589614  | RESIDENCIAL |          |          2 |
|          6 | 41   | 999887744 | CELULAR     |          |          3 |
|          7 | 41   | 999887755 | CELULAR     | FLAVIO   |          3 |
|          8 | 54   | 25896541  | RESIDENCIAL |          |          4 |
|          9 | 41   | 25845601  | RESIDENCIAL |          |          5 |
|         10 | 41   | 45654785  | COMERCIAL   |          |          5 |
|         11 | 21   | 988774455 | CELULAR     |          |          6 |
|         12 | 21   | 988774456 | CELULAR     |          |          6 |
|         13 | 21   | 988774466 | CELULAR     |          |          6 |
|         14 | 48   | 36952514  | RESIDENCIAL | CLOTILDE |          7 |
|         15 | 11   | 977445520 | CELULAR     |          |          8 |
|         16 | 11   | 25874566  | COMERCIAL   |          |          8 |
|         17 | 21   | 977441122 | CELULAR     |          |          9 |
|         18 | 21   | 977441133 | CELULAR     |          |          9 |
|         19 | 48   | 32323231  | RESIDENCIAL | MARICOTA |         10 |
|         20 | 48   | 32323231  | RESIDENCIAL | MARICOTA |         11 |
+------------+------+-----------+-------------+----------+------------+
