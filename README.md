assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Tingting

Alliances join table
  allier
  allied

Country model

allier allies the allied, creating an alliance

class Country
  #when acting as initiator of alliance
  has_many :initiated_alliances, :foreign_key => :id_when_allier, :class_name => 'Alliance'
  has_many :allied_countries, :through => 'initiated_alliances', :source => :recipient_ally

  #when acting as recipient of alliance
  has_many :received_alliances, :foreign_key => :id_when_allied, :class_name => 'Alliance'
  has_many :allier_countries, :through -> 'initiated_alliances', :source => :initiator_ally

end

class Alliance
  #initiator side
  belongs_to :initiator_ally, :foreign_key => :id_when_allier, :class_name => 'Country'

  #recipient side
  #belongs_to :recipient_ally, :foreign_key => :id_when_allied, :class_name => 'Country'

  validates :id_when_allied, :uniqueness => { :scope => :id_when_allier }
end




