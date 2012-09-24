# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120924221217) do

  create_table "authors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_books", :id => false, :force => true do |t|
    t.integer "author_id"
    t.integer "book_id"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "cover_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "year"
    t.string   "publishing_house"
    t.integer  "edition",          :default => 0
    t.integer  "pages"
    t.integer  "total_count"
    t.integer  "taken_count"
    t.integer  "reserved_count"
  end

  create_table "books_categories", :id => false, :force => true do |t|
    t.integer "book_id"
    t.integer "category_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", :force => true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "taken_at"
    t.datetime "reserved_at"
    t.datetime "returned_at"
    t.string   "status"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "extra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
