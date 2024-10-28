
/*  HISTORIA DA MODELAGEM 

DECADA DE 70, EUA - CRISE DO SOFTWARE
FOI A CRISE QUE ATINGIU NAO SOMENTE A AREA DE TECNOLOGIA
MAS TAMBÉM TODAS AS EMPRESAS QUE UTILIZAVAM DE SISTEMAS
TECNOLOGICOS PARA CONTROLAR SEUS NEGOCIOS.

NAQUELA EPOCA, PROGRAMAR ERA UM PROCESSO ARTESANAL.
BASTAVA OLHAR O CODIGO QUE VOCE SABERIA QUEM O
ESCREVEU, TAO POUCOS ERAM OS PROGRAMADORES EACHTAO ARCAICO ERAM
OS METODOS DE PROGRAMACAO. EM UM PRIMEIRO MOMENTO,
OS PROFISSIONAIS DE TI VIRAM A NECESSIDADE DE SE PROGRAMAR
E INICIARAM SUA CAMINHADA, CONSTRUINDO SISTEMAS QUE ATENDIAM
NUM PRIMEIRO MOMENTO, MAS DEPOIS TRAZIAM INFORMACOES ERRADAS,
PROVOCANDO A FALENCIA DE DIVERSAS EMPRESAS. LEMBRE-SE: INFORMACOES
ERRADAS PODEM LEVAR A SUA EMPRESA A FALENCIA, E FOI ISSO QUE ACONTECEU.
ISSO OCORRIA POIS OS PROFISSIONAIS SABIAM PROGRAMAR MAS ENTENDIAM APENAS
DO NEGOCIO DAS EMPRESAS DAS QUAIS FAZIAM PARTE. SER TER O KNOW HOW
DOS DEMAIS NEGOCIOS, OS PROGRAMADORES PROGRAMAVAM VOLTADOS PARA OS
PROCEDIMENTOS, E ESSE FOI UM ERRO MORTAL.

PETER CHEN, VENDO TODO ESSE CENARIO AFIRMOU: NAO PODEMOS CRIAR BANCOS
DE DADOS VOLTADOS PARA PROCEDIMENTOS EMPRESARIAIS, POIS OS PROCEDIMENTOS
SOFREM INTERFERENCIAS EXTERNAS E PODEM SER ALTERADOS. A UNICA COISA
QUE NAO SOFRE ALTERACAO SAO OS DADOS.

POR EXEMPLO, ARMAZENAMOS NO BANCO A VENDA DE JANEIRO, FEVEREIRO E MARCO
O TOTAL DAS VENDAS E O IMPOSTO PAGO AO GOVERNO. 
FAZEMOS ISSO DURANTE MUITO TEMPO. DE UMA HORA PRA OUTRA O GOVERNO
MUDA A ALIQUOTA DO IMPOSTO. COMO FARÁ SENTIDO OS PAGAMENTOS ARMAZENADOS
ANTERIORMENTE? AQUI NOTA-SE QUE ARMAZENAMOS DADOS E ARMAZENAMOS
INFORMACOES CORRESPONDENTES AOS PROCEDIMENTOS EXTERNOS. DEVEMOS
APENAS ARMAZENAR OS DADOS, POIS ELES SAO SUFICIENTES PARA GERAR
A INFORMACAO.

MODELAR É UMA ARTE, ALGO QUE SE APRENDE COM A PRATICA. E VOCES PODEM
SE PERGUNTAR: MAS SE É ALGO QUE SE APRENDE COM A PRATICA, COMO QUEM
ESTA COMEÇANDO, APRENDE?

ASSIM COMO PETER CHEN CRIOU O MODELO DE ENTIDADE E RELACIONAMENTO, O MER,
FORAM CRIADAS FORMAS NORMAIS, QUE SAO DIRETRIZES PARA APLICAR EM
MODELAGEM DE AMBIENTES OLTP OU AMBIENTES TRANSACIONAIS DE BANCOS
DE DADOS.

HOJE TEMOS MAIS DO QUE 3 FORMAS NORMAIS, MAS AO NORMALIZARMOS UM
BANCO ATE A SUA TERCEIRA FORMA, É O SUFICIENTE PARA TER UM
TRABALHO LIMPO E LIVRE DE ERROS. VEREMOS AS TRES FORMAS NORMAIS,
UMA A UMA, DETALHADAMENTE NAS PROXIMAS AULAS.
*/


