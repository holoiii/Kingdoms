class AddKingdomIdToResource < ActiveRecord::Migration
  def self.up
    add_column :resources, :kingdom_id, :integer
  end

  def self.down
    remove_column :resources, :kingdom_id, :integer
  end
end
