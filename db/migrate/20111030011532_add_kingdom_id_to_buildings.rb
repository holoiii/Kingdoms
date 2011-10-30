class AddKingdomIdToBuildings < ActiveRecord::Migration
  def self.up
    add_column :buildings, :kingdom_id, :integer
  end

  def self.down
    remove_column :buildings, :kingdom_id, :integer
  end
end
