{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red96\green113\blue169;\red255\green255\blue255;\red216\green216\blue219;
\red200\green241\blue152;\red139\green255\blue255;\red253\green184\blue124;\red174\green209\blue255;\red252\green136\blue147;
\red229\green169\blue255;\red215\green215\blue219;}
{\*\expandedcolortbl;;\cssrgb\c44877\c52349\c71901;\cssrgb\c100000\c100000\c100000\c0;\cssrgb\c87554\c87555\c88622;
\cssrgb\c81942\c94479\c66125;\cssrgb\c60059\c100000\c100000;\cssrgb\c99954\c77174\c55872;\cssrgb\c73515\c85694\c100000;\cssrgb\c99936\c61476\c64099;
\cssrgb\c92348\c73530\c100000;\cssrgb\c87451\c87451\c88627;}
\margl1440\margr1440\vieww17940\viewh11920\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\cf4 \strokec4 \
\
PSQL=\cf5 \strokec5 "psql --username=freecodecamp --dbname=number_guess -t --no-align -c"\cf4 \strokec4 \
\
NUMBER=\cf5 \strokec5 $(( RANDOM \cf6 \strokec6 %\cf5 \strokec5  \cf7 \strokec7 1000\cf5 \strokec5  \cf6 \strokec6 +\cf5 \strokec5  \cf7 \strokec7 1\cf5 \strokec5  ))\cf4 \strokec4 \
\
\cf8 \strokec8 MAIN\cf4 \strokec4 () \{\
  \cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nEnter your username:"\cf4 \strokec4 \
  \cf8 \strokec8 read\cf4 \strokec4  USERNAME\
\
USER_NAME=\cf5 \strokec5 $(\cf9 \strokec9 $PSQL\cf5 \strokec5  "SELECT username FROM users WHERE username = '\cf9 \strokec9 $USERNAME\cf5 \strokec5 '")\cf4 \strokec4 \
\
\cf10 \strokec10 if\cf4 \strokec4  [[ \cf6 \strokec6 -z\cf4 \strokec4  \cf9 \strokec9 $USER_NAME\cf4 \strokec4  ]]\
\cf10 \strokec10 then\cf4 \strokec4 \
  \cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nWelcome, \cf9 \strokec9 $USERNAME\cf5 \strokec5 ! It looks like this is your first time here."\cf4 \strokec4 \
  INSERT_USERNAME=\cf5 \strokec5 $(\cf9 \strokec9 $PSQL\cf5 \strokec5  "INSERT INTO users(username, games_played, best_game) VALUES('\cf9 \strokec9 $USERNAME\cf5 \strokec5 ', 0, 1000)")\cf4 \strokec4 \
  \
\cf10 \strokec10 else\cf4 \strokec4 \
  GAMES_PLAYED=\cf5 \strokec5 $(\cf9 \strokec9 $PSQL\cf5 \strokec5  "SELECT games_played FROM users WHERE username = '\cf9 \strokec9 $USERNAME\cf5 \strokec5 '")\cf4 \strokec4 \
  BEST_GAME=\cf5 \strokec5 $(\cf9 \strokec9 $PSQL\cf5 \strokec5  "SELECT best_game FROM users WHERE username = '\cf9 \strokec9 $USERNAME\cf5 \strokec5 '")\cf4 \strokec4 \
  \cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nWelcome back, \cf9 \strokec9 $USER_NAME\cf5 \strokec5 ! You have played \cf9 \strokec9 $GAMES_PLAYED\cf5 \strokec5  games, and your best game took \cf9 \strokec9 $BEST_GAME\cf5 \strokec5  guesses."\cf4 \strokec4 \
\cf10 \strokec10 fi\cf4 \strokec4 \
\
\cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nGuess the secret number between 1 and 1000:"\cf4 \strokec4 \
\cf8 \strokec8 read\cf4 \strokec4  GUESS\
INSERT_GAMES_PLAYED=\cf5 \strokec5 $(\cf9 \strokec9 $PSQL\cf5 \strokec5  "UPDATE users SET games_played = (( games_played + 1)) WHERE username = '\cf9 \strokec9 $USERNAME\cf5 \strokec5 '")\cf4 \strokec4 \
\
COUNT=1\
\
\cf10 \strokec10 until\cf4 \strokec4  [[ \cf9 \strokec9 $GUESS\cf4 \strokec4  \cf6 \strokec6 ==\cf4 \strokec4  \cf9 \strokec9 $NUMBER\cf4 \strokec4  ]]\
\cf10 \strokec10 do\cf4 \strokec4 \
\cf10 \strokec10 if\cf4 \strokec4  [[ \cf6 \strokec6 !\cf4 \strokec4  \cf9 \strokec9 $GUESS\cf4 \strokec4  \cf6 \strokec6 =~\cf4 \strokec4  ^[0-9]+$ ]]\
\cf10 \strokec10 then\cf4 \strokec4   \
  \cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nThat is not an integer, guess again:"\cf4 \strokec4 \
  \cf8 \strokec8 read\cf4 \strokec4  GUESS\
\cf10 \strokec10 else\cf4 \strokec4  \{\
 \cf10 \strokec10 if\cf4 \strokec4  \cf5 \strokec5 (( GUESS \cf6 \strokec6 >\cf5 \strokec5  NUMBER ))\cf4 \strokec4 \
 \cf10 \strokec10 then\cf4 \strokec4 \
  \cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nIt's lower than that, guess again:"\cf4 \strokec4 \
  \cf8 \strokec8 read\cf4 \strokec4  GUESS\
  \cf5 \strokec5 (( COUNT \cf6 \strokec6 ++\cf5 \strokec5 ))\cf4 \strokec4 \
 \cf10 \strokec10 elif\cf4 \strokec4  \cf5 \strokec5 (( GUESS \cf6 \strokec6 <\cf5 \strokec5  NUMBER ))\cf4 \strokec4 \
 \cf10 \strokec10 then\cf4 \strokec4 \
  \cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nIt's higher than that, guess again:"\cf4 \strokec4 \
  \cf8 \strokec8 read\cf4 \strokec4  GUESS\
  \cf5 \strokec5 (( COUNT \cf6 \strokec6 ++\cf5 \strokec5 ))\cf4 \strokec4 \
 \cf10 \strokec10 fi\cf4 \strokec4 \
\}\
\cf10 \strokec10 fi\cf4 \strokec4 \
\cf10 \strokec10 done\cf4 \strokec4 \
\
\cf8 \strokec8 echo\cf4 \strokec4  -e \cf5 \strokec5 "\\nYou guessed it in \cf9 \strokec9 $COUNT\cf5 \strokec5  tries. The secret number was \cf9 \strokec9 $NUMBER\cf5 \strokec5 . Nice job!"\cf4 \strokec4 \
INSERT_BEST_GAME=\cf5 \strokec5 $(\cf9 \strokec9 $PSQL\cf5 \strokec5  "UPDATE users SET best_game = \cf9 \strokec9 $COUNT\cf5 \strokec5  WHERE username = '\cf9 \strokec9 $USERNAME\cf5 \strokec5 ' AND (( best_game > \cf9 \strokec9 $COUNT\cf5 \strokec5  ))")\cf4 \strokec4 \
\
\}\
\
MAIN\cf11 \cb1 \strokec11 \
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 \strokec4 \
}
