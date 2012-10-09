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

require 'spec_helper'

describe Author do

    before(:each) do
        @attrs = { :first_name => "First", :last_name => "Last", :middle_name => "Middle" }
    end

    it "should create a new instance given a valid attribute" do
        Author.create!(:first_name => "First", :last_name => "Last", :middle_name => "Middle")
    end

    it "should require first name" do
        no_name_author = Author.new(@attrs.merge(:first_name => ""))
        no_name_author.should_not be_valid
    end

    it "should require last name" do
        no_name_author = Author.new(@attrs.merge(:last_name => ""))
        no_name_author.should_not be_valid
    end
end
