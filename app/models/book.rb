class Book < ActiveRecord::Base
  attr_accessible :title, :isbn, :cover_link
  
  has_and_belongs_to_many :author
end
