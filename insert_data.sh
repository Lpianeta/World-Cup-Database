#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERG OPPONENTG
do
  if [[ $OPPONENT != "opponent" ]]
  then
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    if [[ -z $TEAM_ID ]]
    then
    INSERT_OPPONENT_DATA=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

    if [[ $INSERT_TEAMS_DATA == "INSERT 0 1" ]]
    then 
      echo "Inserted into teams, $OPPONENT"
    fi
    
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi
 fi


    if [[ $WINNER != "winner" ]]
    then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    
    if [[ -z $TEAM_ID ]]
    then
    INSERT_WINNER_DATA=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

    if [[ $INSERT_TEAMS_DATA == "INSERT 0 1" ]]
    then 
      echo "Inserted into teams, $WINNER"
    fi
    
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  fi
 fi

if [[ $YEAR != "year" && $ROUND != "round" && $WINNER != "winner" && $OPPONENT != "opponent" && $WINNERG != "winner_goals" && $OPPONENTG != "opponent_goals" ]]
  then
    INSERT_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNERG, $OPPONENTG)")
    
    if [[ $INSERT_DATA == "INSERT 0 1" ]]
    then
      echo "Inserted game: $ROUND, $WINNER vs $OPPONENT"
    fi
  fi
done