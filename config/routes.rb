Rails.application.routes.draw do

  get '/' => 'home#index'

  resources :stories

end
