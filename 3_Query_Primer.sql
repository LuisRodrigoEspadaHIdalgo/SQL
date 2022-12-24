/* Devuelve la hora actual */
SELECT now() FROM dual;

+---------------------+
| now()               |
+---------------------+
| 2022-12-24 14:05:20 |
+---------------------+
1 row in set (0.00 sec)

/* Devuelve los set de caracteres con los que mysql puede trabajar */

SHOW CHARACTER SET;
+----------+---------------------------------+---------------------+--------+
| Charset  | Description                     | Default collation   | Maxlen |
+----------+---------------------------------+---------------------+--------+
| armscii8 | ARMSCII-8 Armenian              | armscii8_general_ci |      1 |
| ascii    | US ASCII                        | ascii_general_ci    |      1 |
| big5     | Big5 Traditional Chinese        | big5_chinese_ci     |      2 |
| binary   | Binary pseudo charset           | binary              |      1 |
| cp1250   | Windows Central European        | cp1250_general_ci   |      1 |
| cp1251   | Windows Cyrillic                | cp1251_general_ci   |      1 |
| cp1256   | Windows Arabic                  | cp1256_general_ci   |      1 |
| cp1257   | Windows Baltic                  | cp1257_general_ci   |      1 |
| cp850    | DOS West European               | cp850_general_ci    |      1 |
| cp852    | DOS Central European            | cp852_general_ci    |      1 |
| cp866    | DOS Russian                     | cp866_general_ci    |      1 |
| cp932    | SJIS for Windows Japanese       | cp932_japanese_ci   |      2 |
| dec8     | DEC West European               | dec8_swedish_ci     |      1 |
| eucjpms  | UJIS for Windows Japanese       | eucjpms_japanese_ci |      3 |
| euckr    | EUC-KR Korean                   | euckr_korean_ci     |      2 |
| gb18030  | China National Standard GB18030 | gb18030_chinese_ci  |      4 |
| gb2312   | GB2312 Simplified Chinese       | gb2312_chinese_ci   |      2 |
| gbk      | GBK Simplified Chinese          | gbk_chinese_ci      |      2 |
| geostd8  | GEOSTD8 Georgian                | geostd8_general_ci  |      1 |
| greek    | ISO 8859-7 Greek                | greek_general_ci    |      1 |
| hebrew   | ISO 8859-8 Hebrew               | hebrew_general_ci   |      1 |
| hp8      | HP West European                | hp8_english_ci      |      1 |
| keybcs2  | DOS Kamenicky Czech-Slovak      | keybcs2_general_ci  |      1 |
| koi8r    | KOI8-R Relcom Russian           | koi8r_general_ci    |      1 |
| koi8u    | KOI8-U Ukrainian                | koi8u_general_ci    |      1 |
| latin1   | cp1252 West European            | latin1_swedish_ci   |      1 |
| latin2   | ISO 8859-2 Central European     | latin2_general_ci   |      1 |
| latin5   | ISO 8859-9 Turkish              | latin5_turkish_ci   |      1 |
| latin7   | ISO 8859-13 Baltic              | latin7_general_ci   |      1 |
| macce    | Mac Central European            | macce_general_ci    |      1 |
| macroman | Mac West European               | macroman_general_ci |      1 |
| sjis     | Shift-JIS Japanese              | sjis_japanese_ci    |      2 |
| swe7     | 7bit Swedish                    | swe7_swedish_ci     |      1 |
| tis620   | TIS620 Thai                     | tis620_thai_ci      |      1 |
| ucs2     | UCS-2 Unicode                   | ucs2_general_ci     |      2 |
| ujis     | EUC-JP Japanese                 | ujis_japanese_ci    |      3 |
| utf16    | UTF-16 Unicode                  | utf16_general_ci    |      4 |
| utf16le  | UTF-16LE Unicode                | utf16le_general_ci  |      4 |
| utf32    | UTF-32 Unicode                  | utf32_general_ci    |      4 |
| utf8mb3  | UTF-8 Unicode                   | utf8mb3_general_ci  |      3 |
| utf8mb4  | UTF-8 Unicode                   | utf8mb4_0900_ai_ci  |      4 |
+----------+---------------------------------+---------------------+--------+
41 rows in set (0.00 sec)

/*  Para elegir un juego de caracteres distinto del predeterminado al definir una columna, 
simplemente asigne un nombre a uno de los juegos de caracteres admitidos después de la definición de tipo, como en*/

varchar(20) character set latin1

/* Con MySQL, también puede establecer el juego de caracteres predeterminado para toda su base de datos: */

create database european_sales character set latin1;

#EJERCITACIÓN

