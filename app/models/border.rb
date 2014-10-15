class Border < ActiveRecord::Base
  belongs_to :bordered_country, :foreign_key => :bordered_id,
                                :class_name => "Country"

  belongs_to :bordering_country, :foreign_key => :bordering_id,
                                 :class_name => "Country"
end
