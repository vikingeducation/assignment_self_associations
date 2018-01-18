class Student < ApplicationRecord

  has_many :mentee_relationships, class_name: "MentorsMentee", foreign_key: :mentor_id
  has_many :mentees, through: :mentee_relationships, source: :mentee, dependent: :nullify 

  has_many :mentor_relationships, class_name: "MentorsMentee", foreign_key: :mentee_id
  has_many :mentors, through: :mentor_relationships, source: :mentor, dependent: :nullify



end