/*
Ejercicio 3-1
Recupere el ID de actor, el nombre y el apellido de todos los actores. Ordenar por apellido y luego por nombre.
*/

SELECT actor_id,first_name,last_name FROM actor ORDER BY last_name,first_name;

+----------+-------------+--------------+
| actor_id | first_name  | last_name    |
+----------+-------------+--------------+
|       58 | CHRISTIAN   | AKROYD       |
|      182 | DEBBIE      | AKROYD       |
|       92 | KIRSTEN     | AKROYD       |
|      118 | CUBA        | ALLEN        |
|      145 | KIM         | ALLEN        |
|      194 | MERYL       | ALLEN        |
|       76 | ANGELINA    | ASTAIRE      |
|      112 | RUSSELL     | BACALL       |
|      190 | AUDREY      | BAILEY       |
|       67 | JESSICA     | BAILEY       |
|      115 | HARRISON    | BALE         |
|      187 | RENEE       | BALL         |
|       47 | JULIA       | BARRYMORE    |
|      158 | VIVIEN      | BASINGER     |
|      174 | MICHAEL     | BENING       |
|      124 | SCARLETT    | BENING       |
|       14 | VIVIEN      | BERGEN       |
|      121 | LIZA        | BERGMAN      |
|       91 | CHRISTOPHER | BERRY        |
|       60 | HENRY       | BERRY        |
|       12 | KARL        | BERRY        |
|      189 | CUBA        | BIRCH        |
|       25 | KEVIN       | BLOOM        |
|      185 | MICHAEL     | BOLGER       |
|       37 | VAL         | BOLGER       |
|       98 | CHRIS       | BRIDGES      |
|       39 | GOLDIE      | BRODY        |
|      159 | LAURA       | BRODY        |
|      167 | LAURENCE    | BULLOCK      |
|       40 | JOHNNY      | CAGE         |
|       11 | ZERO        | CAGE         |
|      181 | MATTHEW     | CARREY       |
|       86 | GREG        | CHAPLIN      |
|        3 | ED          | CHASE        |
|      176 | JON         | CHASE        |
|      183 | RUSSELL     | CLOSE        |
|       16 | FRED        | COSTNER      |
|      129 | DARYL       | CRAWFORD     |
|       26 | RIP         | CRAWFORD     |
|       49 | ANNE        | CRONYN       |
|      104 | PENELOPE    | CRONYN       |
|      105 | SIDNEY      | CROWE        |
|       57 | JUDE        | CRUISE       |
|       80 | RALPH       | CRUZ         |
|       81 | SCARLETT    | DAMON        |
|        4 | JENNIFER    | DAVIS        |
|      110 | SUSAN       | DAVIS        |
|      101 | SUSAN       | DAVIS        |
|       48 | FRANCES     | DAY-LEWIS    |
|       35 | JUDY        | DEAN         |
|      143 | RIVER       | DEAN         |
|      148 | EMILY       | DEE          |
|      138 | LUCILLE     | DEE          |
|      107 | GINA        | DEGENERES    |
|       41 | JODIE       | DEGENERES    |
|      166 | NICK        | DEGENERES    |
|       89 | CHARLIZE    | DENCH        |
|      123 | JULIANNE    | DENCH        |
|      160 | CHRIS       | DEPP         |
|      100 | SPENCER     | DEPP         |
|      109 | SYLVESTER   | DERN         |
|      173 | ALAN        | DREYFUSS     |
|       36 | BURT        | DUKAKIS      |
|      188 | ROCK        | DUKAKIS      |
|      106 | GROUCHO     | DUNST        |
|       19 | BOB         | FAWCETT      |
|      199 | JULIA       | FAWCETT      |
|       10 | CHRISTIAN   | GABLE        |
|      165 | AL          | GARLAND      |
|      184 | HUMPHREY    | GARLAND      |
|      127 | KEVIN       | GARLAND      |
|      154 | MERYL       | GIBSON       |
|       46 | PARKER      | GOLDBERG     |
|      139 | EWAN        | GOODING      |
|      191 | GREGORY     | GOODING      |
|       71 | ADAM        | GRANT        |
|      179 | ED          | GUINESS      |
|        1 | PENELOPE    | GUINESS      |
|       90 | SEAN        | GUINESS      |
|       32 | TIM         | HACKMAN      |
|      175 | WILLIAM     | HACKMAN      |
|      152 | BEN         | HARRIS       |
|      141 | CATE        | HARRIS       |
|       56 | DAN         | HARRIS       |
|       97 | MEG         | HAWKE        |
|      151 | GEOFFREY    | HESTON       |
|      169 | KENNETH     | HOFFMAN      |
|       79 | MAE         | HOFFMAN      |
|       28 | WOODY       | HOFFMAN      |
|      161 | HARVEY      | HOPE         |
|      134 | GENE        | HOPKINS      |
|      113 | MORGAN      | HOPKINS      |
|       50 | NATALIE     | HOPKINS      |
|      132 | ADAM        | HOPPER       |
|      170 | MENA        | HOPPER       |
|       65 | ANGELA      | HUDSON       |
|       52 | CARMEN      | HUNT         |
|      140 | WHOOPI      | HURT         |
|      131 | JANE        | JACKMAN      |
|      119 | WARREN      | JACKMAN      |
|      146 | ALBERT      | JOHANSSON    |
|        8 | MATTHEW     | JOHANSSON    |
|       64 | RAY         | JOHANSSON    |
|       82 | WOODY       | JOLIE        |
|       43 | KIRK        | JOVOVICH     |
|      130 | GRETA       | KEITEL       |
|      198 | MARY        | KEITEL       |
|       74 | MILLA       | KEITEL       |
|       55 | FAY         | KILMER       |
|      153 | MINNIE      | KILMER       |
|      162 | OPRAH       | KILMER       |
|       45 | REESE       | KILMER       |
|       23 | SANDRA      | KILMER       |
|      103 | MATTHEW     | LEIGH        |
|        5 | JOHNNY      | LOLLOBRIGIDA |
|      157 | GRETA       | MALDEN       |
|      136 | ED          | MANSFIELD    |
|       22 | ELVIS       | MARX         |
|       77 | CARY        | MCCONAUGHEY  |
|       70 | MICHELLE    | MCCONAUGHEY  |
|      114 | MORGAN      | MCDORMAND    |
|      177 | GENE        | MCKELLEN     |
|       38 | TOM         | MCKELLEN     |
|      128 | CATE        | MCQUEEN      |
|       27 | JULIA       | MCQUEEN      |
|       42 | TOM         | MIRANDA      |
|      178 | LISA        | MONROE       |
|      120 | PENELOPE    | MONROE       |
|        7 | GRACE       | MOSTEL       |
|       99 | JIM         | MOSTEL       |
|       61 | CHRISTIAN   | NEESON       |
|       62 | JAYNE       | NEESON       |
|        6 | BETTE       | NICHOLSON    |
|      125 | ALBERT      | NOLTE        |
|      150 | JAYNE       | NOLTE        |
|      122 | SALMA       | NOLTE        |
|      108 | WARREN      | NOLTE        |
|       34 | AUDREY      | OLIVIER      |
|       15 | CUBA        | OLIVIER      |
|       69 | KENNETH     | PALTROW      |
|       21 | KIRSTEN     | PALTROW      |
|       33 | MILLA       | PECK         |
|       30 | SANDRA      | PECK         |
|       87 | SPENCER     | PECK         |
|       73 | GARY        | PENN         |
|      133 | RICHARD     | PENN         |
|       88 | KENNETH     | PESCI        |
|      171 | OLYMPIA     | PFEIFFER     |
|       51 | GARY        | PHOENIX      |
|       54 | PENELOPE    | PINKETT      |
|       84 | JAMES       | PITT         |
|       75 | BURT        | POSEY        |
|       93 | ELLEN       | PRESLEY      |
|      135 | RITA        | REYNOLDS     |
|      142 | JADA        | RYDER        |
|      195 | JAYNE       | SILVERSTONE  |
|      180 | JEFF        | SILVERSTONE  |
|       78 | GROUCHO     | SINATRA      |
|       31 | SISSY       | SOBIESKI     |
|       44 | NICK        | STALLONE     |
|       24 | CAMERON     | STREEP       |
|      116 | DAN         | STREEP       |
|      192 | JOHN        | SUVARI       |
|        9 | JOE         | SWANK        |
|      155 | IAN         | TANDY        |
|       66 | MARY        | TANDY        |
|       59 | DUSTIN      | TAUTOU       |
|      193 | BURT        | TEMPLE       |
|       53 | MENA        | TEMPLE       |
|      149 | RUSSELL     | TEMPLE       |
|      200 | THORA       | TEMPLE       |
|      126 | FRANCES     | TOMEI        |
|       18 | DAN         | TORN         |
|       94 | KENNETH     | TORN         |
|      102 | WALTER      | TORN         |
|       20 | LUCILLE     | TRACY        |
|      117 | RENEE       | TRACY        |
|       17 | HELEN       | VOIGHT       |
|       95 | DARYL       | WAHLBERG     |
|        2 | NICK        | WAHLBERG     |
|      196 | BELA        | WALKEN       |
|       29 | ALEC        | WAYNE        |
|      163 | CHRISTOPHER | WEST         |
|      197 | REESE       | WEST         |
|      172 | GROUCHO     | WILLIAMS     |
|      137 | MORGAN      | WILLIAMS     |
|       72 | SEAN        | WILLIAMS     |
|       83 | BEN         | WILLIS       |
|       96 | GENE        | WILLIS       |
|      164 | HUMPHREY    | WILLIS       |
|      168 | WILL        | WILSON       |
|      147 | FAY         | WINSLET      |
|       68 | RIP         | WINSLET      |
|      144 | ANGELA      | WITHERSPOON  |
|      156 | FAY         | WOOD         |
|       13 | UMA         | WOOD         |
|       63 | CAMERON     | WRAY         |
|      111 | CAMERON     | ZELLWEGER    |
|      186 | JULIA       | ZELLWEGER    |
|       85 | MINNIE      | ZELLWEGER    |
+----------+-------------+--------------+
200 rows in set (0.01 sec)

