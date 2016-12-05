assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Rugby Teams.

Games -> Home team, away team
           (home_team_id, away_team_id)

Team
  - name: string

 * has_many :home_games, foreign_key: :home_team_id,
                         class_name: "Game"

 * has_many :visiting_opponents, through: :home_games,
                                 source: :away_team

------------------------------------------------                        

 * has_many :away_games, foreign_key: :away_team_id,
                         class_name: "Game"

 * has_many :host_opponents, through: :away_games,
                                 source: :home_team

Game
  - home_team_id
  - away_team_id

  * belongs_to :home_team, class_name: "Team"
  * belongs_to :away_team, class_name: "Team"
