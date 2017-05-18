class Person < ApplicationRecord

  has_many :accepted_followings, 
            :foreign_key => :follower_id,
            :class_name => "Followings"
  has_many :followers, 
            :through => "Followings", 
            :source => :sender_id

  has_many :send_followings, 
            :foreign_key => :celeb_id, 
            :class_name => "Followings"
  has_many :celebs, 
            :through => "Followings", 
            :source => :acceptor_id

end
