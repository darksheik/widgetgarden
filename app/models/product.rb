class Product < ActiveRecord::Base
  attr_accessible :category_id, :name
  belongs_to :category
  has_many :prices

  validates :name, :presence => true
  validates :category_id, :presence => true
end
