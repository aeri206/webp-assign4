Rails.application.routes.draw do
  root 'article#index'
  get 'article/restaurant'
  get 'article/city'
  get 'restaurant/new' => 'restaurant#new'
  post 'restaurant/new' => 'restaurant#create'

  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
