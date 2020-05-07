Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  ##CATEGORIES ROUTES##
  resources :categories

  ##BRANDS ROUTES##
  resources :brands

  ##PRODUCTS ROUTES##
  resources :products

  devise_for :users
end
