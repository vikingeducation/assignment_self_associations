class Following < ApplicationRecord
  #follower side
  belongs_to :following_initiator, :foreign_key => :follower_id, class_name: "User"

  #leader side
  belongs_to :following_recipient, :foreign_key => :leader_id, class_name: "User"

  validates :leader_id, :uniqueness => { :scope => :follower_id }
end
