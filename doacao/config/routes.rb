Rails.application.routes.draw do

  devise_for :users
  get 'donations' => 'donation#index'

  root to:  'welcome#index'
end
