Rails.application.routes.draw do
  resources :books
  root 'homes#top'
  post 'books' => 'books#create'
  get '/top' => 'homes#top'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
