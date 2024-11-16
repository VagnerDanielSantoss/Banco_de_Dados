
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
SELECT (CLIENTE.NOME),
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

DROP VIEW VIEW_RELATORIO;

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

/* ========================================================================================================================================= */
/* ========================================================================================================================================= */

                   /* DML (Data Manipulation Language) = INSERT, UPDATE, DELETE */


INSERT INTO VIEW_RELATORIO
VALUES ("VINICIUS CAMARGO", "F", "vinicius_camargo@bol.com", "27", "30303031", "COMERCIAL", "VILA VELHA", "ESPIRITO SANTO", "ES");
ERROR 1394 (HY000): Can not insert into join view 'comercio.view_relatorio' without fields list

INSERT INTO VIEW_RELATORIO
(NOME, SEXO, EMAIL, DDD, NUMERO, TIPO, BAIRRO, ESTADO, CIDADE)
VALUES ("VINICIUS CAMARGO", "F", "vinicius_camargo@bol.com", "27", "30303031", "COMERCIAL", "VILA VELHA", "ESPIRITO SANTO", "ES");
ERROR 1348 (HY000): Column 'NOME' is not updatable

DELETE FROM VIEW_RELATORIO WHERE NOME = "JOAO PAGINA";
ERROR 1395 (HY000): Can not delete from join view 'comercio.view_relatorio'

/* SOMENTE É PERMITIDO FAZER O UPDATE EM COLUNA QUE NÃO TENHA "ALIAS" NA COLUNA */
UPDATE VIEW_RELATORIO
SET NOME = "JOSE PAGINA" 
WHERE NOME = "JOAO PAGINA";


SELECT NOME FROM CLIENTE;
+----------------------+
| NOME                 |
+----------------------+
| JOSE PAGINA          |
| MARIA ANTONIETA      |
| PALOMA NOBREZA       |
| CELIA RICA           |
| CACILDA COROTI       |
| LUCAS DO BREJO       |
| ANA PERDIDA          |
| CLARA CEU            |
| CARLOS BUERO         |
| JORGE SARGETA        |
| FREDERICO ZUCKENBERG |
| FLAVIO JUNQUEIRA     |
| ANDRE RIBEIRO        |
| GIOVANA ANTONNIA     |
| KARLA CASSILDA       |
| DANIELE SAKAMOTO     |
| LORENA SAKAMOTO      |
| EDUARDO SAKAMOTO     |
| ANTONIO KISKROSKY    |
| ANTONIO BELUSCO      |
| ELAINE CARRARO       |
| CARMEM LUCIA         |
| ADRIANA CALCANHOTO   |
| JOICE CEU            |
+----------------------+


UPDATE VIEW_RELATORIO
SET TIPO = "COMERCIAL" 
WHERE NOME = "JOSE PAGINA";
ERROR 1348 (HY000): Column 'TIPO' is not updatable


