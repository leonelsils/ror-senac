Rails.application.routes.draw do

  devise_for :users
  
  get 	'donations' => 'welcome#index', as: :donations
  post 	'donations' => 'donation#create'
  get 	'donation/new', as: :new_donation
  get 	'donation/:id' => 'donation#show', as: :donation

  root to:  'welcome#index'
end
