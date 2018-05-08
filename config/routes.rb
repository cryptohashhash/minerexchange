Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :contracts do 
    resources :feedbacks 
  end

  root 'contracts#index'
  
end
