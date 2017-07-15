Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Products of routes
   get "products" => 'products#index', as: :products
   get 'products/new' => 'products#new', as: :new_product

  root :to => "welcome#index"
end