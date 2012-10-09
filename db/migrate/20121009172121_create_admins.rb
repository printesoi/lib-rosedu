class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :extra
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
