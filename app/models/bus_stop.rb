class BusStop < ActiveRecord::Base


  # acting as origin
  has_many :bus_routes, foreign_key: :origin_id
  has_many :destinations, through: :bus_routes, source: :destination

  # acting as destination
  has_many :bus_routes, foreign_key: :destination_id
  has_many :origins, through: :bus_routes, source: :origin

end
