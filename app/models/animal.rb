class Animal < ActiveRecord::Base

  has_many :devourings_of_prey, :foreign_key => :devourer_id,
                                :class_name => "Devourment"

  has_many :devoured_animals,   :through => :devourings_of_prey,
                                :source  => :devouree


  has_many :devourments_suffered, :foreign_key =>:devouree_id,
                                  :class_name => "Devourment"
  has_many :animals_devoured_by,  :through => :devourments_suffered,
                                  :source => :devourer

end
