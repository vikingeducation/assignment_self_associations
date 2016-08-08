class Station < ActiveRecord::Base
  has_many :direct_connections
  has_many :arrivals, :through => :direct_connections

  has_many :departures, :through => :direct_connections
end
