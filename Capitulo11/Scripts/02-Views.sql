
/* Para uma campanha de produtos de beleza, o setor comercial solicitou um relatório com o NOME, EMAIL, TELEFONE CELULAR.
É necessário passar a query para gerar o relatório para o programador. */

SELECT CLIENTE.NOME, CLIENTE.EMAIL, TELEFONE.DDD, TELEFONE.NUMERO AS CELULAR
FROM CLIENTE
    INNER JOIN ENDERECO 
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    INNER JOIN TELEFONE 
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
+----------------------+--------------------------+------+-----------+
| NOME                 | EMAIL                    | DDD  | CELULAR   |
+----------------------+--------------------------+------+-----------+
| JOAO PAGINA          | joaopagina54@bol.com     | 31   | 32323210  |
| MARIA ANTONIETA      | maria antonieta@bol.com  | 41   | 999991113 |
| MARIA ANTONIETA      | maria antonieta@bol.com  | 41   | 357881147 |
| PALOMA NOBREZA       | palomanobreza@gmail.com  | 11   | 21478930  |
| PALOMA NOBREZA       | palomanobreza@gmail.com  | NULL | NULL      |
| CELIA RICA           | celiarica@ig.com         | 41   | 33333331  |
| CELIA RICA           | celiarica@ig.com         | NULL | NULL      |
| CACILDA COROTI       | cacildacoroti@bol.com    | 31   | 999991116 |
| CACILDA COROTI       | cacildacoroti@bol.com    | NULL | NULL      |
| LUCAS DO BREJO       | lucasbrejo@gmail.com     | 41   | 25881010  |
| ANA PERDIDA          | NULL                     | 11   | 999991115 |
| ANA PERDIDA          | NULL                     | 11   | 999991120 |
| CLARA CEU            | ceuclara@bol.com         | 21   | 999991112 |
| CLARA CEU            | ceuclara@bol.com         | 21   | 32323230  |
| CARLOS BUERO         | NULL                     | 51   | 35788899  |
| CARLOS BUERO         | NULL                     | 51   | 999999940 |
| CARLOS BUERO         | NULL                     | 51   | 35788899  |
| JORGE SARGETA        | NULL                     | 51   | 999991111 |
| FREDERICO ZUCKENBERG | NULL                     | 87   | 31313132  |
| FREDERICO ZUCKENBERG | NULL                     | 87   | 988887774 |
| FREDERICO ZUCKENBERG | NULL                     | 87   | 36981888  |
| FLAVIO JUNQUEIRA     | JUNQFLAVIO@IG.COM        | 87   | 21456321  |
| ANDRE RIBEIRO        | andrerib01@bol.com       | 21   | 25896314  |
| GIOVANA ANTONNIA     | antgiovanna@gmail.com    | 21   | 999887766 |
| KARLA CASSILDA       | casskarla@gmail.com      | 41   | 999999918 |
| KARLA CASSILDA       | casskarla@gmail.com      | 41   | 21456987  |
| DANIELE SAKAMOTO     | ssakamotodani@ig.com     | 41   | 974125789 |
| LORENA SAKAMOTO      | ssakamotolore@ig.com     | 11   | 974125896 |
| EDUARDO SAKAMOTO     | ssakamotoedu@ig.com      | 31   | 25874413  |
| ANTONIO BELUSCO      | antoniobelusco@gmail.com | 82   | 24789633  |
| ANTONIO BELUSCO      | antoniobelusco@gmail.com | 82   | 35689797  |
| ADRIANA CALCANHOTO   | NULL                     | 11   | 963258741 |
| JOICE CEU            | joiceu74@gmail.com       | 11   | 922113344 |
| JOICE CEU            | joiceu74@gmail.com       | 11   | 988775522 |
+----------------------+--------------------------+------+-----------+

SELECT CLIENTE.NOME, 
       IFNULL(CLIENTE.EMAIL, "Dado Indisponível"), 
       IFNULL(TELEFONE.DDD, "Dado Indisponível"), 
       IFNULL(TELEFONE.NUMERO, "Dado Indisponível")
