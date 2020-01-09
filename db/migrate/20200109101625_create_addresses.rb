class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :addtype
      t.string :street
      t.string :city
      t.integer :pincode
      t.string :state
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
