class DirectConnection < ActiveRecord::Base
  belongs_to :departure, :class_name => "Station", :foreign_key => :station_id
  belongs_to :arrival, :class_name => "Station", :foreign_key => :station_id

  validates :departure, :uniqueness => {:scope => :arrival}
end
