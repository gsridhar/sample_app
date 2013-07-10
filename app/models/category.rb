class Category < ActiveRecord::Base
  attr_accessible :category_id, :product_id, :productname,:content
  validates :product_id, presence: true
  has_many :microposts, dependent: :destroy
end
