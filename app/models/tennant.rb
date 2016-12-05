class Tennant < ApplicationRecord
  has_many :tennants_neighbors, foreign_key: :resident_id, dependent: :nullify
  has_many :neighbors, through: :tennants_neighbors, source: :neighbor,:dependent => :nullify
end
