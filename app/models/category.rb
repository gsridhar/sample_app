class Category < ActiveRecord::Base
  attr_accessible :category_id, :product_id
  validates :product_id, presence: true
end
