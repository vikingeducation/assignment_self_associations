class User < ApplicationRecord
  #Initiator side
  has_many :intiated_followings, :foreign_key => :follower_id, class_name: "Following", :dependent => :destroy
  has_many :leaders, :through => :intiated_followings, :source => :following_recipient

  #Recepient side
  has_many :recieved_followings, :foreign_key => :leader_id, class_name: "Following", :dependent => :destroy
  has_many :followers, :through => :recieved_followings, :source => :following_initiator
end
