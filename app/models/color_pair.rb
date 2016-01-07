class ColorPair < ActiveRecord::Base
  belongs_to :base_color, foreign_key: :base_id, class_name: 'Color'
  belongs_to :accent_color, foreign_key: :accent_id, class_name: 'Color'
end
