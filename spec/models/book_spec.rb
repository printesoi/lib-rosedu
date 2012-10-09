# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  isbn             :string(255)
#  cover_link       :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  year             :integer
#  publishing_house :string(255)
#  edition          :integer          default(0)
#  pages            :integer
#  total_count      :integer
#  taken_count      :integer
#  reserved_count   :integer
#

require 'spec_helper'

describe Book do
  pending "add some examples to (or delete) #{__FILE__}"
end
