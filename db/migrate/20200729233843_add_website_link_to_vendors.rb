class AddWebsiteLinkToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :website_url, :string 
  end
end
