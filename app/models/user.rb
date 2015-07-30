class User < ActiveRecord::Base

has_many  :subscription, :foreign_key => :Subscribe_initiator, #why :subscriber_id
                          :class_name => "Subscribing"
has_many :subscriptions_subscribed_to, :through => :subscription,
                                      :source => :Subscribe_recipient


#describe Subscriptions
has_many  :subscribers, :foreign_key => :Subscribe_recepient, #why :subscription_id
                          :class_name => "Subscribing"
has_many :subscribers_subscribed_to, :through => :subscription,
                                      :source => :Subscribe_initiator

end
