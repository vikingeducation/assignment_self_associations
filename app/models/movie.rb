class Movie < ActiveRecord::Base

  # As initial movie, finding similar movies:
  has_many :initiated_similarities, 
            foreign_key: :similarity_id,
            class_name: 'Similar'

  has_many :similar_movies, 
            through: :initiated_similarities,
            source: :movie_recipient

  # As similar movie, from initial movie
  has_many :received_similarities,
            foreign_key: :similar_id,
            class_name: 'Similar'

  has_many :movie_similarities,
            through: :received_similarities,
            source: :movie_initiator
end
