Trestle.resource(:vendors) do
  menu do
    item :vendors, icon: "fa fa-address-book"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :full_name
    column :company_name 
    column :email 
    actions
  end

  active_storage_fields do
    [:avatar]
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |vendor|
    tab :details do 
      row do
        col { text_field :first_name }
        col { text_field :last_name }
      end
      row do 
        col { text_field :company_name }
        col { text_field :website_url, label: "Personal Site URL", placeholder: 'http://somesiteurl.com'}
      end
      row do 
        col { text_field :email }
        col { text_field :phone_number }
      end 
      text_area :bio 
      active_storage_field :avatar
    end

    tab :products do
      table vendor.products, admin: :products do
        column :name
        column :cost 
        column :size 
        column :vendor 
      end
      concat admin_link_to("New Product", admin: :products, action: :new, params: { vendor_id: vendor}, class: "btn btn-success")
    end

    tab :links do 
      table vendor.links, admin: :links do
        column :site_name
        column :site_url
      end
      concat admin_link_to("New Link", admin: :links, action: :new, params: { vendor_id: vendor}, class: "btn btn-success")
    end
  end
end
