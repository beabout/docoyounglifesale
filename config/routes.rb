Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vendors, only: [:index] do 
    post :product_inquiry
    resources :products, only: [:index] 
  end

  resources :product_types, only: [:show, :index]
  resources :messages, only: [:create]

  resources :welcome do 
    get :index, on: :collection
  end 
  get "about_us" => "welcome#about_us", :as => :about_us
  get "donate" => "welcome#donate", :as => :donate
  get "categories" => "product_types#index", :as => :categories

  root 'welcome#index'
end
