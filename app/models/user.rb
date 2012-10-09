# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  extra      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
    validates :first_name, :presence => true
    validates :last_name,  :presence => true
    validates :phone,      :presence => true
    validates :email,      :presence => true

    has_more :loans
end
