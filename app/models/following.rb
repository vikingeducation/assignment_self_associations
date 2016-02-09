class Following < ActiveRecord::Base
  # belongs_to :follower, class_name: 'User', foreign_key: :follower_id
  #
  # belongs_to :followed, class_name: 'User', foreign_key: :followed_id
  #
  # validates :follower_id, :uniqueness => {:scope => :follower_id}

  # The initiator side
  belongs_to :follow_initiator, foreign_key: :follower_id, class_name: "User"

  # The recipient side
  belongs_to :follow_recipient, foreign_key: :followed_id, class_name: "User"

  
  validates :follower_id, :uniqueness => {:scope => :follower_id}
end
