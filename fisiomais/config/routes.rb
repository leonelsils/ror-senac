Rails.application.routes.draw do
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	#Products of routes
  	get 	'products' 				=> 'products#index', 	as: :products
  	post 	'products' 				=> 'products#create'
  	get 	'products/new' 			=> 'products#new', 		as: :new_product
  	get 	'product/:id/edit'	 	=> 'products#edit', 	as: :edit_product
  	get 	'author/:id' 			=> 'products#show',		as: :product
	patch 	'product/:id' 			=> 'products#update'

  	root :to => 'welcome#index'
end