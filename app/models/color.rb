class Color < ActiveRecord::Base
  has_many :color_pairs_as_base, foreign_key: :base_id, class_name: 'ColorPair'
  has_many :accents, through: :color_pairs_as_base, source: :accent_color

  has_many :color_pairs_as_accent, foreign_key: :accent_id, class_name: 'ColorPair'
  has_many :bases, through: :color_pairs_as_accent, source: :base_color
end
