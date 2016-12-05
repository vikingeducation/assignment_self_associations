class Tennant < ApplicationRecord
  has_many :neighbors, :through => :tennants_neighbors
  has_many :tennants_neighbors
end
