class User < ActiveRecord::Base


has_many  :subscriptions, :foreign_key => :initiator_id, 
                          :class_name => "Subscribing",
                          :dependent => :destroy #deletes user from subscriber_initiator_id in subscring join table

has_many :subscriptions_subscribed_to, :through => :subscriptions,
                                       :source => :subscriber_receiver


#describe Subscriptions
has_many  :subscribers, :foreign_key => :receiver_id, 
                                        :class_name => "Subscribing"


has_many :subscribers_subscribed_to, :through => :subscribers,
                                    :source => :subscriber_initiator,
                                    :dependent => :destroy #deletes user from subscriber_receiver_id in subscribing join table


end
