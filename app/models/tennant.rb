class Tennant < ApplicationRecord
  has_many :tennants_neighbors
  has_many :neighbors, through: :tennants_neighbors, source: :neighbor
end
