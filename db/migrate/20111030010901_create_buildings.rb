class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.integer :amount
      t.integer :build_time
      t.integer :rate
      t.string :name
      t.integer :gold_cost
      t.integer :stone_cost
      t.integer :wood_cost
      t.integer :wheat_cost
      t.integer :gem_cost

      t.timestamps
    end
  end
end