SELECT * FROM VIEW_RELATORIO
WHERE SEXO = "F";
+--------------------+------+-------------------------+---------------+---------------+---------------+-----------------+----------------+--------+
| NOME               | SEXO | E-MAIL                  | DDD           | NUMERO        | TIPO          | BAIRRO          | CIDADE         | ESTADO |
+--------------------+------+-------------------------+---------------+---------------+---------------+-----------------+----------------+--------+
| MARIA ANTONIETA    | F    | maria antonieta@bol.com | 41            | 999991113     | CELULAR       | FLORES LINDAS   | CURITIBA       | PR     |
| MARIA ANTONIETA    | F    | maria antonieta@bol.com | 41            | 357881147     | COMERCIAL     | FLORES LINDAS   | CURITIBA       | PR     |
| PALOMA NOBREZA     | F    | palomanobreza@gmail.com | 11            | 21478930      | COMERCIAL     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| PALOMA NOBREZA     | F    | palomanobreza@gmail.com | Indisponível  | Indisponível  | Indisponível  | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CELIA RICA         | F    | celiarica@ig.com        | 41            | 33333331      | COMERCIAL     | FLORES DO CAMPO | CURITIBA       | PR     |
| CELIA RICA         | F    | celiarica@ig.com        | Indisponível  | Indisponível  | Indisponível  | FLORES DO CAMPO | CURITIBA       | PR     |
| CACILDA COROTI     | F    | cacildacoroti@bol.com   | 31            | 999991116     | CELULAR       | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| CACILDA COROTI     | F    | cacildacoroti@bol.com   | Indisponível  | Indisponível  | Indisponível  | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| ANA PERDIDA        | F    | Indisponível            | 11            | 999991115     | CELULAR       | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| ANA PERDIDA        | F    | Indisponível            | 11            | 999991120     | CELULAR       | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CLARA CEU          | F    | ceuclara@bol.com        | 21            | 999991112     | CELULAR       | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CLARA CEU          | F    | ceuclara@bol.com        | 21            | 32323230      | COMERCIAL     | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| GIOVANA ANTONNIA   | F    | antgiovanna@gmail.com   | 21            | 999887766     | CELULAR       | LEBLON          | RIO DE JANEIRO | RJ     |
| KARLA CASSILDA     | F    | casskarla@gmail.com     | 41            | 999999918     | CELULAR       | BOM RETIRO      | CURITIBA       | PR     |
| KARLA CASSILDA     | F    | casskarla@gmail.com     | 41            | 21456987      | COMERCIAL     | BOM RETIRO      | CURITIBA       | PR     |
| DANIELE SAKAMOTO   | F    | ssakamotodani@ig.com    | 41            | 974125789     | CELULAR       | CENTRO          | CURITIBA       | PR     |
| LORENA SAKAMOTO    | F    | ssakamotolore@ig.com    | 11            | 974125896     | CELULAR       | JARDINS         | SAO PAULO      | SP     |
| ADRIANA CALCANHOTO | F    | Indisponível            | 11            | 963258741     | CELULAR       | JARDINS         | SÃO PAULO      | SP     |
| JOICE CEU          | F    | joiceu74@gmail.com      | 11            | 922113344     | CELULAR       | LAPA            | SAO PAULO      | SP     |
| JOICE CEU          | F    | joiceu74@gmail.com      | 11            | 988775522     | CELULAR       | LAPA            | SAO PAULO      | SP     |
+--------------------+------+-------------------------+---------------+---------------+---------------+-----------------+----------------+--------+


/* ========================================================================================================================================= */
/* ========================================================================================================================================= */

                /* ========== CLÁUSULA ORDER BY ========== */

STATUS;

CREATE DATABASE ESCOLA;
+--------------------+
| Database           |
+--------------------+
| cliente            |
| comercio           |
| escola             |
| exercicio          |
| information_schema |
| livraria           |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+

CREATE TABLE ALUNOS
(
    NUMERO INT,
    NOME VARCHAR(50)
);
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| NUMERO | int         | YES  |     | NULL    |       |
| NOME   | varchar(50) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(1, "SIMONE SIMONS");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(2, "RICARDO CONFESSORI");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(3, "ANDRE MATOS");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(4, "MICHAEL KIESKE");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(5, "ELOY CASAGRANDE");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(6, "TARJA TURUNEN");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(7, "EMILY LEE");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(8, "AXL ROSE");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(9, "BRUCE DICKINSON");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(10, "MIKE PATTON");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(5, "SLASH");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(3, "OZZY OSBOURNE");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(8, "SAMMY HAGAR");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(2, "CHAD SMITH");

INSERT INTO ALUNOS
(NUMERO, NOME)
VALUES
(1, "ALESSANDRO VENTURELLA");


