Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    # get 'cameras', to: 'cameras#index'
  end
  get 'cameras', to: 'cameras#index'
end
