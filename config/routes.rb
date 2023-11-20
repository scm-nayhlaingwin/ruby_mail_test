Rails.application.routes.draw do
  resources :users
  root "pages#index"
  get 'signup', to: 'users#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  # Allow generating absolute urls with routing url helpers.
  Rails.application.routes.default_url_options[:host] = 'localhost:3000'
end
