class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :first_name
      t.string :last_name 
      t.string :email 
      t.string :phone_number
      t.string :company_name
      t.text :bio 
      t.timestamps
    end
  end
end
