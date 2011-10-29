class AddUserIdToKingdoms < ActiveRecord::Migration
  def self.up
    add_column :kingdoms, :user_id, :integer
  end

  def self.down
    remove_column :kingdoms, :user_id, :integer
  end
end
