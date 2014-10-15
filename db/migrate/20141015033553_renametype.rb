class Renametype < ActiveRecord::Migration
  def change
    rename_column :animals, :type, :kind
  end
end