FROM CLIENTE
    INNER JOIN ENDERECO 
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    INNER JOIN TELEFONE 
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
+----------------------+---------------------------------------------+--------------------------------------------+-----------------------------------------------+
| NOME                 | IFNULL(CLIENTE.EMAIL, "Dado Indisponível")  | IFNULL(TELEFONE.DDD, "Dado Indisponível")  | IFNULL(TELEFONE.NUMERO, "Dado Indisponível")  |
+----------------------+---------------------------------------------+--------------------------------------------+-----------------------------------------------+
| JOAO PAGINA          | joaopagina54@bol.com                        | 31                                         | 32323210                                      |
| MARIA ANTONIETA      | maria antonieta@bol.com                     | 41                                         | 999991113                                     |
| MARIA ANTONIETA      | maria antonieta@bol.com                     | 41                                         | 357881147                                     |
| PALOMA NOBREZA       | palomanobreza@gmail.com                     | 11                                         | 21478930                                      |
| PALOMA NOBREZA       | palomanobreza@gmail.com                     | Dado Indisponível                          | Dado Indisponível                             |
| CELIA RICA           | celiarica@ig.com                            | 41                                         | 33333331                                      |
| CELIA RICA           | celiarica@ig.com                            | Dado Indisponível                          | Dado Indisponível                             |
| CACILDA COROTI       | cacildacoroti@bol.com                       | 31                                         | 999991116                                     |
| CACILDA COROTI       | cacildacoroti@bol.com                       | Dado Indisponível                          | Dado Indisponível                             |
| LUCAS DO BREJO       | lucasbrejo@gmail.com                        | 41                                         | 25881010                                      |
| ANA PERDIDA          | Dado Indisponível                           | 11                                         | 999991115                                     |
| ANA PERDIDA          | Dado Indisponível                           | 11                                         | 999991120                                     |
| CLARA CEU            | ceuclara@bol.com                            | 21                                         | 999991112                                     |
| CLARA CEU            | ceuclara@bol.com                            | 21                                         | 32323230                                      |
| CARLOS BUERO         | Dado Indisponível                           | 51                                         | 35788899                                      |
| CARLOS BUERO         | Dado Indisponível                           | 51                                         | 999999940                                     |
| CARLOS BUERO         | Dado Indisponível                           | 51                                         | 35788899                                      |
| JORGE SARGETA        | Dado Indisponível                           | 51                                         | 999991111                                     |
| FREDERICO ZUCKENBERG | Dado Indisponível                           | 87                                         | 31313132                                      |
| FREDERICO ZUCKENBERG | Dado Indisponível                           | 87                                         | 988887774                                     |
| FREDERICO ZUCKENBERG | Dado Indisponível                           | 87                                         | 36981888                                      |
| FLAVIO JUNQUEIRA     | JUNQFLAVIO@IG.COM                           | 87                                         | 21456321                                      |
| ANDRE RIBEIRO        | andrerib01@bol.com                          | 21                                         | 25896314                                      |
| GIOVANA ANTONNIA     | antgiovanna@gmail.com                       | 21                                         | 999887766                                     |
| KARLA CASSILDA       | casskarla@gmail.com                         | 41                                         | 999999918                                     |
| KARLA CASSILDA       | casskarla@gmail.com                         | 41                                         | 21456987                                      |
| DANIELE SAKAMOTO     | ssakamotodani@ig.com                        | 41                                         | 974125789                                     |
| LORENA SAKAMOTO      | ssakamotolore@ig.com                        | 11                                         | 974125896                                     |
| EDUARDO SAKAMOTO     | ssakamotoedu@ig.com                         | 31                                         | 25874413                                      |
| ANTONIO BELUSCO      | antoniobelusco@gmail.com                    | 82                                         | 24789633                                      |
| ANTONIO BELUSCO      | antoniobelusco@gmail.com                    | 82                                         | 35689797                                      |
| ADRIANA CALCANHOTO   | Dado Indisponível                           | 11                                         | 963258741                                     |
| JOICE CEU            | joiceu74@gmail.com                          | 11                                         | 922113344                                     |
| JOICE CEU            | joiceu74@gmail.com                          | 11                                         | 988775522                                     |
+----------------------+---------------------------------------------+--------------------------------------------+-----------------------------------------------+

SELECT IFNULL(CLIENTE.NOME, "Dado Indisponível") AS NOME, 
       IFNULL(CLIENTE.EMAIL, "Dado Indisponível") AS EMAIL, 
       IFNULL(TELEFONE.DDD, "Dado Indisponível") AS DDD, 
       IFNULL(TELEFONE.NUMERO, "Dado Indisponível") AS CELULAR
