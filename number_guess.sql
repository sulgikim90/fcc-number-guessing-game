{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red96\green113\blue169;\red255\green255\blue255;\red216\green216\blue219;
\red229\green169\blue255;\red139\green255\blue255;\red253\green184\blue124;\red200\green241\blue152;\red255\green255\blue255;
\red174\green209\blue255;}
{\*\expandedcolortbl;;\cssrgb\c44877\c52349\c71901;\cssrgb\c100000\c100000\c100000\c0;\cssrgb\c87554\c87555\c88622;
\cssrgb\c92348\c73530\c100000;\cssrgb\c60059\c100000\c100000;\cssrgb\c99954\c77174\c55872;\cssrgb\c81942\c94479\c66125;\cssrgb\c100000\c100000\c99985;
\cssrgb\c73515\c85694\c100000;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -\cf4 \strokec4 \
\cf2 \strokec2 -- PostgreSQL database dump\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\cf2 \strokec2 -- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\cf4 \strokec4 \
\cf2 \strokec2 -- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 SET\cf4 \strokec4  statement_timeout \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  \cf5 \strokec5 lock_timeout\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  idle_in_transaction_session_timeout \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  client_encoding \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 'UTF8'\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  standard_conforming_strings \cf6 \strokec6 =\cf4 \strokec4  \cf5 \strokec5 on\cf4 \strokec4 ;\
\cf5 \strokec5 SELECT\cf4 \strokec4  \cf9 \strokec9 pg_catalog\cf4 \strokec4 .\cf9 \strokec9 set_config\cf4 \strokec4 (\cf8 \strokec8 'search_path'\cf4 \strokec4 , \cf8 \strokec8 ''\cf4 \strokec4 , false);\
\cf5 \strokec5 SET\cf4 \strokec4  check_function_bodies \cf6 \strokec6 =\cf4 \strokec4  false;\
\cf5 \strokec5 SET\cf4 \strokec4  xmloption \cf6 \strokec6 =\cf4 \strokec4  content;\
\cf5 \strokec5 SET\cf4 \strokec4  client_min_messages \cf6 \strokec6 =\cf4 \strokec4  warning;\
\cf5 \strokec5 SET\cf4 \strokec4  row_security \cf6 \strokec6 =\cf4 \strokec4  \cf5 \strokec5 off\cf4 \strokec4 ;\
\
\cf5 \strokec5 DROP\cf4 \strokec4  \cf5 \strokec5 DATABASE\cf4 \strokec4  number_guess;\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 DATABASE\cf4 \strokec4  number_guess \cf5 \strokec5 WITH\cf4 \strokec4  TEMPLATE \cf6 \strokec6 =\cf4 \strokec4  template0 \cf5 \strokec5 ENCODING\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 'UTF8'\cf4 \strokec4  LC_COLLATE \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 'C.UTF-8'\cf4 \strokec4  LC_CTYPE \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 'C.UTF-8'\cf4 \strokec4 ;\
\
\
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 DATABASE\cf4 \strokec4  number_guess \cf5 \strokec5 OWNER\cf4 \strokec4  \cf5 \strokec5 TO\cf4 \strokec4  freecodecamp;\
\
\\\cf5 \strokec5 connect\cf4 \strokec4  number_guess\
\
\cf5 \strokec5 SET\cf4 \strokec4  statement_timeout \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  \cf5 \strokec5 lock_timeout\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  idle_in_transaction_session_timeout \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  client_encoding \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 'UTF8'\cf4 \strokec4 ;\
\cf5 \strokec5 SET\cf4 \strokec4  standard_conforming_strings \cf6 \strokec6 =\cf4 \strokec4  \cf5 \strokec5 on\cf4 \strokec4 ;\
\cf5 \strokec5 SELECT\cf4 \strokec4  \cf9 \strokec9 pg_catalog\cf4 \strokec4 .\cf9 \strokec9 set_config\cf4 \strokec4 (\cf8 \strokec8 'search_path'\cf4 \strokec4 , \cf8 \strokec8 ''\cf4 \strokec4 , false);\
\cf5 \strokec5 SET\cf4 \strokec4  check_function_bodies \cf6 \strokec6 =\cf4 \strokec4  false;\
\cf5 \strokec5 SET\cf4 \strokec4  xmloption \cf6 \strokec6 =\cf4 \strokec4  content;\
\cf5 \strokec5 SET\cf4 \strokec4  client_min_messages \cf6 \strokec6 =\cf4 \strokec4  warning;\
\cf5 \strokec5 SET\cf4 \strokec4  row_security \cf6 \strokec6 =\cf4 \strokec4  \cf5 \strokec5 off\cf4 \strokec4 ;\
\
\cf5 \strokec5 SET\cf4 \strokec4  default_tablespace \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 ''\cf4 \strokec4 ;\
\
\cf5 \strokec5 SET\cf4 \strokec4  default_table_access_method \cf6 \strokec6 =\cf4 \strokec4  heap;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  (\
    \cf10 \strokec10 user_id\cf4 \strokec4  \cf5 \strokec5 integer\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\
    username \cf5 \strokec5 character\cf4 \strokec4  varying(\cf7 \strokec7 22\cf4 \strokec4 ) \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\
    games_played \cf5 \strokec5 integer\cf4 \strokec4 ,\
    best_game \cf5 \strokec5 integer\cf4 \strokec4 \
);\
\
\
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 OWNER\cf4 \strokec4  \cf5 \strokec5 TO\cf4 \strokec4  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 SEQUENCE\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users_user_id_seq\cf4 \strokec4 \
    \cf5 \strokec5 AS\cf4 \strokec4  \cf5 \strokec5 integer\cf4 \strokec4 \
    \cf5 \strokec5 START\cf4 \strokec4  \cf5 \strokec5 WITH\cf4 \strokec4  \cf7 \strokec7 1\cf4 \strokec4 \
    INCREMENT \cf5 \strokec5 BY\cf4 \strokec4  \cf7 \strokec7 1\cf4 \strokec4 \
    \cf5 \strokec5 NO\cf4 \strokec4  MINVALUE\
    \cf5 \strokec5 NO\cf4 \strokec4  MAXVALUE\
    CACHE \cf7 \strokec7 1\cf4 \strokec4 ;\
\
\
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users_user_id_seq\cf4 \strokec4  \cf5 \strokec5 OWNER\cf4 \strokec4  \cf5 \strokec5 TO\cf4 \strokec4  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 SEQUENCE\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users_user_id_seq\cf4 \strokec4  OWNED \cf5 \strokec5 BY\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4 .\cf10 \strokec10 user_id\cf4 \strokec4 ;\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  ONLY \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 ALTER\cf4 \strokec4  COLUMN \cf10 \strokec10 user_id\cf4 \strokec4  \cf5 \strokec5 SET\cf4 \strokec4  \cf5 \strokec5 DEFAULT\cf4 \strokec4  nextval(\cf8 \strokec8 'public.users_user_id_seq'\cf4 \strokec4 ::regclass);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 1\cf4 \strokec4 , \cf8 \strokec8 'sadfsdfasd'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 2\cf4 \strokec4 , \cf8 \strokec8 'dfgdfs'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 3\cf4 \strokec4 , \cf8 \strokec8 'aaa'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 4\cf4 \strokec4 , \cf8 \strokec8 'sdfasdfsda'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 5\cf4 \strokec4 , \cf8 \strokec8 'user_1668648800955'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 6\cf4 \strokec4 , \cf8 \strokec8 'user_1668648800954'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 7\cf4 \strokec4 , \cf8 \strokec8 'user_1668648856915'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 8\cf4 \strokec4 , \cf8 \strokec8 'user_1668648856914'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 9\cf4 \strokec4 , \cf8 \strokec8 'sadfdsaf'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 10\cf4 \strokec4 , \cf8 \strokec8 'sadf'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 11\cf4 \strokec4 , \cf8 \strokec8 'sadgsadg'\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 12\cf4 \strokec4 , \cf8 \strokec8 'sadfsdafasdf'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 13\cf4 \strokec4 , \cf8 \strokec8 'aaaaa'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 15\cf4 \strokec4 , \cf8 \strokec8 'user_1668649713131'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 14\cf4 \strokec4 , \cf8 \strokec8 'user_1668649713132'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 16\cf4 \strokec4 , \cf8 \strokec8 'sdafsdafsdaf'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 17\cf4 \strokec4 , \cf8 \strokec8 'sadfdsafsad'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 18\cf4 \strokec4 , \cf8 \strokec8 'cdsfdsfdsf'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 20\cf4 \strokec4 , \cf8 \strokec8 'user_1668651550618'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 41\cf4 \strokec4 , \cf8 \strokec8 'user_1668653086588'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 791\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 19\cf4 \strokec4 , \cf8 \strokec8 'user_1668651550619'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 21\cf4 \strokec4 , \cf8 \strokec8 'sdfsdfasdfsda'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 22\cf4 \strokec4 , \cf8 \strokec8 'sadfsadfsadf'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 23\cf4 \strokec4 , \cf8 \strokec8 'sfsadf'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 25\cf4 \strokec4 , \cf8 \strokec8 'user_1668652100100'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 24\cf4 \strokec4 , \cf8 \strokec8 'user_1668652100101'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 26\cf4 \strokec4 , \cf8 \strokec8 '435t345'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 27\cf4 \strokec4 , \cf8 \strokec8 'sdafasdf'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 40\cf4 \strokec4 , \cf8 \strokec8 'user_1668653086589'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf7 \strokec7 381\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 29\cf4 \strokec4 , \cf8 \strokec8 'user_1668652272492'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 28\cf4 \strokec4 , \cf8 \strokec8 'user_1668652272493'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 30\cf4 \strokec4 , \cf8 \strokec8 'asdfsdaf3'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 31\cf4 \strokec4 , \cf8 \strokec8 'dfg43'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 32\cf4 \strokec4 , \cf8 \strokec8 '324234g'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 33\cf4 \strokec4 , \cf8 \strokec8 'sadf23'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 34\cf4 \strokec4 , \cf8 \strokec8 '23423fw'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 35\cf4 \strokec4 , \cf8 \strokec8 '23423rdfs'\cf4 \strokec4 , \cf7 \strokec7 1\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 37\cf4 \strokec4 , \cf8 \strokec8 'user_1668652880787'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 43\cf4 \strokec4 , \cf8 \strokec8 'user_1668653228162'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 418\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 36\cf4 \strokec4 , \cf8 \strokec8 'user_1668652880788'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 39\cf4 \strokec4 , \cf8 \strokec8 'user_1668652962314'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 42\cf4 \strokec4 , \cf8 \strokec8 'user_1668653228163'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf7 \strokec7 29\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 38\cf4 \strokec4 , \cf8 \strokec8 'user_1668652962315'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf5 \strokec5 NULL\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 45\cf4 \strokec4 , \cf8 \strokec8 'abc'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 9\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 44\cf4 \strokec4 , \cf8 \strokec8 '2332413'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 12\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 47\cf4 \strokec4 , \cf8 \strokec8 'user_1668653667112'\cf4 \strokec4 , \cf7 \strokec7 2\cf4 \strokec4 , \cf7 \strokec7 285\cf4 \strokec4 );\
\cf5 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4  \cf5 \strokec5 VALUES\cf4 \strokec4  (\cf7 \strokec7 46\cf4 \strokec4 , \cf8 \strokec8 'user_1668653667113'\cf4 \strokec4 , \cf7 \strokec7 5\cf4 \strokec4 , \cf7 \strokec7 28\cf4 \strokec4 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 SELECT\cf4 \strokec4  \cf9 \strokec9 pg_catalog\cf4 \strokec4 .\cf9 \strokec9 setval\cf4 \strokec4 (\cf8 \strokec8 'public.users_user_id_seq'\cf4 \strokec4 , \cf7 \strokec7 47\cf4 \strokec4 , true);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  ONLY \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4 \
    \cf5 \strokec5 ADD\cf4 \strokec4  \cf5 \strokec5 CONSTRAINT\cf4 \strokec4  users_pkey \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  (\cf10 \strokec10 user_id\cf4 \strokec4 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 ALTER\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  ONLY \cf9 \strokec9 public\cf4 \strokec4 .\cf9 \strokec9 users\cf4 \strokec4 \
    \cf5 \strokec5 ADD\cf4 \strokec4  \cf5 \strokec5 CONSTRAINT\cf4 \strokec4  users_username_key \cf5 \strokec5 UNIQUE\cf4 \strokec4  (username);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \strokec2 --\cf4 \strokec4 \
\cf2 \strokec2 -- PostgreSQL database dump complete\cf4 \strokec4 \
\cf2 \strokec2 --\cf4 \strokec4 \
\
}
