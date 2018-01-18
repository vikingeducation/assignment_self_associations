class MentorsMentee < ApplicationRecord

  belongs_to :mentee, class_name: "Student"
  belongs_to :mentor, class_name: "Student"

end
