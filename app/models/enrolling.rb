class Enrolling < ActiveRecord::Base

  belongs_to :enroller_initiator, foreign_key: :enroller_id, class_name: "Student"

  belongs_to :enroller_recipient, foreign_key: :professor_id, class_name: "Student"

  validates :enroller_id, uniqueness: { scope: :professor_id }

end
