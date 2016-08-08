class Homeowner < ApplicationRecord
  has_many :initiated_neighborings, foreign_key: :neighbor_of, class_name: 'Neighbor'

  has_many :neighboring_homeowners, through: :initiated_neighborings, source: :neighbor_initiator, dependent: :nullify


  has_many :received_neighborings, foreign_key: :neighbor_to, class_name: 'Neighbor'
  has_many :homeowners_neighbored_by, through: :received_neighborings, source: :neighbor_recipient, dependent: :nullify
end
