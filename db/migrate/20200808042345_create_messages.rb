class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :email
      t.string :phone_number
      t.references :product
      t.text :note
    end
  end
end
