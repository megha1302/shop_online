json.extract! product, :id, :product_name, :product_price, :product_sku, :product_image, :created_at, :updated_at
json.url product_url(product, format: :json)
