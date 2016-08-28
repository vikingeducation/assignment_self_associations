class Person < ApplicationRecord

  # when acting as the buyer
  has_many :sellings, :foreign_key => :buyer_id,
                      :class_name => "Selling"
  has_many :sellers,  :through => :sellings,
                      :source => :seller

  # when acting as the seller
  has_many :sellings, :foreign_key => :seller_id,
                      :class_name => "Selling"
  has_many :buyers,   :through => :sellings,
                      :source => :buyer


end
