class StarFighter < ApplicationRecord

  has_many :dog_fights 
  has_many :attacked, :through => :dog_fights

  has_many :dog_fights 
  has_many :attackers, :through => :dog_fights

end
