class Product < ApplicationRecord
    has_many :orders , through: :order_product
    has_many :order_products
end
