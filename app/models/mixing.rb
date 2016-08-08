class Mixing < ApplicationRecord
  belongs_to :secondary_color, class_name: "Color", foreign_key: :secondary_color_id

  belongs_to :primary_color, class_name: "Color", foreign_key: :primary_color_id

  validates :secondary_color_id, uniqueness: { scope: :primary_color_id }


end
