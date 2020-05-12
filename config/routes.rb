Rails.application.routes.draw do

  get 'carts/index'
  get 'cart/index'

  ##ADMIN ROUTE##
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  ##LANDING ROUTES##
  root 'welcome#index'
  get 'welcome/index'
  resources :welcome
  
  # devise_for :users, path: 'user', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register'  }
  devise_scope :user do
    get "/user/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/user/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  ##ORDERS ROUTES##
  resources :orders
  
  ##CATEGORIES ROUTES##
  resources :categories

  ##CARTS ROUTES##  
  resources :carts
  # delete 'carts/checkout' 

  ##PRODUCTS ROUTES##
  resources :products
  
  # get 'products/category_products'
  get ':controller(/:action(/:category_id))'
  get ':controller(/:action(/:brand_id))'

  ##BRANDS ROUTES##
  resources :brands
  
  ##STORES ROUTES##
  resources :stores
  

  # Below for all other routes:
  devise_for :users
  get 'pages/search' => 'pages#search', :as => 'search_page'
  get 'orders/checkout' => 'orders#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

