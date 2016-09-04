class Neighboring < ActiveRecord::Base
  belongs_to :neighbor_initiator, foreign_key: :neighbor_id, class_name: "House"
  belongs_to :neighbor, foreign_key: :neighboree_id, class_name: "House"  
end
