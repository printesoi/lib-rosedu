# == Schema Information
#
# Table name: loans
#
#  id          :integer          not null, primary key
#  book_id     :integer
#  taken_at    :datetime
#  reserved_at :datetime
#  returned_at :datetime
#  status      :string(255)
#

require 'spec_helper'

describe Loan do
  pending "add some examples to (or delete) #{__FILE__}"
end
