assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Colors
  # secondary colors
  has_many :mixing_results, foreign_key: :secondary_color_id, class_name: "Mixing"
  has_many :primary_colors, through: :mixing_results, source: :primary_color

  # primary colors
  has_many :mixing_ingredients, foreign_key: :primary_color_id, class_name: "Mixing"
  has_many :secondary_colors, through: :mixing_ingredients, source: :secondary_color

Mixings
  primary_color_id
  secondary_color_id

  belongs_to :secondary_color, class_name: "Color", foreign_key: :secondary_color_id

  belongs_to :primary_color, class_name: "Color", foreign_key: :primary_color_id

  validates :secondary_color_id, :uniqueness: { scope: :primary_color_id }
