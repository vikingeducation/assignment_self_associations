class User < ActiveRecord::Base

  # has_many :followings, foreign_key: :followed_id
  # has_many :followeds, through: :followings, source: :follower
  #
  # has_many :followings, foreign_key: :follower_id
  # has_many :followers, through: :followings,
  #   source: :followed

  # When acting as the initiator of the following (A User follows another)
  has_many :initiated_followings,
    foreign_key: :follower_id,
    class_name: "Following"
  has_many :followed_users,
    through: :initiated_followings,
    source: :follow_recipient

  # When acting as the recipient of the following (A User is followed by another)
  has_many :received_followings,
    foreign_key: :followed_id,
    class_name: "Following"
  has_many :users_followed_by,
    through: :received_followings,
    source: :follow_initiator

end
