require 'spec_helper'

describe Price do
  before(:each) do
    @category = Category.create!(:name => 'Car')
    @product = Product.create!(:name => 'Jumper Cables', :category_id => @category.id)
    @attrs = {
      :from => 4.50,
      :to => 4.59,
      :product_id => @product.id
    }
  end
  
  it "should create an instance given valid attributes" do
    Price.create!(@attrs)
  end
end
