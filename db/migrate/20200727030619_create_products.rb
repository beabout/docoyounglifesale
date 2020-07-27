class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost 
      t.text :description
      t.string :size 
      t.references :vendor
    end
  end
end
