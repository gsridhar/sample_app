class Product < ActiveRecord::Base
  attr_accessible :content, :product_id, :user_id
  belongs_to :user
  validates :product_id,presence: true

  validates :content,presence: true, length: { maximum: 250 }

  default_scope order: 'products.created_at DESC'

end
