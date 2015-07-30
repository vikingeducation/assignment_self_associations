class Subscribing < ActiveRecord::Base

belongs_to :Subscribe_initiator, :foreign_key => :subscriber_id, :class_name => "User"

belongs_to :Subscribe_recipient, :foreign_key => :subscription_id, :class_name => "User"

end
