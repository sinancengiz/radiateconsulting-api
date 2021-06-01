class Store < ApplicationRecord
  has_many :store_products, dependent: :destroy
  has_many :products, through: :store_products

  # validation
  validates_presence_of :title
end
