assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Julia Herron

Thomas Lo

------------------------------------------------------------------------
Self-reflecting Student model, where a student can be a either be a professor or a student. A professor will have many students, and students can also have many professors.

  Join table: Enrollings and its Enrolling model
  Foreign Key: enroller_id and professor_id

  Initiator:
  Enrollings: belongs_to :enroller_initiator
  Student:    has_many :initiated_enrollings
  Student:    has_many :professors

  Receiver:
  Enrollings: belongs_to :enrolled_recipient
  User:       has_many :received_enrollings
  User:       has_many :enrolled_students