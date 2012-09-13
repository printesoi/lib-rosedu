class Book < ActiveRecord::Base
  attr_accessible :title, :isbn
  
  has_and_belongs_to :author
end
