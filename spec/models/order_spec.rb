require 'spec_helper'

describe Order do
  
  before(:each) do
    @category = Category.create!(:name => 'Car')
    @product = Product.create!(:name => 'Jumper Cables', :category_id => @category.id)
    @price = Price.create!(:product_id => @product.id, :amount=>4.50,:from => DateTime.now-3, :to => DateTime.now-2)
    @attr = {
      }
  end
  it "should create an instance given valid attributes" do
    Order.create!(@attr)
  end
  
end
