class CreateProductTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_types do |t|
      t.string :name 
    end

    add_column :products, :product_type_id, :integer
  end
end