/*
Ejercicio 3-2
Recupere el ID de actor, el nombre y el apellido de todos los actores cuyo apellido sea igual 'WILLIAMS' o 'DAVIS' .
*/

SELECT actor_id, first_name, last_name FROM actor WHERE last_name = 'WLLIAMS' OR last_name = 'DAVIS';
+----------+------------+-----------+
| actor_id | first_name | last_name |
+----------+------------+-----------+
|        4 | JENNIFER   | DAVIS     |
|      101 | SUSAN      | DAVIS     |
|      110 | SUSAN      | DAVIS     |
+----------+------------+-----------+
3 rows in set (0.00 sec)

/*
Ejercicio 3-3
Escriba una consulta en la tabla rental que devuelve los identificadores de los clientes que alquilaron una película el 5 de julio de 2005 
(use la columna rental.rental_date y puede usar la función date() para omitir el componente de tiempo). Incluya una sola fila para cada ID de cliente distinto.
*/


SELECT DISTINCT customer_id  FROM rental WHERE date(rental_date) = '2005-07-05' ORDER BY customer_id;
+-------------+
| customer_id |
+-------------+
|           8 |
|          37 |
|          60 |
|         111 |
|         114 |
|         138 |
|         142 |
|         169 |
|         242 |
|         295 |
|         296 |
|         298 |
|         322 |
|         348 |
|         349 |
|         369 |
|         382 |
|         397 |
|         421 |
|         476 |
|         490 |
|         520 |
|         536 |
|         553 |
|         565 |
|         586 |
|         594 |
+-------------+
27 rows in set (0.03 sec)


