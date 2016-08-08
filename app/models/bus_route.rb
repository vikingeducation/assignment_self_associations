class BusRoute < ActiveRecord::Base

  belongs_to :origin, class_name: "BusStop", foreign_key: :origin_id
  belongs_to :destination, class_name: "BusStop", foreign_key: :destination_id

end
