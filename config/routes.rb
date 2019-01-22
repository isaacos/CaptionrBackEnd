Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :photos, only: [:index, :create]
      resources :comments, only: [:create]
      post '/register', to: 'users#create'
      post '/login', to: 'users#login'
    end
  end
end
