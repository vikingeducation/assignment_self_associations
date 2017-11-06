class User < ApplicationRecord
  has_many :mentorings, foreign_key: :mentor_id, class_name: 'Mentorship', dependent: :destroy
  has_many :disciples, through: :mentorings, source: :mentee

  has_many :learnings, foreign_key: :mentee_id, class_name: 'Mentorship', dependent: :destroy
  has_many :teachers, through: :learnings, source: :mentor
end
