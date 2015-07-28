class MovieRecommendation < ActiveRecord::Base

  belongs_to :base_movie,         :foreign_key => :movie_id
  belongs_to :recommended_movie,  :foreign_key => :recommended_movie_id

  validates :movie_id, :uniqueness => { :scope => :recommended_movie_id }

end