/* PRIMEIRA FORMA NORMAL

1 - TODO CAMPO VETORIZADO SE TORNARA OUTRA TABELA;
[AZUL, ROSA, VERDE, BRANCO, PRETO, ROXO] = 1 VETOR MESMA COMPOSIÇÃO (CORES)

2 - TODO CAMPO MULTIVALORADO (QUANDO O CAMPO FOR DIVISIVEL) SE TORNARA OUTRA TABELA; 
     RUA / AVENIDA    , NÚMERO,     BAIRRO       , CIDADE   , ESTADO
[RUA DAS FLORES LINDAS, 1000  , FLORES SILVESTRES, SÃO PAULO, S.P.] = NÃO É VETOR, POIS NÃO SÃO DA MESMA COMPOSIÇÃO (FAMÍLIA)

3 - TODA TABELA NECESSITA DE PELO MENOS 1 CAMPO QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO ÚNICO; 
    É CHAMADO DE CHAVE-PRIMARIA (PRIMARY KEY)
*/

/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/

/* CADINALIDADE */

/* QUEM DEFINE A CARDINALIDADE É A REGRA DE NEGOCIOS */

/* PRIMEIRO ALGARISMO - OBRIGATORIEDADE 
0 - NAO OBRIGATORIO
1 - OBRIGATORIO

SEGUNDO ALGARISMO - CARDINALIDADE
1 - MAXIMO DE UM
N - MAIS DE UM
*/

CREATE DATABASE COMERCIO;

SHOW DATABASES;
USE COMERCIO;
SHOW TABLES;

/* ===================================================================================================================================*/
/* COMO APAGAR UMA TABELA -- COM O MÁXIMO DE CUIDADO E NECESSIDADE

DROP TABLE nome_da_tabela;

*/
/* ===================================================================================================================================*/
CREATE TABLE CLIENTE
(
	IDCLIENTE INTEGER PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	CPF VARCHAR(15) NOT NULL UNIQUE,
	EMAIL VARCHAR(100) UNIQUE,
	SEXO ENUM("M", "F") NOT NULL
);

/* 
	TELEFONE NÃO É OBRIGATÓRIO (regra de negócio) 
	Cadastro de um ou mais é opcional 
*/
CREATE TABLE TELEFONE
(
	ID_CLIENTE INTEGER,
	IDTELEFONE INTEGER PRIMARY KEY AUTO_INCREMENT,
	DDD CHAR(2),
	NUMERO VARCHAR(10),
	TIPO ENUM("CELULAR", "COMERCIAL", "RESIDENCIAL"),
	
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);

/*
	CADASTRO DE ENDEREÇO É OBRIGATÓRIO (regra de negócio)
	Cadastro de apenas um endereço por cliente
*/
CREATE TABLE ENDERECO
(
	ID_CLIENTE INTEGER UNIQUE,
	IDENDERECO INTEGER PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(100) NOT NULL,
	BAIRRO VARCHAR(50) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);

/* O QUE É CHAVE ESTRANGEIRA (FOREIGN KEY) ?
   R: É A CHAVE PRIMÁRIA (PRIMARY KEY) DE UMA TABELA QUE VAI ATÉ A OUTRA TABELA PARA FAZER REFERÊNCIA ENTRE REGISTROS   
*/

/* CARDINALIDADE - RELACIONAMENTOS

	RELACIONAMENTO 1 X 1 = A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA ("menos importante entre as duas");
	RELACIONAMENTO 1 X N = A CHAVE ESTRANGEIRA FICA NA TABELA QUE POSSUA CARDINALIDADE "n";
*/

