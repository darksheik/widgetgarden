class Price < ActiveRecord::Base
  attr_accessible :amount, :from, :product_id, :to
end
