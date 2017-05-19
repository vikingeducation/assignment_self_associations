class Following < ApplicationRecord

  #initiating following others side
  belongs_to :follower_initiator, 
              :class_name => "Person", 
              :foreign_key => :sender_id

  #accepting followers side
  belongs_to :follower_acceptor, 
              :class_name => "Person", 
              :foreign_key => :acceptor_id



  validates :acceptor_id, :uniqueness => { :scope => :sender_id}

end
