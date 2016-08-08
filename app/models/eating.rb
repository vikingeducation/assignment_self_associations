class Eating < ActiveRecord::Base

  belongs_to :prey, :class_name => "Animal"
  belongs_to :predator, :class_name => "Animal"

end
