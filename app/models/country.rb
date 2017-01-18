class Country < ApplicationRecord
  # when acting as initiator of alliance
  has_many :initiated_alliances, :foreign_key => :allier_id, 
                                 :class_name => 'Alliance'
  has_many :allied_countries, :through => :initiated_alliances, 
                              :source => :recipient_ally

  # when acting as recipient of alliance
  has_many :received_alliances, :foreign_key => :allied_id, 
                                :class_name => 'Alliance'
  has_many :allier_countries, :through => :received_alliances, 
                              source: :initiator_ally
end
