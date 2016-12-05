class Team < ApplicationRecord
  has_many :home_games, foreign_key: :home_team_id,
                        class_name: "Game", dependent: :destroy

  has_many :visiting_opponents, through: :home_games,
                                  source: :away_team

  has_many :away_games, foreign_key: :away_team_id,
                          class_name: "Game", dependent: :destroy

  has_many :host_opponents, through: :away_games,
                                  source: :home_team
end
