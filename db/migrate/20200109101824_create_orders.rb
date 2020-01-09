class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :orderno
      t.integer :trackingno
      t.string :paymenttype
      t.decimal :tamount
      t.datetime :orderdate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
