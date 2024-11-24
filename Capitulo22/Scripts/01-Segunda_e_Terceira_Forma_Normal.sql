
/* PRIMEIRA FORMA NORMAL */

/*

==> ATOMICIDADE - UM CAMPO NÃO PODE SER DIVISÍVEL;
==> VETORIZAÇÃO - UM CAMPO NÃO PODE SER VETORIZADO; 
==> CHAVE PRIMÁRIA - UM CAMPO QUE IDENTIFICA O REGISTRO COMO SENDO ÚNICO.

/* ============================= SEGUNDA E TERCEIRA FORMA NORMAL ============================= */

/* CRIA UMA DATABASE */

CREATE DATABASE CONSULTORIO;

/* LOGA NA DATABASE CONSULTORIO */

USE CONSULTORIO;

/* CRIA UMA TABELA */

CREATE TABLE PACIENTES
(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	SEXO VARCHAR(10),
	EMAIL VARCHAR(100),
	NASCIMENTO DATE
);

DESC PACIENTES;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| IDPACIENTE | int          | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50)  | YES  |     | NULL    |                |
| SEXO       | varchar(10)  | YES  |     | NULL    |                |
| EMAIL      | varchar(100) | YES  |     | NULL    |                |
| NASCIMENTO | date         | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+


CREATE TABLE MEDICOS
(
	IDMEDICO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	SEXO VARCHAR(10),
	ESPECIALIDADE VARCHAR(50),
	FUNCIONARIO ENUM("SIM", "NAO")
);

DESC MEDICOS;
+---------------+-------------------+------+-----+---------+----------------+
| Field         | Type              | Null | Key | Default | Extra          |
+---------------+-------------------+------+-----+---------+----------------+
| IDMEDICO      | int               | NO   | PRI | NULL    | auto_increment |
| NOME          | varchar(50)       | YES  |     | NULL    |                |
| SEXO          | varchar(10)       | YES  |     | NULL    |                |
| ESPECIALIDADE | varchar(50)       | YES  |     | NULL    |                |
| FUNCIONARIO   | enum('SIM','NAO') | YES  |     | NULL    |                |
+---------------+-------------------+------+-----+---------+----------------+


CREATE TABLE HOSPITAIS
(
	IDHOSPITAL INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	ENDERECO VARCHAR(50),
	BAIRRO VARCHAR(50),
	CIDADE VARCHAR(50),
	ESTADO CHAR(2)
);

DESC HOSPITAIS;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDHOSPITAL | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50) | YES  |     | NULL    |                |
| ENDERECO   | varchar(50) | YES  |     | NULL    |                |
| BAIRRO     | varchar(50) | YES  |     | NULL    |                |
| CIDADE     | varchar(50) | YES  |     | NULL    |                |
| ESTADO     | char(2)     | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

CREATE TABLE CONSULTAS
(
	IDCONSULTA INT PRIMARY KEY AUTO_INCREMENT,

	ID_PACIENTE INT,
	ID_MEDICO INTEGER,
	ID_HOSPITAL INTEGER,

	DATA DATETIME,
	DIAGNOSTICO VARCHAR(50)
);

DESC CONSULTAS;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| IDCONSULTA  | int         | NO   | PRI | NULL    | auto_increment |
| ID_PACIENTE | int         | YES  |     | NULL    |                |
| ID_MEDICO   | int         | YES  |     | NULL    |                |
| ID_HOSPITAL | int         | YES  |     | NULL    |                |
| DATA        | datetime    | YES  |     | NULL    |                |
| DIAGNOSTICO | varchar(50) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+


CREATE TABLE INTERNACOES
(
	IDINTERNACAO INTEGER PRIMARY KEY AUTO_INCREMENT,
	ENTRADA DATETIME,
	QUARTO INTEGER,
	SAIDA DATETIME,
	OBSERVACAO VARCHAR(100),

	ID_CONSULTA INTEGER UNIQUE
);

DESC INTERNACOES;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| IDINTERNACAO | int          | NO   | PRI | NULL    | auto_increment |
| ENTRADA      | datetime     | YES  |     | NULL    |                |
| QUARTO       | int          | YES  |     | NULL    |                |
| SAIDA        | datetime     | YES  |     | NULL    |                |
| OBSERVACAO   | varchar(100) | YES  |     | NULL    |                |
| ID_CONSULTA  | int          | YES  | UNI | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+

/* CRIA AS CONSTRAINT´S DAS TABELAS */

ALTER TABLE CONSULTAS
ADD CONSTRAINT FK_CONSULTAS_PACIENTES
FOREIGN KEY (ID_PACIENTE)
REFERENCES PACIENTE(IDPACIENTE);

ALTER TABLE CONSULTAS 
ADD CONSTRAINT FK_CONSULTAS_MEDICOS
FOREIGN KEY (ID_MEDICO)
REFERENCES MEDICOS(IDMEDICO);

ALTER TABLE CONSULTAS
ADD CONSTRAINT FK_CONSULTAS_HOSPITAIS
FOREIGN KEY (ID_HOSPITAL)
REFERENCES HOSPITAIS(IDHOSPITAL);

ALTER TABLE INTERNACOES
ADD CONSTRAINT FK_INTERNACOES_CONSULTAS
FOREIGN KEY (ID_CONSULTA)
REFERENCES CONSULTAS(IDCONSULTA);

DESC CONSULTAS;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| IDCONSULTA  | int         | NO   | PRI | NULL    | auto_increment |
| ID_PACIENTE | int         | YES  |     | NULL    |                |
| ID_MEDICO   | int         | YES  | MUL | NULL    |                |
| ID_HOSPITAL | int         | YES  | MUL | NULL    |                |
| DATA        | datetime    | YES  |     | NULL    |                |
| DIAGNOSTICO | varchar(50) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
