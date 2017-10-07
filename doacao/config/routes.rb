Rails.application.routes.draw do

  devise_for :users
  get 'donations' => 'donation#index'
  get 'donation/new' => 'donation#new', as: :new_donation

  root to:  'welcome#index'
end
