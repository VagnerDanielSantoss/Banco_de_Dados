
                   /* MODELAGEM BÁSICA */

SHOW DATABASES;

SHOW TABLES;

/* TABELA CLIENTE */

CLIENTE

NOME - CHARACTER(50)
CPF - NUMERIC(11)
EMAIL - CHARACTER(50)
SEXO - CHARACTER(1)
ENDERECO - CHARACTER(100)
DDD - NUMERIC(2)
TELEFONE - CHARACTER(10)

                   /* PROCESSOS DE MODELAGEM */

/* FASES */

/* Fases 01 e 02, geralmente são feitas pelo AD - Administrador de Dados
MODELAGEM CONCEITUAL -- Rascunho do que será o sistema, como será construído o sistema. Pode ser feito no word, notepad++, folha de papel, por exemplo.
MODELAGEM LÓGICA -- Tudo que foi feito na modelagem conceitual e "leva" para um programa, como por exemplo, o BrModelo, Workbench, StarUML. 

/* Fase 03, geralmente são feitas pelo DBA - Administrador de Banco de Dados e/ou AD - Administrador de Dados
MODELAGEM FÍSICA -- Scripts de Banco de Dados 

                /*Tipos de dados */

Todos os banos de dados possuem tipos que devem ser atribuidos aos dados de uma tabela.
Para caracteres literais, temos char e varchar, para números temos int e float, para
objetos como fotos e documentos, temos o blob, para textos extensos, temos o text. 
A disciplina de banco de dados é tão fantástica que ao entendermos o porque das coisas,
podemos iniciar já em modo avançado e um bom exemplo disso são os tipos. Há uma profissão
dentro da área que é a do analista de performance ou tuning, esse profissional é responsável
por analisar o banco de dados e deixá-lo mais rápido. Parece algo avançado, e é! Porém,
com alguas atitudes simples, podemos deixar o banco sem a necessidade de atuação desse profissional.

Cada caracter no banco de dados, vale 1 byte. Sendo assim, se eu entro com o dado JOÃO,
estou entrando com 4 bytes no meu banco. E o que isso tem a ver com a tiagem de tabelas?

O banco de dados funciona como um download de dados da internet. Se baixamos um arquivo de 1 giga,
temos um temo maior que o download de 50 megas, considerando a mesma velocidade de conexão.

Ao tiparmos uma tabela de modo errado ou displicente, vamos aumentar a quantidade de dados que 
será baixada do banco de dados, prolongando assim o tempo de resposta.

Uma comparacao bem didatica é o tipo char e varchar
A palavra var, vem de variant, em ingles, ou seja, que é dinâmica. Logo, vimos que 1 caracter
é igual a 1 byte. Vejamos então a tipagem:

                   /* TIPAGEM DE DADOS */

- VARCHAR
- CHAR
- DECIMAL
- NUMERIC
- INTEGER
- ENUM
- FLOAT
- DOUBLE

                   /* MODELAGEM FÍSICA */

/* CRIA O BANCO DE DADOS */

CREATE DATABASE PROJETO_CLIENTE;

/* MOSTRA OS BANCOS DE DADOS CRIADDOS*/

SHOW DATABASES;

/* INFORMA AO BANCO DE DADOS EM QUAL BANCO SERÁ MODELADO O SISTEMA */

USE PROJETO_CLIENTE;

/* CRIA A TABELA NO BANCO DE DADOS */

CREATE TABLE TBL_CLIENTE
(
    NOME VARCHAR(50),
    CPF VARCHAR(14),
    ENDERECO VARCHAR(60),
    EMAIL VARCHAR(50),
    DDD CHAR(2),
    TELEFONE VARCHAR(10),
    SEXO VARCHAR(9)
);

/* MOSTRA AS TABELAS CRIADAS NO BANCO DE DADOS */

SHOW TABLES;

/* MOSTRA OS ATRIBUTOS QUE A TABELA POSSUI */

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


                   /* SINTAXE BÁSICA DE INSERÇÃO - INSERT INTO TABELA... */

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO TBL_CLIENTE VALUES("JOAO FREITAS", "12345678910", "MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ", "joaofreitas@globo.com", "21", "999998877", "Masculino");

