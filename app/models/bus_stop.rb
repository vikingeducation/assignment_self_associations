class BusStop < ActiveRecord::Base
  #initiator side of the self referential association
  has_many :started_routes,
           foreign_key: :origin_id,
           :class_name => "Route"

  has_many :origins, through: :ended_routes,
                     :source => :origin

  #recipient side of self referential associatino

  has_many :ended_routes, foreign_key: :destination_id,
                          :class_name => "Route"

  has_many :destinations, through: :started_routes, 
                          :source => :destination


end
