class Boxer < ActiveRecord::Base
  # for the challenger
  has_many :matches_as_challenger, :foreign_key => :challenger_id,
                                   :class_name => "BoxingMatch"
  has_many :champions_challenged, :through => :matches_as_challenger,
                                  :source => :champion

  # for the champion
  has_many :matches_as_champion, :foreign_key => :champion_id,
                                 :class_name => "BoxingMatch"
  has_many :challengers, :through => :matches_as_champion,
                         :source => :challenger
end
