class Animal < ApplicationRecord
  has_many :eaters, foreign_key: :prey_id, class_name: 'Feasting', dependent: :destroy
  has_many :eatens, foreign_key: :predator_id, class_name: 'Feasting', dependent: :nullify
  has_many :prey, through: :eatens, source: :eaten
  has_many :predators, through: :eaters, source: :eater
end
