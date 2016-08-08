class Station < ActiveRecord::Base
  # acting as origin station
  has_many :trips_out, :foreign_key => :departure, :class_name => "DirectConnection"
  has_many :destinations, :through => :trips_out, :source => :to_station

  # acting as destination
  has_many :trips_in, :foreign_key => :arrival, :class_name => "DirectConnection"
  has_many :origin_stations, :through => :trips_in, :source => :from_station
end
