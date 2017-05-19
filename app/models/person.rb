class Person < ApplicationRecord

  has_many :send_followings, 
            :class_name => "Following",
            :foreign_key => :sender_id

  has_many :followed_celebs, 
            :through => :send_followings,
            :source => :follower_acceptor

  has_many :accepted_followings, 
            :foreign_key => :acceptor_id,
            :class_name => "Following"
  has_many :users_followed_by, 
            :through => :accepted_followings,
            :source => :follower_initiator


end
