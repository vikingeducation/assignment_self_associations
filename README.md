assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Alice & Garrett

1) students

    students to students  => X:X (tutor, learner)

2) student: has_many :tutoring_sessions, class_name: "tutoring",
                                      foreign_key: :tutor_id
            has_many :learners, through: :tutored_students, source: learner

            has_many :learning_sessions, class_name: "tutoring",
                                      foreign_key: :tutor_id
            has_many :tutors, through: tutorings, source: tutor

JOIN TABLE = tutorings
  belongs_to tutor, class_name: student, foreign_key: tutor_id

  belongs_to learner, class_name: student, foreign_key: learner_id


columns: tutor_ID, learner_ID

student: id, name, subject