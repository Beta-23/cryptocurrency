Rails.application.routes.draw do
  root 'home#index'
  get 'about-crypto', to: 'home#about'
  get 'search-crypto', to: 'home#search'
  post 'search-crypto' => 'home#search'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
