class Color < ApplicationRecord
   # secondary colors
  has_many :mixing_results, foreign_key: :secondary_color_id, class_name: "Mixing"
  has_many :primary_colors, through: :mixing_results, source: :primary_color, dependent: :destroy

  # primary colors
  has_many :mixing_ingredients, foreign_key: :primary_color_id, class_name: "Mixing"
  has_many :secondary_colors, through: :mixing_ingredients, source: :secondary_color, dependent: :destroy
end
