Trestle.resource(:products) do
  menu do
    item :products, icon: "fa fa-shopping-bag"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :cost 
    column :size 
    column :vendor 
    column :product_type
    actions
  end

  active_storage_fields do
    [:image]
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |product|
    select :vendor_id, Vendor.all, default: "choose a product type", include_blank: true 
    select :product_type_id, ProductType.all, label: "Product Type", include_blank: true
    row do
      col { text_field :name }
      col { text_field :size }
    end
    active_storage_field :image
    text_field :cost
    text_area :description
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