SELECT * FROM ALUNOS;
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | SIMONE SIMONS         |
|      2 | RICARDO CONFESSORI    |
|      3 | ANDRE MATOS           |
|      4 | MICHAEL KIESKE        |
|      5 | ELOY CASAGRANDE       |
|      6 | TARJA TURUNEN         |
|      7 | EMILY LEE             |
|      8 | AXL ROSE              |
|      9 | BRUCE DICKINSON       |
|     10 | MIKE PATTON           |
|      5 | SLASH                 |
|      3 | OZZY OSBOURNE         |
|      8 | SAMMY HAGAR           |
|      2 | CHAD SMITH            |
|      1 | ALESSANDRO VENTURELLA |
+--------+-----------------------+

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY NUMERO;
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | SIMONE SIMONS         |
|      1 | ALESSANDRO VENTURELLA |
|      2 | RICARDO CONFESSORI    |
|      2 | CHAD SMITH            |
|      3 | ANDRE MATOS           |
|      3 | OZZY OSBOURNE         |
|      4 | MICHAEL KIESKE        |
|      5 | ELOY CASAGRANDE       |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
|      7 | EMILY LEE             |
|      8 | AXL ROSE              |
|      8 | SAMMY HAGAR           |
|      9 | BRUCE DICKINSON       |
|     10 | MIKE PATTON           |
+--------+-----------------------+

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY 1; /* Também ordena por número, por ser a primeira coluna */
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | SIMONE SIMONS         |
|      1 | ALESSANDRO VENTURELLA |
|      2 | RICARDO CONFESSORI    |
|      2 | CHAD SMITH            |
|      3 | ANDRE MATOS           |
|      3 | OZZY OSBOURNE         |
|      4 | MICHAEL KIESKE        |
|      5 | ELOY CASAGRANDE       |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
|      7 | EMILY LEE             |
|      8 | AXL ROSE              |
|      8 | SAMMY HAGAR           |
|      9 | BRUCE DICKINSON       |
|     10 | MIKE PATTON           |
+--------+-----------------------+

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY 2; /* Ordena por NOME, pois é a segunda coluna */
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | ALESSANDRO VENTURELLA |
|      3 | ANDRE MATOS           |
|      8 | AXL ROSE              |
|      9 | BRUCE DICKINSON       |
|      2 | CHAD SMITH            |
|      5 | ELOY CASAGRANDE       |
|      7 | EMILY LEE             |
|      4 | MICHAEL KIESKE        |
|     10 | MIKE PATTON           |
|      3 | OZZY OSBOURNE         |
|      2 | RICARDO CONFESSORI    |
|      8 | SAMMY HAGAR           |
|      1 | SIMONE SIMONS         |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
+--------+-----------------------+

                   /* ORDENA POR MAIS DE UMA COLUNA */

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY 1; 
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | SIMONE SIMONS         |
|      1 | ALESSANDRO VENTURELLA |
|      2 | RICARDO CONFESSORI    |
|      2 | CHAD SMITH            |
|      3 | ANDRE MATOS           |
|      3 | OZZY OSBOURNE         |
|      4 | MICHAEL KIESKE        |
|      5 | ELOY CASAGRANDE       |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
|      7 | EMILY LEE             |
|      8 | AXL ROSE              |
|      8 | SAMMY HAGAR           |
|      9 | BRUCE DICKINSON       |
|     10 | MIKE PATTON           |
+--------+-----------------------+
SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY NUMERO, NOME;
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | ALESSANDRO VENTURELLA |
|      1 | SIMONE SIMONS         |
|      2 | CHAD SMITH            |
|      2 | RICARDO CONFESSORI    |
|      3 | ANDRE MATOS           |
|      3 | OZZY OSBOURNE         |
|      4 | MICHAEL KIESKE        |
|      5 | ELOY CASAGRANDE       |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
|      7 | EMILY LEE             |
|      8 | AXL ROSE              |
|      8 | SAMMY HAGAR           |
|      9 | BRUCE DICKINSON       |
|     10 | MIKE PATTON           |
+--------+-----------------------+

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY NUMERO DESC;
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|     10 | MIKE PATTON           |
|      9 | BRUCE DICKINSON       |
|      8 | AXL ROSE              |
|      8 | SAMMY HAGAR           |
|      7 | EMILY LEE             |
|      6 | TARJA TURUNEN         |
|      5 | ELOY CASAGRANDE       |
|      5 | SLASH                 |
|      4 | MICHAEL KIESKE        |
|      3 | ANDRE MATOS           |
|      3 | OZZY OSBOURNE         |
|      2 | RICARDO CONFESSORI    |
|      2 | CHAD SMITH            |
|      1 | SIMONE SIMONS         |
|      1 | ALESSANDRO VENTURELLA |
+--------+-----------------------+

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY NOME ASC;
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | ALESSANDRO VENTURELLA |
|      3 | ANDRE MATOS           |
|      8 | AXL ROSE              |
|      9 | BRUCE DICKINSON       |
|      2 | CHAD SMITH            |
|      5 | ELOY CASAGRANDE       |
|      7 | EMILY LEE             |
|      4 | MICHAEL KIESKE        |
|     10 | MIKE PATTON           |
|      3 | OZZY OSBOURNE         |
|      2 | RICARDO CONFESSORI    |
|      8 | SAMMY HAGAR           |
|      1 | SIMONE SIMONS         |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
+--------+-----------------------+

