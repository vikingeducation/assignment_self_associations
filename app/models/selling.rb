class Selling < ApplicationRecord

  # The buyer side
  belongs_to :buyer, :foreign_key => :buyer_id,
                     :class_name => "Person"

  belongs_to :seller, :foreign_key => :seller_id,
                      :class_name => "Person"

  validates :seller_id, :buyer_id, presence: true
  validates :seller_id, :uniqueness => { :scope => :buyer_id }

end
