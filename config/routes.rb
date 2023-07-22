Rails.application.routes.draw do
  get 'search', to: "search#index"
  devise_for :users
  root to: "pages#home"
  get '/profile', to: 'pages#profile', as: :profile_path

  resources :rooms, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :show]
  end
  resources :bookings, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
