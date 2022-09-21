Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :index, :show]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]

  post "books" => "books#create"
  patch 'books/:id' => 'books#update', as: 'update_book'

  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
