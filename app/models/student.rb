class Student < ActiveRecord::Base

  # initiator
  has_many :initiated_enrollings, foreign_key: :enroller_id, class_name: "Enrolling"

  has_many :professors, through: :initiated_enrollings, source: :enroller_recipient


  # receiver
  has_many :received_enrollings, foreign_key: :professor_id, class_name: "Enrolling"

  has_many :enrolled_students, through: :received_enrollings, source: :enroller_initiator, dependent: :destroy


end
