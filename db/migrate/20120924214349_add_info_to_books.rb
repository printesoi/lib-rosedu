class AddInfoToBooks < ActiveRecord::Migration
  def self.up
      add_column :books, :year, :integer
      add_column :books, :publishing_house, :string
      add_column :books, :edition, :integer, :default => 0
      add_column :books, :pages, :integer
      add_column :books, :total_count, :integer
      add_column :books, :taken_count, :integer
      add_column :books, :reserved_count, :integer
  end

  def self.down
      remove_column :books, :year
      remove_column :books, :publishing_house
      remove_column :books, :edition
      remove_column :books, :pages
      remove_column :books, :total_count
      remove_column :books, :taken_count
      remove_column :books, :reserved_count
  end
end