FROM CLIENTE
    INNER JOIN ENDERECO 
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    INNER JOIN TELEFONE 
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
+----------------------+--------------------------+--------------------+--------------------+
| NOME                 | EMAIL                    | DDD                | CELULAR            |
+----------------------+--------------------------+--------------------+--------------------+
| JOAO PAGINA          | joaopagina54@bol.com     | 31                 | 32323210           |
| MARIA ANTONIETA      | maria antonieta@bol.com  | 41                 | 999991113          |
| MARIA ANTONIETA      | maria antonieta@bol.com  | 41                 | 357881147          |
| PALOMA NOBREZA       | palomanobreza@gmail.com  | 11                 | 21478930           |
| PALOMA NOBREZA       | palomanobreza@gmail.com  | Dado Indisponível  | Dado Indisponível  |
| CELIA RICA           | celiarica@ig.com         | 41                 | 33333331           |
| CELIA RICA           | celiarica@ig.com         | Dado Indisponível  | Dado Indisponível  |
| CACILDA COROTI       | cacildacoroti@bol.com    | 31                 | 999991116          |
| CACILDA COROTI       | cacildacoroti@bol.com    | Dado Indisponível  | Dado Indisponível  |
| LUCAS DO BREJO       | lucasbrejo@gmail.com     | 41                 | 25881010           |
| ANA PERDIDA          | Dado Indisponível        | 11                 | 999991115          |
| ANA PERDIDA          | Dado Indisponível        | 11                 | 999991120          |
| CLARA CEU            | ceuclara@bol.com         | 21                 | 999991112          |
| CLARA CEU            | ceuclara@bol.com         | 21                 | 32323230           |
| CARLOS BUERO         | Dado Indisponível        | 51                 | 35788899           |
| CARLOS BUERO         | Dado Indisponível        | 51                 | 999999940          |
| CARLOS BUERO         | Dado Indisponível        | 51                 | 35788899           |
| JORGE SARGETA        | Dado Indisponível        | 51                 | 999991111          |
| FREDERICO ZUCKENBERG | Dado Indisponível        | 87                 | 31313132           |
| FREDERICO ZUCKENBERG | Dado Indisponível        | 87                 | 988887774          |
| FREDERICO ZUCKENBERG | Dado Indisponível        | 87                 | 36981888           |
| FLAVIO JUNQUEIRA     | JUNQFLAVIO@IG.COM        | 87                 | 21456321           |
| ANDRE RIBEIRO        | andrerib01@bol.com       | 21                 | 25896314           |
| GIOVANA ANTONNIA     | antgiovanna@gmail.com    | 21                 | 999887766          |
| KARLA CASSILDA       | casskarla@gmail.com      | 41                 | 999999918          |
| KARLA CASSILDA       | casskarla@gmail.com      | 41                 | 21456987           |
| DANIELE SAKAMOTO     | ssakamotodani@ig.com     | 41                 | 974125789          |
| LORENA SAKAMOTO      | ssakamotolore@ig.com     | 11                 | 974125896          |
| EDUARDO SAKAMOTO     | ssakamotoedu@ig.com      | 31                 | 25874413           |
| ANTONIO BELUSCO      | antoniobelusco@gmail.com | 82                 | 24789633           |
| ANTONIO BELUSCO      | antoniobelusco@gmail.com | 82                 | 35689797           |
| ADRIANA CALCANHOTO   | Dado Indisponível        | 11                 | 963258741          |
| JOICE CEU            | joiceu74@gmail.com       | 11                 | 922113344          |
| JOICE CEU            | joiceu74@gmail.com       | 11                 | 988775522          |
+----------------------+--------------------------+--------------------+--------------------+

/* ========================================================================================================================================= */
/* ========================================================================================================================================= */

SELECT CLIENTE.NOME, 
       CLIENTE.SEXO, 
       CLIENTE.EMAIL,
       TELEFONE.DDD, 
       TELEFONE.NUMERO, 
       TELEFONE.TIPO,
       ENDERECO.BAIRRO, 
       ENDERECO.CIDADE, 
       ENDERECO.ESTADO
 FROM CLIENTE 
 	INNER JOIN ENDERECO
 	ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
 	INNER JOIN TELEFONE
 	ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
