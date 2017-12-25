class Following < ApplicationRecord

  # Required for the Initiator side: a follower
  belongs_to :followee, # matches the source alias in the user model
             :foreign_key => :followee_id, # identifies the column name in this table
             :class_name => "User" # identifies the class it points to

  # Required for the Recipient side: a followee
  belongs_to :follower, # matches the source alias in the user model
             :foreign_key => :follower_id, # identifies the column name in this table
             :class_name => "User" # identifies the class it points to

  validates :followee_id,
            :uniqueness => { :scope => :follower_id }


end
