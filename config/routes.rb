Rails.application.routes.draw do
   authenticated :user do
  	root 'gossips#index', as: :authenticated_root
  end
  resources :gossips
  devise_for :users
  root 'static#index'

  get 'static/index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



