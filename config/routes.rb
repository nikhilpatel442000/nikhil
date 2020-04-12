Rails.application.routes.draw do
  root 'welcomes#index'
  resources :welcomes
  resources :transactions
  resources :accounts do
  	member do
      delete :destroy
  		post :pay
  	end
  end
  devise_for :users
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
