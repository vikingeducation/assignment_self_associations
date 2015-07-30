class Student < ActiveRecord::Base

  #Tutor Persepctive
  has_many :tutor_sessions, 
           :foreign_key => :tutor_id,
           :class_name => "Tutoring"
  has_many :learners, :through => :tutor_sessions,
                      :source => :learner

  #Learner Persepctive
  has_many :learning_sessions,
           :foreign_key => :learner_id,
           :class_name => "Tutoring"
  has_many :tutors, :through => :learning_sessions,
                    :source => :tutor

end
