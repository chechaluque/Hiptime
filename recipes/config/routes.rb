Rails.application.routes.draw do

  get 'show/:id', to: 'pages#show', as: 'showlist'
  devise_for :chefs
  resources :recipes
  root 'pages#home'

end
