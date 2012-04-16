class Cart < ActiveRecord::Base
  attr_accessible :product_id, :user_id
  belongs_to :user
  has_many :prices
end
