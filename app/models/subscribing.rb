class Subscribing < ActiveRecord::Base

include ActiveModel::Validations

belongs_to :subscriber_initiator, :foreign_key => :initiator_id, :class_name => "User"

belongs_to :subscriber_receiver, :foreign_key => :receiver_id, :class_name => "User"

validates_with MyValidator 

validates :initiator_id, uniqueness: {scope:  :receiver_id}
validates :receiver_id, uniqueness: {scope:  :initiator_id}


end
