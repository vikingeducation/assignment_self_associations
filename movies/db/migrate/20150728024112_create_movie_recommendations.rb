class CreateMovieRecommendations < ActiveRecord::Migration
  def change
    create_table :movie_recommendations do |t|
      t.integer :movie_id, null: false
      t.integer :recommended_movie_id, null: false

      t.timestamps null: false
    end

    add_index :movie_recommendations, [:movie_id, :recommended_movie_id], :unique => true, :name => 'recommendation_index'
  end
end
