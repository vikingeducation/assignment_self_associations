class Competitor < ActiveRecord::Base
  has_many :victories, foreign_key: :winner_id,
                       class_name: "Match"
  has_many :beaten_competitors, through: :victories, source: :loser, dependent: :destroy

  has_many :losses, foreign_key: :loser_id,
                       class_name: "Match"
  has_many :competitors_beaten_by, through: :losses, source: :winner,  dependent: :destroy
end