/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/

/* INSERÇÃO DE DADOS */

+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(100)  | NO   |     | NULL    |                |
| CPF       | varchar(15)   | NO   | UNI | NULL    |                |
| EMAIL     | varchar(100)  | YES  | UNI | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

/* INSERT ERRADO */
SHOW DATABASES;
INSERT INTO CLIENTE VALUES (NULL, "JOAO PAGINA", "12345678910", "M");
/* ESTÁ FALTANDO UMA COLUNA, O NÚMERO DE ARGUMENTOS NÃO BATEM */

/* INSERT CORRETO */
SHOW DATABASES;
INSERT INTO CLIENTE VALUES (NULL, "JOAO PAGINA", "12345678910", "joaopagina54@bol.com", "M");
/* ESTÁ CORRIGIDO A COLUNA, O NÚMERO DE ARGUMENTOS AGORA BATEM E ESTÃO NA ORDEM CORRETA PARA COLOCAR NO BANCO */

INSERT INTO CLIENTE VALUES (NULL, "JORGE SARGETA", "12345678911", NULL, "M");
INSERT INTO CLIENTE VALUES (NULL, "MARIA ANTONIETA", "12345678912", "maria antonieta@bol.com", "F");
INSERT INTO CLIENTE VALUES (NULL, "PALOMA NOBREZA", "12345678913", "palomanobreza@gmail.com", "F");
INSERT INTO CLIENTE VALUES (NULL, "CELIA RICA", "12345678914", "celiarica@ig.com", "F");
INSERT INTO CLIENTE VALUES (NULL, "CACILDA COROTI", "12345678915", "cacildacoroti@bol.com", "F");
INSERT INTO CLIENTE VALUES (NULL, "LUCAS DO BREJO", "12345678916", "lucasbrejo@gmail.com", "M");
INSERT INTO CLIENTE VALUES (NULL, "ANA PERDIDA", "12345678917", NULL, "F");
INSERT INTO CLIENTE VALUES (NULL, "CLARA CEU", "12345678918", "ceuclara@bol.com", "F");
INSERT INTO CLIENTE VALUES (NULL, "CARLOS BUERO", "12345678919", NULL, "M");

+-----------+-----------------+-------------+-------------------------+------+
| IDCLIENTE | NOME            | CPF         | EMAIL                   | SEXO |
+-----------+-----------------+-------------+-------------------------+------+
|         1 | JOAO PAGINA     | 12345678910 | joaopagina54@bol.com    | M    |
|         3 | MARIA ANTONIETA | 12345678912 | maria antonieta@bol.com | F    |
|         4 | PALOMA NOBREZA  | 12345678913 | palomanobreza@gmail.com | F    |
|         5 | CELIA RICA      | 12345678914 | celiarica@ig.com        | F    |
|         6 | CACILDA COROTI  | 12345678915 | cacildacoroti@bol.com   | F    |
|         7 | LUCAS DO BREJO  | 12345678916 | lucasbrejo@gmail.com    | M    |
|         8 | ANA PERDIDA     | 12345678917 | NULL                    | F    |
|         9 | CLARA CEU       | 12345678918 | ceuclara@bol.com        | F    |
|        10 | CARLOS BUERO    | 12345678919 | NULL                    | M    |
|        29 | JORGE SARGETA   | 12345678911 | NULL                    | M    |
+-----------+-----------------+-------------+-------------------------+------+
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/

/* INSERCÃO RELACIONAMENTO 1 X 1 */

/* DESC ENDERECO; */
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| ID_CLIENTE | int          | YES  | UNI | NULL    |                |
| IDENDERECO | int          | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(100) | NO   |     | NULL    |                |
| BAIRRO     | varchar(50)  | NO   |     | NULL    |                |
| CIDADE     | varchar(50)  | NO   |     | NULL    |                |
| ESTADO     | char(2)      | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

