#!/bin/bash

GUESS_NUMBER() {

  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  read GUESS
  


  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    GUESS_NUMBER "That is not an integer, guess again:"
  else
    GUESS_COUNT=$(( $GUESS_COUNT+1 ))
    if [[ $NUMBER -lt $GUESS ]]
    then
      GUESS_NUMBER "It's lower than that, guess again:"
    elif [[ $NUMBER -gt $GUESS ]]
    then
      GUESS_NUMBER "It's higher than that, guess again:"
    else
      ADD_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guess_count) VALUES($USER_ID, $GUESS_COUNT)")
      echo $ADD_GAME_RESULT
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $NUMBER. Nice job!"
    fi
  fi

}

PSQL="psql -X --username=freecodecamp --dbname=number_guessing_game --no-align --tuples-only -c"

NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0



echo "Enter your username:"
read USERNAME

# check database for username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_ID ]]
then
  # add new user to the database
  ADD_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
else
  USERS_GAMES=$($PSQL "SELECT count(*) FROM users INNER JOIN games USING(user_id) WHERE user_id=$USER_ID")
  MIN_GUESSES=$($PSQL "SELECT min(guess_count) FROM users INNER JOIN games USING(user_id) WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $USERS_GAMES games, and your best game took $MIN_GUESSES guesses."
fi

GUESS_NUMBER "Guess the secret number between 1 and 1000:"