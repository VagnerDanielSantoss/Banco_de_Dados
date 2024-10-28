
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
