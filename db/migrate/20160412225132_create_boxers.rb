class CreateBoxers < ActiveRecord::Migration
  def change
    create_table :boxers do |t|

      t.timestamps null: false
    end
  end
end