+----------------------+------+--------------------------+------+-----------+-------------+-----------------+----------------+--------+
| NOME                 | SEXO | EMAIL                    | DDD  | NUMERO    | TIPO        | BAIRRO          | CIDADE         | ESTADO |
+----------------------+------+--------------------------+------+-----------+-------------+-----------------+----------------+--------+
| JOAO PAGINA          | M    | joaopagina54@bol.com     | 31   | 32323210  | RESIDENCIAL | TULIPAS         | CONFINS        | MG     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41   | 999991113 | CELULAR     | FLORES LINDAS   | CURITIBA       | PR     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41   | 357881147 | COMERCIAL   | FLORES LINDAS   | CURITIBA       | PR     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | 11   | 21478930  | COMERCIAL   | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | NULL | NULL      | NULL        | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CELIA RICA           | F    | celiarica@ig.com         | 41   | 33333331  | COMERCIAL   | FLORES DO CAMPO | CURITIBA       | PR     |
| CELIA RICA           | F    | celiarica@ig.com         | NULL | NULL      | NULL        | FLORES DO CAMPO | CURITIBA       | PR     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | 31   | 999991116 | CELULAR     | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | NULL | NULL      | NULL        | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| LUCAS DO BREJO       | M    | lucasbrejo@gmail.com     | 41   | 25881010  | RESIDENCIAL | FLORES LINDAS   | CURITIBA       | PR     |
| ANA PERDIDA          | F    | NULL                     | 11   | 999991115 | CELULAR     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| ANA PERDIDA          | F    | NULL                     | 11   | 999991120 | CELULAR     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21   | 999991112 | CELULAR     | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21   | 32323230  | COMERCIAL   | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CARLOS BUERO         | M    | NULL                     | 51   | 35788899  | COMERCIAL   | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | NULL                     | 51   | 999999940 | CELULAR     | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | NULL                     | 51   | 35788899  | RESIDENCIAL | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| JORGE SARGETA        | M    | NULL                     | 51   | 999991111 | CELULAR     | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| FREDERICO ZUCKENBERG | M    | NULL                     | 87   | 31313132  | RESIDENCIAL | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | NULL                     | 87   | 988887774 | CELULAR     | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | NULL                     | 87   | 36981888  | COMERCIAL   | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FLAVIO JUNQUEIRA     | M    | JUNQFLAVIO@IG.COM        | 87   | 21456321  | RESIDENCIAL | CENTRO          | PERNAMBUCO     | PE     |
| ANDRE RIBEIRO        | M    | andrerib01@bol.com       | 21   | 25896314  | RESIDENCIAL | ESTACIO         | RIO DE JANEIRO | RJ     |
| GIOVANA ANTONNIA     | F    | antgiovanna@gmail.com    | 21   | 999887766 | CELULAR     | LEBLON          | RIO DE JANEIRO | RJ     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41   | 999999918 | CELULAR     | BOM RETIRO      | CURITIBA       | PR     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41   | 21456987  | COMERCIAL   | BOM RETIRO      | CURITIBA       | PR     |
| DANIELE SAKAMOTO     | F    | ssakamotodani@ig.com     | 41   | 974125789 | CELULAR     | CENTRO          | CURITIBA       | PR     |
| LORENA SAKAMOTO      | F    | ssakamotolore@ig.com     | 11   | 974125896 | CELULAR     | JARDINS         | SAO PAULO      | SP     |
| EDUARDO SAKAMOTO     | M    | ssakamotoedu@ig.com      | 31   | 25874413  | COMERCIAL   | CASCADURA       | BELO HORIZONTE | MG     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82   | 24789633  | RESIDENCIAL | CENTRO          | ALAGOAS        | AL     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82   | 35689797  | COMERCIAL   | CENTRO          | ALAGOAS        | AL     |
| ADRIANA CALCANHOTO   | F    | NULL                     | 11   | 963258741 | CELULAR     | JARDINS         | SÃO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11   | 922113344 | CELULAR     | LAPA            | SAO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11   | 988775522 | CELULAR     | LAPA            | SAO PAULO      | SP     |
+----------------------+------+--------------------------+------+-----------+-------------+-----------------+----------------+--------+


                   /* ========== VIEW ========== */

/* CRIA UMA VIEW */

CREATE VIEW RELATORIO AS 
SELECT CLIENTE.NOME, 
       CLIENTE.SEXO, 
       CLIENTE.EMAIL,
       TELEFONE.DDD, 
       TELEFONE.NUMERO, 
       TELEFONE.TIPO,
       ENDERECO.BAIRRO, 
       ENDERECO.CIDADE, 
       ENDERECO.ESTADO
 FROM CLIENTE 
 	INNER JOIN ENDERECO
 	ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
 	INNER JOIN TELEFONE
 	ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

