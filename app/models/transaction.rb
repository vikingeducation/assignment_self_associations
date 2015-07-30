class Transaction < ActiveRecord::Base
  belongs_to :buyer,  :foreign_key => :buyer_id,
                      :class_name => "Stockholder"

  belongs_to :seller, :foreign_key => :seller_id,
                      :class_name => "Stockholder"
end
