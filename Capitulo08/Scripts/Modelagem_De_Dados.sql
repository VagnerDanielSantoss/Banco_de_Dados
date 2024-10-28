
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

	RELACIONAMENTO 1 X 1 = A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA ("menos importante entre duas");
	RELACIONAMENTO 1 X N = A CHAVE ESTRANGEIRA FICA NA TABELA QUE POSSUA CARDINALIDADE "n";
*/

/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/

/* INSERÇÃO DE DADOS */

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

/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/

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













/* ===================================================================================================================================*/
/* ===================================================================================================================================*/
/* ===================================================================================================================================*/