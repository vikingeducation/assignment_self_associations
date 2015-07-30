class DenullifyBuyerSellerIds < ActiveRecord::Migration
  def change
    change_column :transactions, :buyer_id, :integer, :null => true
    change_column :transactions, :seller_id, :integer, :null => true
  end
end
