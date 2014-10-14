class User < ActiveRecord::Base


  #acting as the initiator of the voting
  has_many :cast_votes, :foreign_key => :voter_id,
                        :class_name => "Voting"

  has_many :voted_on_users, :through => :cast_votes,
                            :source => :vote_recipient


  #acting as the recipient of the voting
  has_many :received_votes, :foreign_key => :recipient_id,
                            :class_name => "Voting"


  has_many :voted_by_users, :through => :received_votes,
                            :source => :vote_initiator


 

end
