class House < ActiveRecord::Base
  # When acting as the initiator of the neighboring, start at reference_house
  has_many :reference_houses,
             foreign_key: :neighbor_id,
             class_name: "Neighboring"
  has_many :neighbors,
             through: :reference_houses,
             source: :neighbor,
            #  dependent: :nullify

  # When acting as the recipient of the neighboring
  has_many :neighboring_houses,
             foreign_key: :neighboree_id,
             class_name: "Neighboring"
  has_many :houses_neighbored_by,
             through: :neighboring_houses,
             source: :neighbor_initiator,
             dependent: :nullify
end
