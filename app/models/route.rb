class Route < ApplicationRecord
  belongs_to :started_routes, :foreign_key => :departure_id, :class_name => "Airport"

  belongs_to :ended_routes, :foreign_key => :arrival_id, :class_name => "Airport"

  validates :departure_id, :uniqueness => { :scope => :arrival_id }
end
