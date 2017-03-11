class Animal < ApplicationRecord

  has_many :initiated_feastings, foreign_key: :prey_id, class_name: 'Feasting', dependent: :destroy
  has_many :received_feastings, foreign_key: :predator_id, class_name: 'Feasting', dependent: :nullify
  has_many :prey, through: :received_feastings, source: :eaten
  has_many :predators, through: :initiated_feastings, source: :eater

end
