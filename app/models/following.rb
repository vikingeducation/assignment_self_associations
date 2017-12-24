class Following < ApplicationRecord

  # Associations for the follower
  belongs_to :followed_user, class_name: :User, foreign_key: :followee_id


  # Associations for the followee
  # belongs_to :follower, class_name: :User, foreign_key: :follower_id


end
