class Subscribing < ActiveRecord::Base

belongs_to :subscriber_initiator, :foreign_key => :subscriber_initiator_id, :class_name => "User"

belongs_to :subscriber_receiver, :foreign_key => :subscriber_receiver_id, :class_name => "User"

end
