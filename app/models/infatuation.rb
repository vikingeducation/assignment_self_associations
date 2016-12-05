class Infatuation < ApplicationRecord

  belongs_to :crush,
                    :foreign_key => :crush_id,
                    :class_name => "Person"
  belongs_to :admirer,
                    :foreign_key => :admirer_id,
                    :class_name => "Person"

end
