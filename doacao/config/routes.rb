Rails.application.routes.draw do

  get 'donations' => 'donation#index'

  root to:  'welcome#index'
end
