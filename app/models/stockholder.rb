class Stockholder < ActiveRecord::Base
  has_many :buying_transactions,   :foreign_key => :buyer_id,
                                   :class_name => "Transaction",
                                   :dependent => :destroy
  has_many :stockholders_buy_from, :through => :buying_transactions,
                                   :source => :seller

  has_many :selling_transactions,  :foreign_key => :seller_id,
                                   :class_name => "Transaction",
                                   :dependent => :nullify
  has_many :stockholders_sell_to,  :through => :selling_transactions,
                                   :source => :buyer
end
