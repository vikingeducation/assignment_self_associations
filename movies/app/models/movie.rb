class Movie < ActiveRecord::Base

  has_many :movie_recommendations,    :foreign_key => :movie_id,
                                      :class_name => "MovieRecommendation"
  has_many :recommended_movies,       :through => :movie_recommendations,
                                      :source => :recommended_movie

  has_many :incoming_recommendations, :foreign_key => :recommended_movie_id,
                                      :class_name => "MovieRecommendation"
  has_many :recommended_by_movies,    :through => :incoming_recommendations,
                                      :source => :base_movie

end
