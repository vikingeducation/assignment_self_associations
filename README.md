assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

***

###Linked'n

professional
  has_many :colleague_connections
  has_many :colleagues, :through => :colleague_connections
  
colleague_connections





user
  student
    has_many :courses
      through => :courses,
              :source => :user
  teacher
    has_many :courses
    through => :classes,
          :source => :user

course