/* COMO UTILIZAR A VIEW */

SELECT * FROM RELATORIO;
+----------------------+------+--------------------------+------+-----------+-------------+-----------------+----------------+--------+
| NOME                 | SEXO | EMAIL                    | DDD  | NUMERO    | TIPO        | BAIRRO          | CIDADE         | ESTADO |
+----------------------+------+--------------------------+------+-----------+-------------+-----------------+----------------+--------+
| JOAO PAGINA          | M    | joaopagina54@bol.com     | 31   | 32323210  | RESIDENCIAL | TULIPAS         | CONFINS        | MG     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41   | 999991113 | CELULAR     | FLORES LINDAS   | CURITIBA       | PR     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41   | 357881147 | COMERCIAL   | FLORES LINDAS   | CURITIBA       | PR     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | 11   | 21478930  | COMERCIAL   | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | NULL | NULL      | NULL        | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CELIA RICA           | F    | celiarica@ig.com         | 41   | 33333331  | COMERCIAL   | FLORES DO CAMPO | CURITIBA       | PR     |
| CELIA RICA           | F    | celiarica@ig.com         | NULL | NULL      | NULL        | FLORES DO CAMPO | CURITIBA       | PR     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | 31   | 999991116 | CELULAR     | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | NULL | NULL      | NULL        | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| LUCAS DO BREJO       | M    | lucasbrejo@gmail.com     | 41   | 25881010  | RESIDENCIAL | FLORES LINDAS   | CURITIBA       | PR     |
| ANA PERDIDA          | F    | NULL                     | 11   | 999991115 | CELULAR     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| ANA PERDIDA          | F    | NULL                     | 11   | 999991120 | CELULAR     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21   | 999991112 | CELULAR     | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21   | 32323230  | COMERCIAL   | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CARLOS BUERO         | M    | NULL                     | 51   | 35788899  | COMERCIAL   | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | NULL                     | 51   | 999999940 | CELULAR     | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | NULL                     | 51   | 35788899  | RESIDENCIAL | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| JORGE SARGETA        | M    | NULL                     | 51   | 999991111 | CELULAR     | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| FREDERICO ZUCKENBERG | M    | NULL                     | 87   | 31313132  | RESIDENCIAL | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | NULL                     | 87   | 988887774 | CELULAR     | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | NULL                     | 87   | 36981888  | COMERCIAL   | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FLAVIO JUNQUEIRA     | M    | JUNQFLAVIO@IG.COM        | 87   | 21456321  | RESIDENCIAL | CENTRO          | PERNAMBUCO     | PE     |
| ANDRE RIBEIRO        | M    | andrerib01@bol.com       | 21   | 25896314  | RESIDENCIAL | ESTACIO         | RIO DE JANEIRO | RJ     |
| GIOVANA ANTONNIA     | F    | antgiovanna@gmail.com    | 21   | 999887766 | CELULAR     | LEBLON          | RIO DE JANEIRO | RJ     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41   | 999999918 | CELULAR     | BOM RETIRO      | CURITIBA       | PR     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41   | 21456987  | COMERCIAL   | BOM RETIRO      | CURITIBA       | PR     |
| DANIELE SAKAMOTO     | F    | ssakamotodani@ig.com     | 41   | 974125789 | CELULAR     | CENTRO          | CURITIBA       | PR     |
| LORENA SAKAMOTO      | F    | ssakamotolore@ig.com     | 11   | 974125896 | CELULAR     | JARDINS         | SAO PAULO      | SP     |
| EDUARDO SAKAMOTO     | M    | ssakamotoedu@ig.com      | 31   | 25874413  | COMERCIAL   | CASCADURA       | BELO HORIZONTE | MG     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82   | 24789633  | RESIDENCIAL | CENTRO          | ALAGOAS        | AL     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82   | 35689797  | COMERCIAL   | CENTRO          | ALAGOAS        | AL     |
| ADRIANA CALCANHOTO   | F    | NULL                     | 11   | 963258741 | CELULAR     | JARDINS         | SÃO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11   | 922113344 | CELULAR     | LAPA            | SAO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11   | 988775522 | CELULAR     | LAPA            | SAO PAULO      | SP     |
+----------------------+------+--------------------------+------+-----------+-------------+-----------------+----------------+--------+

