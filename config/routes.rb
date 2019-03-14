Rails.application.routes.draw do

  get '/' => 'home#index'

  resources :stories do
    member do
      get :edit_body
    end
    resources :characters
  end
end
