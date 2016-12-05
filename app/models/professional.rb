class Professional < ApplicationRecord
  has_many :initiated_colleagues, :foreign_key => :invitor_id,
                                  :class_name => 'ColleagueConnection'

  has_many :connected_colleagues, :through => :initiated_colleagues,
                                  :source => :inviting_colleague



  has_many :received_colleagues, :foreign_key => :invitee_id,
                                 :class_name => 'ColleagueConnection'

  has_many :connections_received, :through => :received_colleagues,
                                  :source => :receiving_colleague




end
