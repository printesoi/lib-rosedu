class RemoveUserIdFromLoans < ActiveRecord::Migration
  def self.up
    remove_column :loans, :user_id
  end

  def self.down
    add_column :loans, :user_id, :integer
  end
end
