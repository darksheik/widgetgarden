class OrderItem < ActiveRecord::Base
  attr_accessible :order_id, :price_id
  belongs_to :order
  has_one :price
end
