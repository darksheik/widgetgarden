require 'spec_helper'

describe Product do  
  before(:each) do
    @category = Category.create!(:name => 'Category Name')
    @attr = {
      :category_id => @category.id,
      :name => "Category Name"
    }
  end
  
  it "should create an instance given valid attributes" do
    Product.create!(@attr)
  end
end
