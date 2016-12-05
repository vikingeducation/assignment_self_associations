class Infatuation < ApplicationRecord

  belongs_to :crush,
                    :foreign_key => :crush_id,
                    :class_name => "Person"
  belongs_to :admirer,
                    :foreign_key => :admirer_id,
                    :class_name => "Person"

  # validates :crush_id, :uniqueness => { :scope => :admirer_id }

end
