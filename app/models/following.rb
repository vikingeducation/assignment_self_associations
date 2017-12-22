class Following < ApplicationRecord

  # the initiation side
  belongs_to :follower, class_name: :User, foreign_key: :follower_id

  # the receiving side
  belongs_to :followee, class_name: :User, foreign_key: :followee_id

end