/* INSERÇÃO COM ERRO - A CHAVE FK NÃO EXISTE NA PK */
INSERT INTO ENDERECO VALUES (900, NULL, "RUA DAS MARGARIDAS LINDAS", "FLORES DO CAMPO", "BELO HORIZONTE", "MG");

/* SELECT * FROM ENDERECO; */

/* INSERÇÃO CORRETA DOS DADOS */
INSERT INTO ENDERECO VALUES (6, NULL, "RUA DAS MARGARIDAS LINDAS", "FLORES DO CAMPO", "BELO HORIZONTE", "MG");
INSERT INTO ENDERECO VALUES (10, NULL, "AVENIDA DOS LIRIOS", "COLORIDO NOVO", "PORTO ALEGRE", "RS");
INSERT INTO ENDERECO VALUES (4, NULL, "AVENIDA DAS ORQUIDIAS", "CAMPOS ELISEOS", "SÃO PAULO", "SP");
INSERT INTO ENDERECO VALUES (8, NULL, "AVENIDA DAS ORQUIDIAS", "CAMPOS ELISEOS", "SÃO PAULO", "SP");
INSERT INTO ENDERECO VALUES (9, NULL, "AVENIDA ROSA BRANCA", "FLORES DO CAMPO", "RIO DE JANEIRO", "RJ");
INSERT INTO ENDERECO VALUES (5, NULL, "RUA DAS SAMBAMBAIAS", "FLORES DO CAMPO", "CURITIBA", "PR");
INSERT INTO ENDERECO VALUES (1, NULL, "RUA DAS TULIPAS", "TULIPAS", "CONFINS", "MG");
INSERT INTO ENDERECO VALUES (29, NULL, "AVENIDA DOS GIRASOIS", "COLORIDO NOVO", "PORTO ALEGRE", "RS");
INSERT INTO ENDERECO VALUES (3, NULL, "RUA ROSA DO DESERTO", "FLORES LINDAS", "CURITIBA", "PR");
INSERT INTO ENDERECO VALUES (7, NULL, "AVENIDA BROMELIA", "FLORES LINDAS", "CURITIBA", "PR");

+------------+------------+---------------------------+-----------------+----------------+--------+
| ID_CLIENTE | IDENDERECO | RUA                       | BAIRRO          | CIDADE         | ESTADO |
+------------+------------+---------------------------+-----------------+----------------+--------+
|          6 |        902 | RUA DAS MARGARIDAS LINDAS | FLORES DO CAMPO | BELO HORIZONTE | MG     |
|         10 |        903 | AVENIDA DOS LIRIOS        | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
|          4 |        904 | AVENIDA DAS ORQUIDIAS     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
|          8 |        905 | AVENIDA DAS ORQUIDIAS     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
|          9 |        906 | AVENIDA ROSA BRANCA       | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
|          5 |        907 | RUA DAS SAMBAMBAIAS       | FLORES DO CAMPO | CURITIBA       | PR     |
|          1 |        908 | RUA DAS TULIPAS           | TULIPAS         | CONFINS        | MG     |
|         29 |        909 | AVENIDA DOS GIRASOIS      | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
|          3 |        910 | RUA ROSA DO DESERTO       | FLORES LINDAS   | CURITIBA       | PR     |
|          7 |        911 | AVENIDA BROMELIA          | FLORES LINDAS   | CURITIBA       | PR     |
+------------+------------+---------------------------+-----------------+----------------+--------+


/* NÃO PODE HAVER DOIS ENDEREÇOS PARA O MESMO CLIENTE CONFORME A REGRA DE NEGÓCIO DESTE MODELO 

INSERT INTO ENDERECO VALUES (7, NULL, "AVENIDA BROMELIA", "FLORES LINDAS", "CAMPO MOURAO", "PR");

mysql> INSERT INTO ENDERECO VALUES (7, NULL, "AVENIDA BROMELIA", "FLORES LINDAS", "CAMPO MOURAO", "PR");
ERROR 1062 (23000): Duplicate entry '7' for key 'endereco.ID_CLIENTE'
*/

