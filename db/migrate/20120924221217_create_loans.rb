class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :taken_at
      t.datetime :reserved_at
      t.datetime :returned_at
      t.string :status
    end
  end

  def self.down
    drop_table :loans
  end
end
