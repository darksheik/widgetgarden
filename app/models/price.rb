class Price < ActiveRecord::Base
  attr_accessible :amount, :from, :product_id, :to
  belongs_to :orderitem
  
  validates :amount, :presence => true
  validates_numericality_of :amount, :greater_than => 0
end