/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/

/* INSERCÃO RELACIONAMENTO 1 X N */

/* DESC TELEFONE */

+------------+-------------------------------------------+------+-----+---------+----------------+
| Field      | Type                                      | Null | Key | Default | Extra          |
+------------+-------------------------------------------+------+-----+---------+----------------+
| ID_CLIENTE | int                                       | YES  | MUL | NULL    |                |
| IDTELEFONE | int                                       | NO   | PRI | NULL    | auto_increment |
| DDD        | char(2)                                   | YES  |     | NULL    |                |
| NUMERO     | varchar(10)                               | YES  |     | NULL    |                |
| TIPO       | enum('CELULAR','COMERCIAL','RESIDENCIAL') | YES  |     | NULL    |                |
+------------+-------------------------------------------+------+-----+---------+----------------+

/* SELECT * FROM CLIENTE; */

+-----------+-----------------+-------------+-------------------------+------+
| IDCLIENTE | NOME            | CPF         | EMAIL                   | SEXO |
+-----------+-----------------+-------------+-------------------------+------+
|         1 | JOAO PAGINA     | 12345678910 | joaopagina54@bol.com    | M    |
|         3 | MARIA ANTONIETA | 12345678912 | maria antonieta@bol.com | F    |
|         4 | PALOMA NOBREZA  | 12345678913 | palomanobreza@gmail.com | F    |
|         5 | CELIA RICA      | 12345678914 | celiarica@ig.com        | F    |
|         6 | CACILDA COROTI  | 12345678915 | cacildacoroti@bol.com   | F    |
|         7 | LUCAS DO BREJO  | 12345678916 | lucasbrejo@gmail.com    | M    |
|         8 | ANA PERDIDA     | 12345678917 | NULL                    | F    |
|         9 | CLARA CEU       | 12345678918 | ceuclara@bol.com        | F    |
|        10 | CARLOS BUERO    | 12345678919 | NULL                    | M    |
|        29 | JORGE SARGETA   | 12345678911 | NULL                    | M    |
+-----------+-----------------+-------------+-------------------------+------+

