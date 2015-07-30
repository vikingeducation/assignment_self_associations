class User < ActiveRecord::Base

has_many  :subscriptions, :foreign_key => :subscriber_initiator_id, #why :subscriber_id
                          :class_name => "Subscribing"
has_many :subscriptions_subscribed_to, :through => :subscriptions,
                                       :source => :subscriber_receiver


#describe Subscriptions
has_many  :subscribers, :foreign_key => :subscriber_receiver_id, #why :subscription_id
                                        :class_name => "Subscribing"
has_many :subscribers_subscribed_to, :through => :subscribers,
                                      :source => :subscriber_initiator

end