SELECT NUMERO, NOME 
FROM ALUNOS
ORDER BY NUMERO ASC, NOME ASC;
+--------+-----------------------+
| NUMERO | NOME                  |
+--------+-----------------------+
|      1 | ALESSANDRO VENTURELLA |
|      1 | SIMONE SIMONS         |
|      2 | CHAD SMITH            |
|      2 | RICARDO CONFESSORI    |
|      3 | ANDRE MATOS           |
|      3 | OZZY OSBOURNE         |
|      4 | MICHAEL KIESKE        |
|      5 | ELOY CASAGRANDE       |
|      5 | SLASH                 |
|      6 | TARJA TURUNEN         |
|      7 | EMILY LEE             |
|      8 | AXL ROSE              |
|      8 | SAMMY HAGAR           |
|      9 | BRUCE DICKINSON       |
|     10 | MIKE PATTON           |
+--------+-----------------------+


/* ORDENAÇÃO COM JOIN */


SELECT (CLIENTE.NOME),
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
+----------------------+------+--------------------------+---------------+---------------+---------------+-----------------+----------------+--------+
| NOME                 | SEXO | E-MAIL                   | DDD           | NUMERO        | TIPO          | BAIRRO          | CIDADE         | ESTADO |
+----------------------+------+--------------------------+---------------+---------------+---------------+-----------------+----------------+--------+
| JOSE PAGINA          | M    | joaopagina54@bol.com     | 31            | 32323210      | RESIDENCIAL   | TULIPAS         | CONFINS        | MG     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41            | 999991113     | CELULAR       | FLORES LINDAS   | CURITIBA       | PR     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41            | 357881147     | COMERCIAL     | FLORES LINDAS   | CURITIBA       | PR     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | 11            | 21478930      | COMERCIAL     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | Indisponível  | Indisponível  | Indisponível  | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CELIA RICA           | F    | celiarica@ig.com         | 41            | 33333331      | COMERCIAL     | FLORES DO CAMPO | CURITIBA       | PR     |
| CELIA RICA           | F    | celiarica@ig.com         | Indisponível  | Indisponível  | Indisponível  | FLORES DO CAMPO | CURITIBA       | PR     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | 31            | 999991116     | CELULAR       | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | Indisponível  | Indisponível  | Indisponível  | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| LUCAS DO BREJO       | M    | lucasbrejo@gmail.com     | 41            | 25881010      | RESIDENCIAL   | FLORES LINDAS   | CURITIBA       | PR     |
| ANA PERDIDA          | F    | Indisponível             | 11            | 999991115     | CELULAR       | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| ANA PERDIDA          | F    | Indisponível             | 11            | 999991120     | CELULAR       | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21            | 999991112     | CELULAR       | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21            | 32323230      | COMERCIAL     | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CARLOS BUERO         | M    | Indisponível             | 51            | 35788899      | COMERCIAL     | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | Indisponível             | 51            | 999999940     | CELULAR       | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | Indisponível             | 51            | 35788899      | RESIDENCIAL   | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| JORGE SARGETA        | M    | Indisponível             | 51            | 999991111     | CELULAR       | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| FREDERICO ZUCKENBERG | M    | Indisponível             | 87            | 31313132      | RESIDENCIAL   | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | Indisponível             | 87            | 988887774     | CELULAR       | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | Indisponível             | 87            | 36981888      | COMERCIAL     | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FLAVIO JUNQUEIRA     | M    | JUNQFLAVIO@IG.COM        | 87            | 21456321      | RESIDENCIAL   | CENTRO          | PERNAMBUCO     | PE     |
| ANDRE RIBEIRO        | M    | andrerib01@bol.com       | 21            | 25896314      | RESIDENCIAL   | ESTACIO         | RIO DE JANEIRO | RJ     |
| GIOVANA ANTONNIA     | F    | antgiovanna@gmail.com    | 21            | 999887766     | CELULAR       | LEBLON          | RIO DE JANEIRO | RJ     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41            | 999999918     | CELULAR       | BOM RETIRO      | CURITIBA       | PR     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41            | 21456987      | COMERCIAL     | BOM RETIRO      | CURITIBA       | PR     |
| DANIELE SAKAMOTO     | F    | ssakamotodani@ig.com     | 41            | 974125789     | CELULAR       | CENTRO          | CURITIBA       | PR     |
| LORENA SAKAMOTO      | F    | ssakamotolore@ig.com     | 11            | 974125896     | CELULAR       | JARDINS         | SAO PAULO      | SP     |
| EDUARDO SAKAMOTO     | M    | ssakamotoedu@ig.com      | 31            | 25874413      | COMERCIAL     | CASCADURA       | BELO HORIZONTE | MG     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82            | 24789633      | RESIDENCIAL   | CENTRO          | ALAGOAS        | AL     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82            | 35689797      | COMERCIAL     | CENTRO          | ALAGOAS        | AL     |
| ADRIANA CALCANHOTO   | F    | Indisponível             | 11            | 963258741     | CELULAR       | JARDINS         | SÃO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11            | 922113344     | CELULAR       | LAPA            | SAO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11            | 988775522     | CELULAR       | LAPA            | SAO PAULO      | SP     |
+----------------------+------+--------------------------+---------------+---------------+---------------+-----------------+----------------+--------+


