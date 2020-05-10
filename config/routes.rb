Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  devise_for :users
  get 'pages/search' => 'pages#search', :as => 'search_page'
  get 'orders/checkout' => 'orders#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

