class Voting < ActiveRecord::Base
  belongs_to :vote_initiator, :foreign_key => :voter_id,
                              :class_name => "User"
  belongs_to :vote_recipient, :foreign_key => :recipient_id,
                              :class_name => "User"

  validates :voter_id, :uniqueness => { :scope => :recipient_id }

end
