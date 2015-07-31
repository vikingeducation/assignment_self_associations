class Tutoring < ActiveRecord::Base

  belongs_to :tutor,
             :foreign_key => :tutor_id,
             :class_name => "Student"

  belongs_to :learner,
             :foreign_key => :learner_id,
             :class_name => "Student"

  validates :tutor_id,
        :uniqueness => { :scope => :learner_id}

end
