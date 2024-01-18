
CREATE TABLE Team (
  team_id INT PRIMARY KEY,
  team_name VARCHAR(255),
  
);


CREATE TABLE Player (
  player_id INT PRIMARY KEY,
  player_name VARCHAR(255),
  team_id INT,
  
  FOREIGN KEY (team_id) REFERENCES Team(team_id)
);


CREATE TABLE Game (
  game_id INT PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  home_team_id INT,
  away_team_id INT,
  
  FOREIGN KEY (home_team_id) REFERENCES Team(team_id),
  FOREIGN KEY (away_team_id) REFERENCES Team(team_id)
);


CREATE TABLE Referee (
  referee_id INT PRIMARY KEY,
  referee_name VARCHAR(255),
  game_id INT,
  
  FOREIGN KEY (game_id) REFERENCES Game(game_id)
);


CREATE TABLE Match (
  match_id INT PRIMARY KEY,
  game_id INT,
  winner_team_id INT,
  loser_team_id INT,
  date DATE,
  season_id INT,
  
  FOREIGN KEY (game_id) REFERENCES Game(game_id),
  FOREIGN KEY (winner_team_id) REFERENCES Team(team_id),
  FOREIGN KEY (loser_team_id) REFERENCES Team(team_id),
  FOREIGN KEY (season_id) REFERENCES Season(season_id)
);


CREATE TABLE Season (
  season_id INT PRIMARY KEY,
  start_date DATE,
  end_date DATE
  
);