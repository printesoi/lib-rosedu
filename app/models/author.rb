# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  middle_name :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Author < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :middle_name

    has_and_belongs_to_many :books

    validates :first_name, :presence => true
    validates :last_name, :presence => true

    def full_name
        if middle_name.blank?
            "#{last_name}, #{first_name}"
        else
            "#{last_name}, #{first_name} #{middle_name}"
        end
    end
end
