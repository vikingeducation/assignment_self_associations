class TennantsNeighbor < ApplicationRecord
  belongs_to :resident, foreign_key: :resident_id, class_name: "Tennant" 
  belongs_to :neighbor, foreign_key: :neighbor_id, class_name: "Tennant" 
end
