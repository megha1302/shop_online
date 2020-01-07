class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.string :order_type
      t.integer :total
      t.integer :tracking_number
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
