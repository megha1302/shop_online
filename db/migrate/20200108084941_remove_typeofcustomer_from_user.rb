class RemoveTypeofcustomerFromUser < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :typeofcustomer, :string
  end
end
