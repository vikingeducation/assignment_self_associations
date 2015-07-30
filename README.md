assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...


Subscribers has many subscription or subscriptions_subscribed_to

Subscription has many subscribers  or subscribers_subscribed_to


class User
#describe Subscribers 
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

Table Subscribing

belongs_to :Subscribe_initiator, :foreign_key => :subscriber_id, :class_name => "User"

belongs_to :Subscribe_recipient, :foreign_key => :subscription_id, :class_name => "User"

