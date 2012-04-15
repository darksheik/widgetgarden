require 'spec_helper'

describe Category do
  before(:each) do
    @attr = {
      :name => "Category Name"
    }
  end
  
  it "should create an instance given valid attributes" do
    Category.create!(@attr)
  end
  it "should have a name" do
    @no_name_cat = Category.new( :name => '' )
    @no_name_cat.should_not be_valid
  end
end
