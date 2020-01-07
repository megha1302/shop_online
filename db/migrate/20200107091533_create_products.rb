class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.decimal :product_price
      t.integer :product_sku
      t.blob :product_image

      t.timestamps
    end
  end
end
