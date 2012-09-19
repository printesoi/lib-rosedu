class Author < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :middle_name

    has_and_belongs_to_many :book

    validates :first_name, :presence => true
 #   validates :last_name, :presence => true

    def name
    	first_name + ' ' + last_name
    end
end
