
/* CONECTA AO BANCO EMPRESA */

USE 'Professor Felipe Mafra - EMPRESA'
GO

/* CRIA UMA NOVA TABELA */

CREATE TABLE TBL_ALUNO
(
	IdAluno INTEGER PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Sexo VARCHAR(10) NOT NULL,
	DataNascimento DATE NOT NULL,
	Email VARCHAR(60) UNIQUE
)
GO

/* CRIA CONSTRAINT FORA DA CRIA��O DA TABELA */

ALTER TABLE
	TBL_ALUNO
ADD CONSTRAINT 
	CK_SEXO CHECK(SEXO IN ('FEMININO', 'MASCULINO'))
GO

/* ========== RELACIONAMENTO ========== */

/* RELACIONAMENTO 1 x 1 */

CREATE TABLE TBL_ENDERECO
(
	IdEndereco INTEGER PRIMARY KEY IDENTITY (100, 10),
	Rua VARCHAR(60),
	Bairro VARCHAR(30) NOT NULL,
	UF CHAR(2) NOT NULL
	CHECK (UF IN('RJ', 'SP', 'PR', 'MG')),

	Id_Aluno INTEGER UNIQUE
)
GO

/* CRIA A CHAVE ESTRANGEIRA DA TABELA ENDERE�O */

ALTER TABLE TBL_ENDERECO
ADD CONSTRAINT FK_ENDERECO_ALUNO
FOREIGN KEY (Id_Aluno)
REFERENCES TBL_ALUNO(IdAluno)
GO

/* COMANDOS DE DESCRI��O 

=> PROCEDURES J� CRIADAS E ARMAZENADAS NO SISTEMA PELO PR�PRIO SQL SERVER
*/

SP_COLUMNS TBL_ALUNO
GO

SP_COLUMNS TBL_ENDERECO
GO

SP_HELP TBL_ALUNO
GO

/* INSERE DADOS NA TABELA ALUNO */

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('VICTORIA SECRET', 'Feminino', '1977-07-12', 'victsecrets@victoriasecrets.com')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('DOLCE E. GABBANA', 'Masculino', '1985-01-02', 'dolcegabanna@dolcegabanna.it')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('LOUIS VUITTON', 'Masculino', '1954-10-21', 'louisvuitton@louisvuitton.fr')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('CHRISTIAN DIOR', 'Masculino', '1946-12-16', 'christiandior@christiandior.fr')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('MARIA ROSA', 'Feminino', '1966-12-01', 'mariarosa@mariarosa.com.br')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('CACILDA NU', 'Feminino', '1985-03-27', 'cacildacacilda@bol.com')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('DEBORA LINGERIE', 'Feminino', '1992-08-15', 'deboradebochada@uol.com.br')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('MARIO CUNHA', 'Masculino', '1992-08-15', 'mariodebochado@uol.com.br')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('SIMONE PAPATINHO', 'Feminino', '2000-08-03', 'sisipapatos@gmail.com')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('CARLA MELLO', 'Feminino', '2000-11-29', 'carlamello@gmail.com')

/* ======================================================================== */
/* ======================================================================== */
/* ======================================================================== */
/* ======================================================================== */
/* ======================================================================== */

/* ========== IFNULL, CL�USULA AMBIGUA e FUN��O GETDATE() ========== */

/* CRIA A TABELA TELEFONE 0 x N */

CREATE TABLE TBL_TELEFONE
(
	IdTelefone INT PRIMARY KEY IDENTITY,
	DDD CHAR(2) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	TIPO VARCHAR(15) NOT NULL,
	CHECK (TIPO IN('CELULAR', 'COMERCIAL', 'RECADO', 'RESIDENCIAL')),

	Id_Aluno INT
)
GO

/* INSERE DADOS NA TABELA TELEFONE */

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('31', '999998877', 'CELULAR', 1)

	INSERT INTO TBL_TELEFONE
	(DDD, NUMERO, TIPO, Id_Aluno)
	VALUES
	('31', '32321144', 'RESIDENCIAL', 1)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('11', '25252523', 'COMERCIAL', 2)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('11', '966662222',	'CELULAR', 2)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('11', '25252525', 'CELULAR', 4)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('11', '32321144', 'RECADO', 4)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('21', '988774455', 'CELULAR', 5)

         INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('21', '12345678', 'RESIDENCIAL', 5)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('41', '988774455', 'CELULAR', 8)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('41', '988774412', 'CELULAR', 8)

     INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('41', '32323232', 'RESIDENCIAL', 8)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('41', '988772222', 'CELULAR', 9)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('21', '988778965', 'RECADO', 10)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('21', '988778966', 'CELULAR', 10)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('21', '32323232', 'COMERCIAL', 10)

INSERT INTO TBL_TELEFONE
(DDD, NUMERO, TIPO, Id_Aluno)
VALUES
('31', '999999997', 'CELULAR', 11)

SELECT * FROM TBL_ALUNO
SELECT * FROM TBL_ENDERECO
SELECT * FROM TBL_TELEFONE

