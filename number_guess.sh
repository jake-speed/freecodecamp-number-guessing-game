#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#get user
  echo Enter your username:
  read name

#if user exists show history
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$name'")
  if [[ ! -z $USER_ID ]]
  then
    NAME=$($PSQL "SELECT name FROM users WHERE user_id = $USER_ID")
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")
    echo Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
  elif [[ -z $USER_ID ]]
  then
    echo Welcome, $name! It looks like this is your first time here.
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$name')")
    if [[ $INSERT_USER_RESULT == "INSERT 0 1" ]]
    then
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$name'")
      NAME=$($PSQL "SELECT name FROM users WHERE user_ID = $USER_ID")
    fi
  fi

#generate random number
  SECRET_NUMBER=$((1 + $RANDOM % 1000))
#declare guess variables 
  guesses=0
  guess=0

  #guesses
  echo "Guess the secret number between 1 and 1000:"
  read guess
        if [[ ! $guess =~ ^[0-9]+$ ]]
        then
          echo "That is not an integer, guess again:"
          read guess
        else
         guesses=$(($guesses+1))
        fi

  while [ $guess != $SECRET_NUMBER ]
    do
      if [[ $guess -lt $SECRET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        read guess
              if [[ ! $guess =~ ^[0-9]+$ ]]
              then
                echo "That is not an integer, guess again:"
                read guess
              else
              guesses=$(($guesses+1))
              fi
      elif [[ $guess -gt $SECRET_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
        read guess
              if [[ ! $guess =~ ^[0-9]+$ ]]
              then
                echo "That is not an integer, guess again:"
                read guess
              else
              guesses=$(($guesses+1))
              fi
      fi
    done
  if [[ $guess == $SECRET_NUMBER ]]
  then
    echo "You guessed it in $guesses tries. The secret number was $SECRET_NUMBER. Nice job!"
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, secret_number, guesses, timestamp) VALUES($USER_ID, $SECRET_NUMBER, $guesses, NOW())")
  fi