SELECT (CLIENTE.NOME),
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
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE
ORDER BY NOME;
+----------------------+------+--------------------------+---------------+---------------+---------------+-----------------+----------------+--------+
| NOME                 | SEXO | E-MAIL                   | DDD           | NUMERO        | TIPO          | BAIRRO          | CIDADE         | ESTADO |
+----------------------+------+--------------------------+---------------+---------------+---------------+-----------------+----------------+--------+
| ADRIANA CALCANHOTO   | F    | Indisponível             | 11            | 963258741     | CELULAR       | JARDINS         | SÃO PAULO      | SP     |
| ANA PERDIDA          | F    | Indisponível             | 11            | 999991115     | CELULAR       | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| ANA PERDIDA          | F    | Indisponível             | 11            | 999991120     | CELULAR       | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| ANDRE RIBEIRO        | M    | andrerib01@bol.com       | 21            | 25896314      | RESIDENCIAL   | ESTACIO         | RIO DE JANEIRO | RJ     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82            | 35689797      | COMERCIAL     | CENTRO          | ALAGOAS        | AL     |
| ANTONIO BELUSCO      | M    | antoniobelusco@gmail.com | 82            | 24789633      | RESIDENCIAL   | CENTRO          | ALAGOAS        | AL     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | Indisponível  | Indisponível  | Indisponível  | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| CACILDA COROTI       | F    | cacildacoroti@bol.com    | 31            | 999991116     | CELULAR       | FLORES DO CAMPO | BELO HORIZONTE | MG     |
| CARLOS BUERO         | M    | Indisponível             | 51            | 35788899      | COMERCIAL     | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | Indisponível             | 51            | 999999940     | CELULAR       | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CARLOS BUERO         | M    | Indisponível             | 51            | 35788899      | RESIDENCIAL   | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| CELIA RICA           | F    | celiarica@ig.com         | Indisponível  | Indisponível  | Indisponível  | FLORES DO CAMPO | CURITIBA       | PR     |
| CELIA RICA           | F    | celiarica@ig.com         | 41            | 33333331      | COMERCIAL     | FLORES DO CAMPO | CURITIBA       | PR     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21            | 999991112     | CELULAR       | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| CLARA CEU            | F    | ceuclara@bol.com         | 21            | 32323230      | COMERCIAL     | FLORES DO CAMPO | RIO DE JANEIRO | RJ     |
| DANIELE SAKAMOTO     | F    | ssakamotodani@ig.com     | 41            | 974125789     | CELULAR       | CENTRO          | CURITIBA       | PR     |
| EDUARDO SAKAMOTO     | M    | ssakamotoedu@ig.com      | 31            | 25874413      | COMERCIAL     | CASCADURA       | BELO HORIZONTE | MG     |
| FLAVIO JUNQUEIRA     | M    | JUNQFLAVIO@IG.COM        | 87            | 21456321      | RESIDENCIAL   | CENTRO          | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | Indisponível             | 87            | 31313132      | RESIDENCIAL   | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | Indisponível             | 87            | 988887774     | CELULAR       | FLORES LINDAS   | PERNAMBUCO     | PE     |
| FREDERICO ZUCKENBERG | M    | Indisponível             | 87            | 36981888      | COMERCIAL     | FLORES LINDAS   | PERNAMBUCO     | PE     |
| GIOVANA ANTONNIA     | F    | antgiovanna@gmail.com    | 21            | 999887766     | CELULAR       | LEBLON          | RIO DE JANEIRO | RJ     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11            | 922113344     | CELULAR       | LAPA            | SAO PAULO      | SP     |
| JOICE CEU            | F    | joiceu74@gmail.com       | 11            | 988775522     | CELULAR       | LAPA            | SAO PAULO      | SP     |
| JORGE SARGETA        | M    | Indisponível             | 51            | 999991111     | CELULAR       | COLORIDO NOVO   | PORTO ALEGRE   | RS     |
| JOSE PAGINA          | M    | joaopagina54@bol.com     | 31            | 32323210      | RESIDENCIAL   | TULIPAS         | CONFINS        | MG     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41            | 999999918     | CELULAR       | BOM RETIRO      | CURITIBA       | PR     |
| KARLA CASSILDA       | F    | casskarla@gmail.com      | 41            | 21456987      | COMERCIAL     | BOM RETIRO      | CURITIBA       | PR     |
| LORENA SAKAMOTO      | F    | ssakamotolore@ig.com     | 11            | 974125896     | CELULAR       | JARDINS         | SAO PAULO      | SP     |
| LUCAS DO BREJO       | M    | lucasbrejo@gmail.com     | 41            | 25881010      | RESIDENCIAL   | FLORES LINDAS   | CURITIBA       | PR     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41            | 357881147     | COMERCIAL     | FLORES LINDAS   | CURITIBA       | PR     |
| MARIA ANTONIETA      | F    | maria antonieta@bol.com  | 41            | 999991113     | CELULAR       | FLORES LINDAS   | CURITIBA       | PR     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | Indisponível  | Indisponível  | Indisponível  | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
| PALOMA NOBREZA       | F    | palomanobreza@gmail.com  | 11            | 21478930      | COMERCIAL     | CAMPOS ELISEOS  | SÃO PAULO      | SP     |
+----------------------+------+--------------------------+---------------+---------------+---------------+-----------------+----------------+--------+


                   /* ========== DELIMITADOR ========== */

