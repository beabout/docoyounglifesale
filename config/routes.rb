Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vendors do 
    resources :products
  end

  resources :welcome do 
    get :index, on: :collection
    # get :about_us, on: :collection
    # get :donate, on: :collection
  end 

  get "about_us" => "welcome#about_us", :as => :about_us
  get "donate" => "welcome#donate", :as => :donate
  root 'welcome#index'
end
