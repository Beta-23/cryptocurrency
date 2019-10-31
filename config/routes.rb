Rails.application.routes.draw do
  resources :cryptos
  devise_for :users, path: '', path_names: 
            { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'home#index'
  get 'about-crypto', to: 'home#about'
  get 'search-crypto', to: 'home#search'
  post 'search-crypto' => 'home#search'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
