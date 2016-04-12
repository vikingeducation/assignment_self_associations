class ChangeNameOfBoxerTableToBoxers < ActiveRecord::Migration
  def change
    rename_table :boxer, :boxers
  end
end
