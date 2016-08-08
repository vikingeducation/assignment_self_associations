class DirectConnection < ActiveRecord::Base
  belongs_to :from_station, :class_name => "Station", :foreign_key => :departure
  belongs_to :to_station, :class_name => "Station", :foreign_key => :arrival

  validates :departure, :uniqueness => {:scope => :arrival}
end