/* BLOCO DE INSTRUÇÃO SEM O DELIMITADOR (;) NO BrModelo */
SELECT (CLIENTE.NOME),
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
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE
ORDER BY NOME

mysql> SELECT (CLIENTE.NOME),
    ->        IFNULL(CLIENTE.SEXO, "Indisponível") AS "SEXO",
    ->        IFNULL(CLIENTE.EMAIL, "Indisponível") AS "E-MAIL",
    ->        IFNULL(TELEFONE.DDD, "Indisponível") AS "DDD",
    ->        IFNULL(TELEFONE.NUMERO, "Indisponível") AS "NUMERO",
    ->        IFNULL(TELEFONE.TIPO, "Indisponível") AS "TIPO",
    ->        IFNULL(ENDERECO.BAIRRO, "Indisponível") AS "BAIRRO",
    ->        IFNULL(ENDERECO.CIDADE, "Indisponível") AS "CIDADE",
    ->        IFNULL(ENDERECO.ESTADO, "Indisponível") AS "ESTADO"
    -> FROM CLIENTE
    ->     INNER JOIN ENDERECO
    ->     ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    ->     INNER JOIN TELEFONE
    ->     ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE
    -> ORDER BY NOME
    ->
    ->
    ->
    ->
    ->
    -> /* O PROGRAMA NÃO EXECUTA ENQUANTO NÃO LER O DELIMITADOR (;) */

/* ESTE COMANDO PERMITE VISUALIZAR INFORMAÇÕES CORRENTES, COMO POR EXEMPLO, QUAL BANCO QUE ESTÁ CONECTADO E TAMBÉM, QUAL É O DELIMITADOR */
STATUS;

Connection id:          8
Current database:       comercio
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
Uptime:                 1 hour 13 min 2 sec

Threads: 2  Questions: 10  Slow queries: 0  Opens: 139  Flush tables: 3  Open tables: 58  Queries per second avg: 0.002
--------------

                   /* ALTERA O DELIMITADOR */

DELIMITER $

Connection id:          8
Current database:       comercio
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        $
Server version:         8.0.39 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 1 hour 18 min 21 sec

Threads: 2  Questions: 14  Slow queries: 0  Opens: 139  Flush tables: 3  Open tables: 58  Queries per second avg: 0.002
--------------

/* AO FECHAR E INICIALIZAR O BANCO NOVAMENTE, O DELIMITER VOLTA AO NORMAL (;) */

DELIMITER ;
