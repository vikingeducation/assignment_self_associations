class Tiger < ApplicationRecord
  has_many :mauls, :class_name => "Mauling", :foreign_key => :mauler_id, :dependent => :destroy
  has_many :maulees, :through => :mauls

  has_many :maulings, :foreign_key => :maulee_id, :dependent => :destroy
  has_many :maulers, :through => :maulings
end
