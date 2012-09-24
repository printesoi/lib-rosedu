class CreateBooksCategoriesJoin < ActiveRecord::Migration
  def self.up
      create_table :books_categories, :id => false do |t|
          t.integer :book_id
          t.integer :category_id
      end
  end

  def self.down
      drop_table :books_categories
  end
end
