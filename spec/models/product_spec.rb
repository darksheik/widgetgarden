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

  it "should have a name" do
    no_name_product = Product.new(:name => '')
    no_name_product.should_not be_valid
  end

  it "should have a category" do
    no_category_product = Product.new(:category_id => nil,:name => 'Some Product')
    no_category_product.should_not be_valid
  end

end
