class Enrollment < ActiveRecord::Base
  belongs_to :student, foreign_key: :student_id, 
                       class_name: "Person"
  belongs_to :teacher, foreign_key: :teacher_id, 
                       class_name: "Person"

end
