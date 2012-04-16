require 'spec_helper'

describe Price do
  before(:each) do
    @category = Category.create!(:name => 'Car')
    @product = Product.create!(:name => 'Jumper Cables', :category_id => @category.id)
    @attrs = {
      :amount => 3.50,
      :from => DateTime.now-3,
      :to => DateTime.now-2,
      :product_id => @product.id
    }
  end
  
  it "should create an instance given valid attributes" do
    Price.create!(@attrs)
  end
  
  it "should have an amount greater than zero" do
    no_amount_price = Price.new(:amount => 0)
    no_amount_price.should_not be_valid
  end
end
