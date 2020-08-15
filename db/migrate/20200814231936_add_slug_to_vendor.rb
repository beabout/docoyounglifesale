class AddSlugToVendor < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :slug, :string
    add_index :vendors, :slug, unique: true
  end
end