INSERT INTO TBL_CLIENTE VALUES("CELIA FAGUNDES", "12345678911", "RIACHUELO - CENTRO - RIO DE JANEIRO - RJ", "fagundescelia@gmail.com", "21", "32323256", "Feminino");

INSERT INTO TBL_CLIENTE VALUES("JORGE SANTOS", "12345678912", "OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG", "jorgesantos@gmail.com", "34", "987878714", "Masculino");

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO TBL_CLIENTE(NOME,SEXO,ENDERECO, DDD, TELEFONE,CPF, EMAIL) 
VALUES("LILIAN CAVALCANTE", "Feminino", "SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ", "21", "963258741", "12345678913", "lilliancavalcante@yahoo.com" );

INSERT INTO TBL_CLIENTE(NOME,SEXO,ENDERECO, DDD, TELEFONE,CPF, EMAIL) 
VALUES("PALOMA SANTOS", "Feminino", "AVENIDA DAS NACOES UNIDAS - MORUMBI - SÃO PAULO - SP", "11", "925252531", "12345678914", "santospaloma@gmail.com");

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO TBL_CLIENTE VALUES("ANA LUIZA", "12345678915", "PRESIDENTE ANTONIO CARLOS - CENTRO - SAO PAULO - SP", "analuiza@bol.com", "11", "36988963", "Feminino"),
                          ("CARLA CHAGAS", "12345678916", "SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG", "carlachagas@yahoo.com", "31", "987452135", "Feminino");
                          
INSERT INTO TBL_CLIENTE(NOME,SEXO,ENDERECO,DDD,TELEFONE,CPF, EMAIL) 
VALUES("CLARA NUNES", "Feminino", "SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ", "21", "25896345", NULL, NULL);

INSERT INTO TBL_CLIENTE(NOME,SEXO,ENDERECO,DDD,TELEFONE,CPF, EMAIL) 
VALUES("CLARA NUNES", "Feminino", "SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ", NULL, NULL, "12345678918", NULL);

INSERT INTO TBL_CLIENTE(NOME,SEXO,ENDERECO,DDD,TELEFONE,CPF, EMAIL) 
VALUES("DIOGO FRANCO", "Masculino", "RUA PAULO MACHADO DE CARVALHO - CENTRO - SÃO PAULO - SP", "11", NULL, "12345678919", NULL);

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

/* O COMANDO SELECT 
selecao; projecao e juncao
*/


SELECT NOW();  /* PROJEÇÃO */

SELECT * FROM TBL_CLIENTE;   /* PROJEÇÃO */

SELECT NOME, SEXO, CPF FROM TBL_CLIENTE;   /* PROJEÇÃO */


/* ALIAS DE COLUNAS */

SELECT NOW() AS Data_Hora;

SELECT NOME AS CLIENTE, SEXO, CPF FROM TBL_CLIENTE;

/* FILTRA OS DADOS DE RETORNO */

SELECT NOME, SEXO, CPF 
FROM TBL_CLIENTE 
WHERE SEXO = "F";

/* NÃO IRÁ FUNCIONAR, O ENDEREÇO NÃO É COMPOSTO APENAS PELAS SIGLAS "RJ" */
SELECT NOME, ENDERECO
FROM TBL_CLIENTE
WHERE ENDERECO = "RJ" 


/* UTILIZA A CLÁUSULA "LIKE"  */

/* NÃO IRÁ FUNCIONAR, A CLÁUSULA "LIKE" TRABALHA COM UM CARACTER CURINGA (%) */
SELECT NOME, ENDERECO 
FROM TBL_CLIENTE
WHERE ENDERECO LIKE "RJ";

SELECT NOME, ENDERECO 
FROM TBL_CLIENTE 
WHERE ENDERECO LIKE "%RJ"

SELECT NOME, ENDERECO 
FROM TBL_CLIENTE 
WHERE ENDERECO LIKE "%CENTRO%"

SELECT NOME, ENDERECO 
FROM TBL_CLIENTE 
WHERE ENDERECO LIKE "SOARES%"

SELECT NOME, ENDERECO 
FROM TBL_CLIENTE 
WHERE ENDERECO LIKE "%_____SOARES_____%"
