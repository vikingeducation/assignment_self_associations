class Person < ApplicationRecord


has_many :sender_receiver_receivings, :class_name => "Following", :foreign_key => :sender_id
has_many :one_who_sent_invites, :through => :sender_receiver_receivings, :source => :acceptor, :dependent => :destroy

has_many :sender_receivers_sendings, :class_name => "Following", :foreign_key => :acceptor_id
has_many :one_who_accepted_invites, :through => :sender_receivers_sendings, :source => :initiator




# ============================= way to imagine this
# let's just imagine we have two different classes and two different join tables!!!
# # one_who_accepted_invites ============
# class initiator
# has_many :sender_receiver_receivings, :class_name => "Following"
# has_many :one_who_sent_invites, :through => :sender_receiver_receivings, :source => :acceptor

# # Join_table sender_receiver ---- sender_receivers_receive
# belongs_to :initiator, :class_name => "Person", :foreign_key => :sender_id


# # has_many :one_who_sent_invites ===========
# class acceptor
# has_many :sender_receivers_sendings, :class_name => "Following"
# has_many :one_who_accepted_invites, :through => :sender_receivers_sendings, :source => :initiator


# # Join_table sender_receiver ---- sender_receivers_send
# belongs_to :acceptor, :class_name => "Person", :foreign_key => :acceptor_id


end
