class MovieRecommendation < ActiveRecord::Base

  belongs_to :base_movie,         :foreign_key => :movie_id,
                                  :class_name => "Movie"

  belongs_to :recommended_movie,  :foreign_key => :recommended_movie_id,
                                  :class_name => "Movie"

  validates :recommended_movie_id, :uniqueness => { :scope => :movie_id }

end