/*
Ejercicio 3-4
Rellene los espacios en blanco (indicados por <#>) para esta consulta de varias tablas para lograr los siguientes resultados:
*/


mysql> SELECT c.email, r.return_date
    FROM customer c
    INNER JOIN rental r
    ON c.customer_id = r.customer_id
    WHERE date(r.rental_date) = '2005-06-14'
    ORDER BY r.return_date DESC;
+---------------------------------------+---------------------+
| email                                 | return_date         |
+---------------------------------------+---------------------+
| DANIEL.CABRAL@sakilacustomer.org      | 2005-06-23 22:00:38 |
| TERRANCE.ROUSH@sakilacustomer.org     | 2005-06-23 21:53:46 |
| MIRIAM.MCKINNEY@sakilacustomer.org    | 2005-06-21 17:12:08 |
| GWENDOLYN.MAY@sakilacustomer.org      | 2005-06-20 02:40:27 |
| JEANETTE.GREENE@sakilacustomer.org    | 2005-06-19 23:26:46 |
| HERMAN.DEVORE@sakilacustomer.org      | 2005-06-19 03:20:09 |
| JEFFERY.PINSON@sakilacustomer.org     | 2005-06-18 21:37:33 |
| MATTHEW.MAHAN@sakilacustomer.org      | 2005-06-18 05:18:58 |
| MINNIE.ROMERO@sakilacustomer.org      | 2005-06-18 01:58:34 |
| SONIA.GREGORY@sakilacustomer.org      | 2005-06-17 21:44:11 |
| TERRENCE.GUNDERSON@sakilacustomer.org | 2005-06-17 05:28:35 |
| ELMER.NOE@sakilacustomer.org          | 2005-06-17 02:11:13 |
| JOYCE.EDWARDS@sakilacustomer.org      | 2005-06-16 21:00:26 |
| AMBER.DIXON@sakilacustomer.org        | 2005-06-16 04:02:56 |
| CHARLES.KOWALSKI@sakilacustomer.org   | 2005-06-16 02:26:34 |
| CATHERINE.CAMPBELL@sakilacustomer.org | 2005-06-15 20:43:03 |
+---------------------------------------+---------------------+
16 rows in set (0.03 sec)