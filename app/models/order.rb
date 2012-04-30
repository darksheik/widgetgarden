class Order < ActiveRecord::Base
  attr_accessible :status, :user_id
  belongs_to :user
  has_many :orderitems

  validates :user_id, :presence => true
end
