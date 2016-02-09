class Similar < ActiveRecord::Base

  belongs_to :movie_initiator,
              foreign_key: :similarity_id,
              class_name: 'Movie'

  belongs_to :movie_recipient,
              foreign_key: :similar_id,
              class_name: 'Movie'

  validates :similar_id, uniqueness: 
            { scope: :similarity_id }
end
