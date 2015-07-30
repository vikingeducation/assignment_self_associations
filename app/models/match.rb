class Match < ActiveRecord::Base
  belongs_to :winner, foreign_key: :winner_id, class_name: "Competitor"
  belongs_to :loser, foreign_key: :loser_id, class_name: "Competitor"

  validates :winner_id, uniqueness: {scope: :loser_id}
end
