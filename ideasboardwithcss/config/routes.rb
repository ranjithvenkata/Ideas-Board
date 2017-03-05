Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end

  resources :users do
    resources :posts do
      resources :comments
    end
  end
  get 'home/index'
  get 'home/viewAll'
  post '/home/viewAll'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  root "home#index"

end
