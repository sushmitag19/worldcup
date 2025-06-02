CREATE DATABASE worldcup;


worldcup=> CREATE TABLE teams(team_id SERIAL NOT NULL PRIMARY KEY, name VARCHAR(40) NOT NULL UNIQUE);
CREATE TABLE
worldcup=> CREATE TABLE games(game_id SERIAL NOT NULL, year INT NOT NULL, round VARCHAR(30) NOT NULL, winner_id INT NOT NULL, FOREIGN KEY(winner_id) REFERENCES teams(team_id), opponent_id INT NOT NULL, FOREIGN KEY(opponent_id) REFERENCESteams(team_id), winner_goals INT NOT NULL, opponent_goals INT NOT NULL);
CREATE TABLE
worldcup=> ALTER TABLE games ADD PRIMARY KEY(game_id);
ALTER TABLE
