class TubeStation < ApplicationRecord


  # When acting as initiator of journey 
  has_many :initiated_journeys, class_name: "Journey", :foreign_key => :origin_id
  
  has_many :journeys_started, :through => :initiated_journeys, :source => :station_destination
 

  # When acting as recipient of journey
  has_many :received_journeys, class_name: "Journey", :foreign_key => :destination_id
  
  has_many :journeys_ended, :through => :received_journeys, :source => :station_originator

end
