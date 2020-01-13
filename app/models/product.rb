class Product < ApplicationRecord
    has_many :orders , through: :order_product
    has_many :order_products

    def self.search(search)
        if search
            where(["name LIKE?","%#{search}%"])
        else
            all
        end
    end 
          
end
