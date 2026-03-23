#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#!/bin/bash

# Clear tables before inserting (important for tests)
echo $($PSQL "TRUNCATE teams, games RESTART IDENTITY;")

# Read CSV file
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  # Skip header row
  if [[ $YEAR != "year" ]]
  then
    # Get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")

    # If winner not found, insert
    if [[ -z $WINNER_ID ]]
    then
      echo "Inserting team: $WINNER"
      $PSQL "INSERT INTO teams(name) VALUES('$WINNER');"
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    fi

    # Get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

    # If opponent not found, insert
    if [[ -z $OPPONENT_ID ]]
    then
      echo "Inserting team: $OPPONENT"
      $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');"
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    fi

    # Insert game
    echo "Inserting game: $YEAR $ROUND"
    $PSQL "
      INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
      VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $W_GOALS, $O_GOALS);
    "
  fi
done