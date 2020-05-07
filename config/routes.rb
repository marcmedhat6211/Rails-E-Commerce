Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  # devise_for :users, path: 'user', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register'  }
  devise_scope :user do
    get "/user/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/user/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  resources :brands
  resources :categories
  # Below for all other routes:
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
