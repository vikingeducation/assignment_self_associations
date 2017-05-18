assignment_self_associations
============================

Dariusz Biskupski

Twitter style social website

People aka followers, followed_by, following

Table -> Person - who can be follower
Table -> Person - here the same guy can be followed
JoinTable -> followings

Class Person

has_many :accepted_followings, :foreign_key => :follower_id,:class_name => "Followings"
has_many :followers, :through => "Followings", :source => :sender_id 

has_many :send_followings, :foreign_key => :celeb_id, :class_name => "Followings"
has_many :celebs, :through => "Followings", :source => :acceptor_id

Class Followings

belongs_to :acceptor_followings, :class_name => "Person", :foreign_key => :acceptor_id

belongs_to :sender_followings, :class_name => "Person", :foreign_key => sender_id



This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...
