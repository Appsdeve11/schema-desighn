+-------------------+      +---------------------+      +------------------+
|       Team        |      |       Player        |      |      Game        |
+-------------------+      +---------------------+      +------------------+
| team_id (PK)      |<-----| player_id (PK)      |      | game_id (PK)     |
| team_name          |      | team_id (FK)        |<-----| start_date       |
| ...               |      | player_name         |      | end_date         |
+-------------------+      | ...                 |      | ...              |
                           +---------------------+      | home_team_id (FK)|
                                                         | away_team_id (FK)|
                                                         +------------------+
                                                                |
                                                                |
                                                     +------------------+
                                                     |     Referee     |
                                                     +------------------+
                                                     | referee_id (PK)  |
                                                     | referee_name     |
                                                     +------------------+
                                                     | game_id (FK)     |
                                                     +------------------+
                                                                |
                                                                |
                                                      +------------------+
                                                      |     Match        |
                                                      +------------------+
                                                      | match_id (PK)    |
                                                      | game_id (FK)     |
                                                      | winner_team_id  |
                                                      +------------------+
                                                      | loser_team_id   |
                                                      +------------------+
                                                      | date             |
                                                      +------------------+
                                                      | season_id (FK)  |
                                                      +------------------+