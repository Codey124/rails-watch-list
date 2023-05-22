Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
