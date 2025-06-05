Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
  devise_for :users
  resources :users, only: %i[index show]
  resources :books

  authenticated :user do
    root to: 'books#index', as: :authenticated_root
  end
  root to: 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
