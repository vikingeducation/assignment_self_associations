class DogFight < ApplicationRecord

  belongs_to :attacker, :foreign_key => :attacker_id, 
                        :class_name => "StarFighter"

  belongs_to :attacked, :foreign_key => :attacker_id, 
                        :class_name => "StarFighter"

  validates :attacked_id, :uniqueness => { :scope => :attacker_id }

end
