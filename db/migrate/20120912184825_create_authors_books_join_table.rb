class CreateAuthorsBooksJoinTable < ActiveRecord::Migration
  def self.up
    create_table :authors_books, :id =>false do |t|
      t.integer :author_id
      t.integer :book_id
    end
  end

  def self.down
  end
end
