Rails.application.routes.draw do
  resources :products
  get 'products/search/:query', to: 'products#search', as: 'search_products'
end
