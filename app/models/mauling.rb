class Mauling < ApplicationRecord
  belongs_to :mauler, :class_name => "Tiger"
  belongs_to :maulee, :class_name => "Tiger" 
end