/* INSERE DADOS NA TABELA ENDERE�O */

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('RUA DAS BROMELIAS', 'FLOR DE MARACUJA', 'MG', 1)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('AVENIDA DOS ESTADOS', 'SANTO ANDRE', 'SP', 2)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('AVENIDA DAS MARAVILHAS', 'JARDIM MARAVILHA', 'PR', 3)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('AVENIDA DAS NACOES UNIDAS', 'JARDIM SANTO ANDRE', 'SP', 4)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('RUA DO COMERCIO', 'COPACABANA', 'RJ', 5)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('RUA DOS QUEIJINHOS', 'QUEIJO BRANCO', 'MG', 8)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('RUA TEATRO DO ARAME', 'CHAMPAGNA', 'PR', 9)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('AVENIDA DAS ROSAS	', 'SAO CONRADO', 'RJ', 10)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('RUA DA GOIABADA', 'DOCE GOIABA', 'MG', 11)

INSERT INTO TBL_ENDERECO
(RUA, BAIRRO, UF, Id_Aluno)
VALUES
('AVENIDA DOCE DE LEITE', 'MELADO', 'MG', 12)

/* ADQUIRE A DATA ATUAL DO SISTEMA */

SELECT GETDATE()

/* CLAUSUA AMBIGUA - COLUNAS IGUAIS EM DUAS OU MAIS TABELAS */
/* SELECT QUE TRAZ APENAS ALUNOS QUE TEM TELEFONE */

SELECT
	ALUNO.NOME, 
	ENDERECO.RUA, 
	ENDERECO.BAIRRO, 
	ENDERECO.UF, 
	TELEFONE.DDD,
	TELEFONE.NUMERO AS 'TELEFONE', 
	TELEFONE.TIPO
FROM TBL_ALUNO ALUNO
INNER JOIN
	TBL_ENDERECO ENDERECO
ON
	ALUNO.IdAluno = ENDERECO.Id_Aluno
INNER JOIN
	TBL_TELEFONE TELEFONE
ON
	ALUNO.IdAluno = TELEFONE.Id_Aluno

/* CLAUSUA AMBIGUA - COLUNAS IGUAIS EM DUAS OU MAIS TABELAS */
/* SELECT QUE TRAZ TODOS OS ALUNOS COM OU SEM TELEFONE */

SELECT
	ALUNO.NOME, 
	ENDERECO.RUA, 
	ENDERECO.BAIRRO, 
	ENDERECO.UF, 
	TELEFONE.DDD,
	TELEFONE.NUMERO AS 'TELEFONE', 
	TELEFONE.TIPO
FROM TBL_ALUNO ALUNO
LEFT JOIN
	TBL_ENDERECO ENDERECO
ON
	ALUNO.IdAluno = ENDERECO.Id_Aluno
LEFT JOIN
	TBL_TELEFONE TELEFONE
ON
	ALUNO.IdAluno = TELEFONE.Id_Aluno

/* CASO HAJA REGISTRO SEM INFORMA��O */

SELECT
	ALUNO.NOME, 
	ENDERECO.RUA, 
	ENDERECO.BAIRRO, 
	ENDERECO.UF, 
	ISNULL(TELEFONE.DDD, 'Indisponivel') AS 'DDD',
	ISNULL(TELEFONE.NUMERO, 'Indisponivel') AS 'TELEFONE', 
	ISNULL(TELEFONE.TIPO, 'Indisponivel') AS 'TIPO'
FROM TBL_ALUNO ALUNO
LEFT JOIN
	TBL_ENDERECO ENDERECO
ON
	ALUNO.IdAluno = ENDERECO.Id_Aluno
LEFT JOIN
	TBL_TELEFONE TELEFONE
ON
	ALUNO.IdAluno = TELEFONE.Id_Aluno

/* =========================================================================*/
/* =========================================================================*/
/* =========================================================================*/

/* DATAS */

SELECT * FROM TBL_ALUNO;

SELECT Nome, DataNascimento
FROM TBL_ALUNO;

/* DATADIFF - CALCULA A DIFEREN�A ENTRE DUAS DATAS */

SELECT Nome, GETDATE() AS DATA
FROM TBL_ALUNO;

/* PRIMEIRO PASSO */

SELECT Nome, DATEDIFF(DAY, DataNascimento, GETDATE() ) AS Dias_Vividos
FROM TBL_ALUNO;


/* SEGUNDO PASSO - RETORNO EM INTEIRO + OPERA��O MATEM�TICA */

SELECT Nome, (DATEDIFF(DAY, DataNascimento, GETDATE() ) / 365 )AS Anos_Vividos
FROM TBL_ALUNO;

SELECT Nome, DATEDIFF(YEAR, DataNascimento, GETDATE() ) AS Anos_Vividos
FROM TBL_ALUNO;


/* DATENAME - RETORNA O NOME DA PARTE DA DATA EM QUEST�O -- STRING */

/* RETORNO O NOME DO M�S DA DATA DE NASCIMENTO */
SELECT NOME, DATENAME(MONTH, DataNascimento) AS "MES"
FROM TBL_ALUNO;

