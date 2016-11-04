class Airport < ApplicationRecord
  has_many :started_routes, :foreign_key => :departure_id, :class_name => "Route"
  has_many :departures, :through => :ended_routes, :source => :departures

  has_many :ended_routes, :foreign_key => :arrival_id, :class_name => "Route"
  has_many :arrivals, :through => :started_routes, :source => :arrivals
end
