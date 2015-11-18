class Person < ActiveRecord::Base

  has_many :enrolled_students, foreign_key: :teacher_id,
                               class_name: "Enrollment"
  has_many :students, through: :enrolled_students,
                      source: :student

  has_many :assigned_teachers, foreign_key: :student_id,
                               class_name: "Enrollment"
  has_many :teachers, through: :assigned_teachers,
                      source: :teacher

end