/* RETORNA O DIA DA DATA DE NASCIMENTO */
SELECT NOME, DATENAME(DAY, DataNascimento) AS  "DIA"
FROM TBL_ALUNO;

/* RETORNA O DIA DA SEMANA DA DATA DE NASCIMENTO */
SELECT NOME, DATENAME(WEEKDAY, DataNascimento) AS "DIA DA SEMANA"
FROM TBL_ALUNO;

/* DATEPART - RETORNA O NOME DA PARTE EM QUEST�O, POR�M, EM N�MERO INTEIRO */

SELECT NOME, DATEPART(MONTH, DataNascimento) AS "M�S"
FROM TBL_ALUNO;

SELECT NOME, DATEPART(YEAR, DataNascimento) AS "ANO"
FROM TBL_ALUNO;

SELECT NOME, 
	          DATENAME(MONTH, DataNascimento) AS "M�S", 
			  DATEPART(MONTH, DataNascimento) AS "M�S"
FROM TBL_ALUNO;


/* DATEADD - RETORNA UMA DATA COM A SOMA DE OUTRA DATA */

SELECT DataNascimento,  DATEADD(DAY, 365,  DataNascimento) AS "PERIODO"
FROM TBL_ALUNO;
/*
Da.Nasc     + 1 ANO   
1977-07-12	1978-07-12
1985-01-02	1986-01-02
1954-10-21	1955-10-21
1946-12-16	1947-12-16
1966-12-01	1967-12-01
1985-03-27	1986-03-27
1992-08-15	1993-08-15
1992-08-15	1993-08-15
2000-08-03	2001-08-03
2000-11-29	2001-11-29
*/

SELECT DATEADD(YEAR, 10, GETDATE() );
/* 2034-10-22 17:34:22.007 */

/* =========================================================================*/
/* =========================================================================*/
/* =========================================================================*/

/* CONVERS�O DE TIPOS DE DADOS */

SELECT 1 + '1';
/*2*/

SELECT '1' + '1';
/*11*/

SELECT 'CURSO DE BANCO DE DADOS' + ' 1';
/*CURSO DE BANCO DE DADOS 1*/

SELECT 'CURSO DE BANCO DE DADOS' + 1;
/*(Conversion failed when converting the varchar value 'CURSO DE BANCO DE DADOS' to data type int.*/

/* FUN��ES DE CONVERS�O DE DADOS */

SELECT 1 + '1';  /* CONCATENA��O */
GO

SELECT '1' + '1';
/* 11 */

SELECT CAST('1' AS INT) + CAST('1' AS INTEGER)
GO
/* 2 */


/* CONVERS�O E CONCATENA��O */
https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-type-conversion-database-engine?view=sql-server-ver16


/* FORMATO AMERICANO */
SELECT NOME,
			  DATANASCIMENTO
FROM TBL_ALUNO;

SELECT NOME,
		      DAY(DATANASCIMENTO) AS "DIA"
FROM TBL_ALUNO;


/* FORMATO BRASILEIRO */
SELECT NOME,
              DAY(DATANASCIMENTO) + '/' + MONTH(DATANASCIMENTO) + '/' + YEAR(DATANASCIMENTO)
FROM TBL_ALUNO
GO
/* Conversion failed when converting the varchar value '/' to data type int. */

SELECT NOME,
              CAST( DAY(DATANASCIMENTO) AS VARCHAR ) +  '/'  +
			  CAST( MONTH(DATANASCIMENTO) AS VARCHAR ) +  '/'  +
			  CAST( YEAR(DATANASCIMENTO) AS VARCHAR ) AS "DATA NASCIMENTO"
FROM TBL_ALUNO
GO

/* =========================================================================*/
/* =========================================================================*/
/* =========================================================================*/

/* FUN��O CHARINDEX = RETORNA UM INTEIRO, BASEADO EM UMA PROCURA FEITA EM UMA EXPRESS�O */

SELECT
	NOME, 
	CHARINDEX('OL', NOME) AS "INDICE"
FROM
	TBL_ALUNO;

/*
	NOME                     INDICE
VICTORIA SECRET	   0
DOLCE E. GABBANA   2
LOUIS VUITTON	       0
CHRISTIAN DIOR	       0
MARIA ROSA	           0
CACILDA NU	               0
DEBORA LINGERIE	   0
MARIO CUNHA	           0
SIMONE PAPATINHO   0
CARLA MELLO	           0
*/

SELECT
	NOME, 
	CHARINDEX('A', NOME, 5) AS "INDICE"
FROM
	TBL_ALUNO;
/*
	NOME                     INDICE
VICTORIA SECRET	     8
DOLCE E. GABBANA	11
LOUIS VUITTON	         0
CHRISTIAN DIOR	         8
MARIA ROSA	             5
CACILDA NU	                 7
DEBORA LINGERIE	     6
MARIO CUNHA	            11
SIMONE PAPATINHO	 9
CARLA MELLO	             5
*/