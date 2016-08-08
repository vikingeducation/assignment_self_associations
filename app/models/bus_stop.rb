class BusStop < ActiveRecord::Base


  # acting as origin
  has_many :outbound_routes,
           foreign_key: :origin_id,
           class_name: "BusRoute",
           dependent: :nullify

  has_many :destinations, through: :outbound_routes, source: :destination

  # acting as destination
  has_many :inbound_routes,
            foreign_key: :destination_id,
            class_name: "BusRoute",
            dependent: :nullify

  has_many :origins, through: :inbound_routes, source: :origin

end
