class Journey < ApplicationRecord

# The initiator side
  belongs_to :station_originator, :foreign_key => :origin_id, 
                              :class_name => "TubeStation"
#  The recipient side  
  belongs_to :station_destination, :foreign_key => :destination_id, 
                                   :class_name => "TubeStation"

  validates :origin_id, :uniqueness => { :scope => :destination_id }
end
