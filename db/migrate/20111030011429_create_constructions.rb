class CreateConstructions < ActiveRecord::Migration
  def change
    create_table :constructions do |t|
      t.timestamp :finish_time
      t.integer :amount
      t.integer :building_id

      t.timestamps
    end
  end
end
