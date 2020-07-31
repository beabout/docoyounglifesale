Trestle.resource(:product_types) do
  menu do
    item :product_types, icon: "fa fa-product-hunt"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |product|
    text_field :name 
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
