class Alliance < ApplicationRecord
  #initiator side
  belongs_to :initiator_ally, 
             :foreign_key => :allier_id, 
             :class_name => 'Country'

  #recipient side
  belongs_to :recipient_ally, 
             :foreign_key => :allied_id, 
             :class_name => 'Country'

  validates :allied_id, 
            :uniqueness => { :scope => :allier_id }
end
