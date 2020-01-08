class Order < ApplicationRecord
  attr_accessor :products_attributes, :order_products_attributes
  has_many :products, through: :order_products
  has_many :order_products
  accepts_nested_attributes_for :products
  accepts_nested_attributes_for :order_products
end