INSERT INTO TELEFONE VALUES (29, NULL, "51", "999991111", "CELULAR");
INSERT INTO TELEFONE VALUES (9, NULL, "21", "999991112", "CELULAR");
INSERT INTO TELEFONE VALUES (1, NULL, "31", "32323210", "RESIDENCIAL");
INSERT INTO TELEFONE VALUES (7, NULL, "41", "25881010", "RESIDENCIAL");
INSERT INTO TELEFONE VALUES (10, NULL, "51", "35788899", "COMERCIAL");
INSERT INTO TELEFONE VALUES (3, NULL, "41", "999991113", "CELULAR");
INSERT INTO TELEFONE VALUES (5, NULL, "41", "33333331", "COMERCIAL");
INSERT INTO TELEFONE VALUES (8, NULL, "11", "999991115", "CELULAR");
INSERT INTO TELEFONE VALUES (6, NULL, "31", "999991116", "CELULAR");
INSERT INTO TELEFONE VALUES (4, NULL, "11", "21478930", "COMERCIAL");
+------------+------------+------+-----------+-------------+
| ID_CLIENTE | IDTELEFONE | DDD  | NUMERO    | TIPO        |
+------------+------------+------+-----------+-------------+
|         29 |          1 | 51   | 999991111 | CELULAR     |
|          9 |          2 | 21   | 999991112 | CELULAR     |
|          1 |          3 | 31   | 32323210  | RESIDENCIAL |
|          7 |          4 | 41   | 25881010  | RESIDENCIAL |
|         10 |          5 | 51   | 35788899  | COMERCIAL   |
|          3 |          6 | 41   | 999991113 | CELULAR     |
|          5 |          7 | 41   | 33333331  | COMERCIAL   |
|          8 |          8 | 11   | 999991115 | CELULAR     |
|          6 |          9 | 31   | 999991116 | CELULAR     |
|          4 |         10 | 11   | 21478930  | COMERCIAL   |
+------------+------------+------+-----------+-------------+
INSERT INTO TELEFONE VALUES (9, NULL, "21", "32323230", "COMERCIAL");
INSERT INTO TELEFONE VALUES (8, NULL, "11", "999991120", "CELULAR");
INSERT INTO TELEFONE VALUES (10, NULL, "51", "999999940", "CELULAR");
INSERT INTO TELEFONE VALUES (10, NULL, "51", "35788899", "RESIDENCIAL");
INSERT INTO TELEFONE VALUES (3, NULL, "41", "357881147", "COMERCIAL");
+------------+------------+------+-----------+-------------+
| ID_CLIENTE | IDTELEFONE | DDD  | NUMERO    | TIPO        |
+------------+------------+------+-----------+-------------+
|         29 |          1 | 51   | 999991111 | CELULAR     |
|          9 |          2 | 21   | 999991112 | CELULAR     |
|          1 |          3 | 31   | 32323210  | RESIDENCIAL |
|          7 |          4 | 41   | 25881010  | RESIDENCIAL |
|         10 |          5 | 51   | 35788899  | COMERCIAL   |
|          3 |          6 | 41   | 999991113 | CELULAR     |
|          5 |          7 | 41   | 33333331  | COMERCIAL   |
|          8 |          8 | 11   | 999991115 | CELULAR     |
|          6 |          9 | 31   | 999991116 | CELULAR     |
|          4 |         10 | 11   | 21478930  | COMERCIAL   |
|          9 |         11 | 21   | 32323230  | COMERCIAL   |
|          8 |         12 | 11   | 999991120 | CELULAR     |
|         10 |         13 | 51   | 999999940 | CELULAR     |
|         10 |         14 | 51   | 35788899  | RESIDENCIAL |
|          3 |         15 | 41   | 357881147 | COMERCIAL   |
+------------+------------+------+-----------+-------------+
INSERT INTO TELEFONE VALUES (4, NULL, NULL, NULL, NULL);
INSERT INTO TELEFONE VALUES (5, NULL, NULL, NULL, NULL);
INSERT INTO TELEFONE VALUES (6, NULL, NULL, NULL, NULL);
+------------+------------+------+-----------+-------------+
| ID_CLIENTE | IDTELEFONE | DDD  | NUMERO    | TIPO        |
+------------+------------+------+-----------+-------------+
|         29 |          1 | 51   | 999991111 | CELULAR     |
|          9 |          2 | 21   | 999991112 | CELULAR     |
|          1 |          3 | 31   | 32323210  | RESIDENCIAL |
|          7 |          4 | 41   | 25881010  | RESIDENCIAL |
|         10 |          5 | 51   | 35788899  | COMERCIAL   |
|          3 |          6 | 41   | 999991113 | CELULAR     |
|          5 |          7 | 41   | 33333331  | COMERCIAL   |
|          8 |          8 | 11   | 999991115 | CELULAR     |
|          6 |          9 | 31   | 999991116 | CELULAR     |
|          4 |         10 | 11   | 21478930  | COMERCIAL   |
|          9 |         11 | 21   | 32323230  | COMERCIAL   |
|          8 |         12 | 11   | 999991120 | CELULAR     |
|         10 |         13 | 51   | 999999940 | CELULAR     |
|         10 |         14 | 51   | 35788899  | RESIDENCIAL |
|          3 |         15 | 41   | 357881147 | COMERCIAL   |
|          4 |         16 | NULL | NULL      | NULL        |
|          5 |         17 | NULL | NULL      | NULL        |
|          6 |         18 | NULL | NULL      | NULL        |
+------------+------------+------+-----------+-------------+
