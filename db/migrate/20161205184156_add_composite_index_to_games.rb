class AddCompositeIndexToGames < ActiveRecord::Migration[5.0]
  def change
    add_index :games, [:home_team_id, :away_team_id]
  end
end
