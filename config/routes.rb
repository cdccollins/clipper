Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }

  resources :users, only: [:show]
  resources :videos do
    resources :transactions, only: [:new, :create]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
