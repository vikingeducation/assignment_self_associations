class Station < ActiveRecord::Base
  has_many :trips_out, :foreign_key => :departure, :class_name => "DirectConnection"
  has_many :departures, :through => :trips_out, :source => :from_station

  has_many :trips_in, :foreign_key => :arrival, :class_name => "DirectConnection"
  has_many :arrivals, :through => :trips_in, :source => :to_station
end
