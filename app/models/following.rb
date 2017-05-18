class Following < ApplicationRecord

  belongs_to :acceptor_followings, 
              :class_name => "Person", 
              :foreign_key => :acceptor_id

  belongs_to :sender_followings, 
              :class_name => "Person", 
              :foreign_key => :sender_id

  validates :acceptor_id, :uniqueness => { :scope => :sender_id}

end
