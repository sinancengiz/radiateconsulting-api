class Product < ApplicationRecord
  has_many :store_products, dependent: :destroy
  
  # validation
  validates_presence_of :name
  validates_presence_of :product_type
end
