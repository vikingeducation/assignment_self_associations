class Animal < ActiveRecord::Base

  has_many :prey_eatings, :foreign_key => :predator_id, :class_name => "Eating"
  has_many :preys, :through => :prey_eatings, :source => :prey, dependent: :destroy

  has_many :predator_eatings, :foreign_key => :prey_id, :class_name => "Eating"
  has_many :predators, :through => :predator_eatings, :source => :predator, dependent: :destroy

end
