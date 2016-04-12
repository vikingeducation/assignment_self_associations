class BoxingMatch < ActiveRecord::Base
  belongs_to :champion, :foreign_key => :champion_id,
                        :class_name => "Boxer"

  belongs_to :challenger, :foreign_key => :challenger_id,
                          :class_name => "Boxer"

  # There can be lots of duplicate fights in real life between champ and challenger in real life but for the sake of practice, i'll make it unique here. 
  validates :champion_id, :uniqueness => { :scope => :challenger_id }
end
