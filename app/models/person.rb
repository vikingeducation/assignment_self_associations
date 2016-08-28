class Person < ApplicationRecord

  # when acting as the buyer
  has_many :people_to_buy, :foreign_key => :buyer_id,
                              :class_name => "Selling"
  has_many :sellers,          :through => :people_to_buy,
                              :source => :seller

  # when acting as the seller
  has_many :people_to_sell,    :foreign_key => :seller_id,
                              :class_name => "Selling"
  has_many :buyers,           :through => :people_to_sell,
                              :source => :buyer


end
