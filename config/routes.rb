Rails.application.routes.draw do
  
  resources :items
  devise_for :users
  root 'home#index'
  get 'home/shop', to: 'home#shop', as: 'shop'
  get 'home/contact'
  get 'home/panier', to: 'home#panier', as: 'panier'
  get 'users/show'
  get 'add:id', to: 'home#add', as: 'add'
  get 'remove:id', to: 'home#remove', as:'remove'
end