SELECT NOME, SEXO, CIDADE 
FROM RELATORIO;
+----------------------+------+----------------+
| NOME                 | SEXO | CIDADE         |
+----------------------+------+----------------+
| JOAO PAGINA          | M    | CONFINS        |
| MARIA ANTONIETA      | F    | CURITIBA       |
| MARIA ANTONIETA      | F    | CURITIBA       |
| PALOMA NOBREZA       | F    | SÃO PAULO      |
| PALOMA NOBREZA       | F    | SÃO PAULO      |
| CELIA RICA           | F    | CURITIBA       |
| CELIA RICA           | F    | CURITIBA       |
| CACILDA COROTI       | F    | BELO HORIZONTE |
| CACILDA COROTI       | F    | BELO HORIZONTE |
| LUCAS DO BREJO       | M    | CURITIBA       |
| ANA PERDIDA          | F    | SÃO PAULO      |
| ANA PERDIDA          | F    | SÃO PAULO      |
| CLARA CEU            | F    | RIO DE JANEIRO |
| CLARA CEU            | F    | RIO DE JANEIRO |
| CARLOS BUERO         | M    | PORTO ALEGRE   |
| CARLOS BUERO         | M    | PORTO ALEGRE   |
| CARLOS BUERO         | M    | PORTO ALEGRE   |
| JORGE SARGETA        | M    | PORTO ALEGRE   |
| FREDERICO ZUCKENBERG | M    | PERNAMBUCO     |
| FREDERICO ZUCKENBERG | M    | PERNAMBUCO     |
| FREDERICO ZUCKENBERG | M    | PERNAMBUCO     |
| FLAVIO JUNQUEIRA     | M    | PERNAMBUCO     |
| ANDRE RIBEIRO        | M    | RIO DE JANEIRO |
| GIOVANA ANTONNIA     | F    | RIO DE JANEIRO |
| KARLA CASSILDA       | F    | CURITIBA       |
| KARLA CASSILDA       | F    | CURITIBA       |
| DANIELE SAKAMOTO     | F    | CURITIBA       |
| LORENA SAKAMOTO      | F    | SAO PAULO      |
| EDUARDO SAKAMOTO     | M    | BELO HORIZONTE |
| ANTONIO BELUSCO      | M    | ALAGOAS        |
| ANTONIO BELUSCO      | M    | ALAGOAS        |
| ADRIANA CALCANHOTO   | F    | SÃO PAULO      |
| JOICE CEU            | F    | SAO PAULO      |
| JOICE CEU            | F    | SAO PAULO      |
+----------------------+------+----------------+

SHOW DATABASES; /* MOSTRA OS BANCOS CRIADOS */
SHOW TABLES; /* MOSTRA AS TABELAS CRIADAS EM UM DETERMINADO BANCO QUE ESTEJA CONECTADO */

SHOW TABLES; /* MOSTRA INCLUSIVE AS "VIEWS" CRIADAS NESTE BANCO - NÃO EXISTE O COMANDO "SHOW VIEWS" */
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| relatorio          |
| telefone           |
+--------------------+

DROP VIEW RELATORIO; /* APAGA A VIEW DO BANCO */
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
+--------------------+

/* IDENTIFICA UMA VIEW NO BANCO */
/* UMA VIEW PERDE UM POUCO DE PERFORMANCE PORQUE ESTÁ APONTANDO PARA UMA QUERY QUE ESTÁ APONTANDO PARA UMA TABELA */

CREATE VIEW VIEW_RELATORIO AS 
SELECT IFNULL(CLIENTE.NOME, "Indisponível") AS "NOME",
       IFNULL(CLIENTE.SEXO, "Indisponível") AS "SEXO",
       IFNULL(CLIENTE.EMAIL, "Indisponível") AS "E-MAIL",
       IFNULL(TELEFONE.DDD, "Indisponível") AS "DDD",
       IFNULL(TELEFONE.NUMERO, "Indisponível") AS "NUMERO",
       IFNULL(TELEFONE.TIPO, "Indisponível") AS "TIPO",
       IFNULL(ENDERECO.BAIRRO, "Indisponível") AS "BAIRRO",
       IFNULL(ENDERECO.CIDADE, "Indisponível") AS "CIDADE",
       IFNULL(ENDERECO.ESTADO, "Indisponível") AS "ESTADO"
 FROM CLIENTE 
 	INNER JOIN ENDERECO
 	ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
 	INNER JOIN TELEFONE
 	ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;


SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
| view_relatorio     |
+--------------------+
