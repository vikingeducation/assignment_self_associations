class Route < ActiveRecord::Base
  belongs_to :origin,
             :foreign_key => :origin_id,
             :class_name => "BusStop"

  belongs_to :destination,
             :foreign_key => :destination_id,
             :class_name => "BusStop"

  validates :origin_id, uniqueness: { :scope  => :destination_id }
end
