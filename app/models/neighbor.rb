class Neighbor < ApplicationRecord
  belongs_to :neighbor_initiator, foreign_key: :neighbor_to, class_name: 'Homeowner'
  belongs_to :neighbor_recipient, foreign_key: :neighbor_of, class_name: 'Homeowner'
end
