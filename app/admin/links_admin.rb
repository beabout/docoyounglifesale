Trestle.resource(:links) do
  menu do
    item :links, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :site_name
    column :site_url
    column :vendor
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |product|
    text_field :site_name, label: 'Site Name', placeholder: 'ex. Instagram'
    text_field :site_url, label: 'Site URL', placeholder: 'ex. https://instagram.com/beabout.it/'
    select :vendor_id, Vendor.all, include_blank: true
  end
end
