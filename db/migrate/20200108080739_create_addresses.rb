class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :typeofaddress
      t.string :landmark
      t.string :street
      t.string :city
      t.integer :pincode
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
