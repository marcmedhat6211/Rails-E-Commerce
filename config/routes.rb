Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  devise_for :users, path: 'user', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
