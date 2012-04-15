require 'spec_helper'

describe OrderItem do
    @category = Category.create!(:name => 'Car')
    @product = Product.create!(:name => 'Jumper Cables', :category_id => @category.id)
    @price = Price.create!(
      :from => 4.50,
      :to => 4.59,
      :product_id => @product.id)
    @user = User.create!()
    @attrs = { :user_id => @user.id }
    
    it "should create an instance given valid attributes" do
      OrderItem.create!(@attr)
    end
end
