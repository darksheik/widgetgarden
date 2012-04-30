require 'spec_helper'

describe Order do

  before(:each) do
    @user = User.create!(:name => 'Don')
    @category = Category.create!(:name => 'Car')
    @product = Product.create!(:name => 'Jumper Cables', :category_id => @category.id)
    @price = Price.create!(:product_id => @product.id, :amount=>4.50,:from => DateTime.now-3, :to => DateTime.now-2)
    @attr = {
      :user_id => @user.id
      }
  end
  it "should create an instance given valid attributes" do
    Order.create!(@attr)
  end

  it "should have a user" do
    no_user_order = Order.new(@attr)
    no_user_order.user_id = nil
    no_user_order.should_not be_valid
  end

end
