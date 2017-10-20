class Following < ApplicationRecord


belongs_to :initiator, :class_name => "Person", :foreign_key => :sender_id

belongs_to :acceptor, :class_name => "Person", :foreign_key => :acceptor_id


end

