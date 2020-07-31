class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :site_name
      t.string :site_url
      t.references :vendor
    end
  end
end
